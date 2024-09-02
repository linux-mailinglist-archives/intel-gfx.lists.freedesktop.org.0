Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id C7F6A9686B8
	for <lists+intel-gfx@lfdr.de>; Mon,  2 Sep 2024 13:53:25 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 69F6310E2BC;
	Mon,  2 Sep 2024 11:53:24 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="SIsioqIO";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.18])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 07A9610E2BD
 for <intel-gfx@lists.freedesktop.org>; Mon,  2 Sep 2024 11:53:23 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1725278003; x=1756814003;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-id:content-transfer-encoding: mime-version;
 bh=v2Pj9Fcg0JQs7HpRWW8kEWgVyLyA2C/+NWCsTsSohUw=;
 b=SIsioqIOc+GFJWS/MOWGV/3ARrWtEQk1zLtfNChJXOM1o/m38Qbmdjwt
 zwXSQEnHlyIo8Gq/K6TPiHoiGPAH2di8HO+uVNcvSWOr2HqPa77vRCDPU
 i1tog47RuMGUKFrn98c4bSZ2ar2aZOudnE+QqbQMSMt+Z5xlqwjl6h+qj
 dsgBR9ATsBVYFpEPzx6XnY0wDmj7XRKrZHGZda+AkMFpDbeFzA15buZsI
 f4KF3/R1qKki+8ol4CpDWFI7Q+Ms9zXip7j+lzaiyUb97oDCfcSDvwOcp
 scvF8SAXT1s4tq1u5ElLor5y0n0O4+rV4a20AEC4fgIZhwFw6sZmSzvx9 g==;
X-CSE-ConnectionGUID: qstTrpSRSky9H9VqVqsaOw==
X-CSE-MsgGUID: tKYRsKhwQXWO49uayTIEIQ==
X-IronPort-AV: E=McAfee;i="6700,10204,11182"; a="23371791"
X-IronPort-AV: E=Sophos;i="6.10,195,1719903600"; d="scan'208";a="23371791"
Received: from fmviesa006.fm.intel.com ([10.60.135.146])
 by fmvoesa112.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 02 Sep 2024 04:52:58 -0700
X-CSE-ConnectionGUID: d/02fioKT4mGLdG0LGq5Uw==
X-CSE-MsgGUID: qXZXuovGQn6hn6i0QuYFWQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.10,195,1719903600"; d="scan'208";a="64221983"
Received: from orsmsx602.amr.corp.intel.com ([10.22.229.15])
 by fmviesa006.fm.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 02 Sep 2024 04:52:58 -0700
Received: from orsmsx610.amr.corp.intel.com (10.22.229.23) by
 ORSMSX602.amr.corp.intel.com (10.22.229.15) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39; Mon, 2 Sep 2024 04:52:56 -0700
Received: from orsmsx610.amr.corp.intel.com (10.22.229.23) by
 ORSMSX610.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39; Mon, 2 Sep 2024 04:52:55 -0700
Received: from ORSEDG602.ED.cps.intel.com (10.7.248.7) by
 orsmsx610.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39 via Frontend Transport; Mon, 2 Sep 2024 04:52:55 -0700
Received: from NAM04-BN8-obe.outbound.protection.outlook.com (104.47.74.44) by
 edgegateway.intel.com (134.134.137.103) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.39; Mon, 2 Sep 2024 04:52:54 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=PCvXI81rJuLMt/vH1KLPqYkiJP2NthOF59fLpSdtADSINFy7o26+iQiyxozSNywAXyQCbgvb4yvo4/o6r1+DyjIL/2HjaFQcPMH6rXETtmiafqIBaGFpIW35M3+0CG8ARArBGEdNXmjP4iS+PrQLbnysRH4m4Kjv4NG/S0p2uWFmeysr3TrQBUFqsnf5nxS7VwtDlWHlc+L2Fn5LpxUqOpUq6j5F0d8nvVN5AX6JSnGKKgrohcV1YAHc7XquR4m8+tdfCEH3jZoP3gB8Dc6G6Qn97VjcQ7aeSJFmnVZqTX4uVMAav+wo7BKX1HtFupp3Zna2cilDE1R1ysSSG8jUqg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=v2Pj9Fcg0JQs7HpRWW8kEWgVyLyA2C/+NWCsTsSohUw=;
 b=O2KvGVh8DQ5yAY3Nv6UCvHtSGFzCqj0n26+o/jZd75Rha2l+6J5+h+FFovg6SjrCl9fymHc8rJFf4zAi9K+KNxZPRmZYkc87jmxVOH37ZnuDHElEJZKL2VHOd5qO8gTxyxAEIixYTJvGpShSuGOusivyh8NV3vWJ2ujHeu9iMtZKK53Aw1zpbCuFB3CGoWlPXvB/UCkuIJDEWmK+Zukg4NL7R0tOGzq6zxZr4db55a9NSRwMvGKZ1D+PBWsjf4ezaL3d80fvZ7dPoA0bWmyle/8h1D6zcbdSbhtl0MUa6FLBqzAXZxkaTL4d94cAhPWsWlw3j7lEx7XcuW2rFNSU8g==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from DM4PR11MB6019.namprd11.prod.outlook.com (2603:10b6:8:60::5) by
 LV8PR11MB8558.namprd11.prod.outlook.com (2603:10b6:408:1ed::13) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7918.23; Mon, 2 Sep
 2024 10:02:27 +0000
Received: from DM4PR11MB6019.namprd11.prod.outlook.com
 ([fe80::fc1:e80f:134c:5ed2]) by DM4PR11MB6019.namprd11.prod.outlook.com
 ([fe80::fc1:e80f:134c:5ed2%3]) with mapi id 15.20.7918.020; Mon, 2 Sep 2024
 10:02:27 +0000
From: "Hogander, Jouni" <jouni.hogander@intel.com>
To: "Kandpal, Suraj" <suraj.kandpal@intel.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
CC: "Shankar, Uma" <uma.shankar@intel.com>
Subject: Re: [PATCH] drm/i915/psr: Implment WA to help reach PC10
Thread-Topic: [PATCH] drm/i915/psr: Implment WA to help reach PC10
Thread-Index: AQHa/PWp1HodD3UAnEShApl64iwcF7JEPYGAgAAHAAA=
Date: Mon, 2 Sep 2024 10:02:27 +0000
Message-ID: <c12fabba598e4a4d5ba449b2bc22eedcc9fccdad.camel@intel.com>
References: <20240902050214.127352-1-suraj.kandpal@intel.com>
 <e35c0591a0708fc069aae10aaf35a20002b71aba.camel@intel.com>
In-Reply-To: <e35c0591a0708fc069aae10aaf35a20002b71aba.camel@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: DM4PR11MB6019:EE_|LV8PR11MB8558:EE_
x-ms-office365-filtering-correlation-id: 3a192556-b552-4cba-63cb-08dccb3659c6
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0; ARA:13230040|366016|1800799024|376014|38070700018;
x-microsoft-antispam-message-info: =?utf-8?B?VXh5d0NqNVpMTUF3eTlWcWtGMU5FVUVMMXB4L29FYUVKK3VqZHNiN1lkS0k2?=
 =?utf-8?B?djVKdDhKUFNNOENzcjhLbnViVWFSTkpUK0ZTN0VmT2poTGtsK25DSkNOZS9S?=
 =?utf-8?B?Tzc3RjREMHNpUlpEYXN4VkNaQzNQNENMWGo5UVFybzVuTHV6U2dLOTNTQjEy?=
 =?utf-8?B?RmhPYWgwc01EdlJBcnhqMUhnSmthc2VyY0lMaUpYTlFiWS85N0JaMXVMTWVK?=
 =?utf-8?B?Qm1NQi9nQlp6RTB4cVNXeXF4R3RZemdoSjZ0YjBUUUZmbGF0T08ycW1RRldC?=
 =?utf-8?B?bmU3SVh6VVdYa1I0MTlDaWt4MGt6N3JPMHpleU5KdkFNWjhJK25QYkpXVXc2?=
 =?utf-8?B?Mk8wODBOdmIrdlgrYm9SUmpjRGRWRU4wZ1c1NHI1M2Y2T0ZCSkV1QVJ3TUNE?=
 =?utf-8?B?TVZYT2xBVHlsYm1kdGdybXN0dGdodGlodWJPUkxHa1dmME5IeDlRdDF4cC9i?=
 =?utf-8?B?QmQ5V25ZNlNTclVRNUNVN2ZuVG9MMGJTaUFucVZsMnhkM3J6ajNwdkNMRW5P?=
 =?utf-8?B?bUt1Ukc0c2xLY2lQRm0rSmovd3FrYkQxaVMxckIrN1h3NVR0RjNvUjRHb0VL?=
 =?utf-8?B?RDhHTm5KUm9yYXdtU2NjUkFIZkRnSW1lUk9KOXp6SWNUblpWME93eEQ5VjNy?=
 =?utf-8?B?V1hZMkhudzVsQ3Fhb0dOUjloT1lJZnRPU200aWhkOFNuNHJuTnpheDduejNh?=
 =?utf-8?B?QW5HUzNwQjNySThtTVFlSEFPZHgzVU92QjFieTd1anF3azlTaVZEcHp4TlBr?=
 =?utf-8?B?YUsyOTJYRm4zSHF4eVdFTkZlUEtLZlFEVjlKR0FTRmphblNHSm03U1RyYVAw?=
 =?utf-8?B?R1dFekpONVQvcDBMNjcxNnNhY2RiK0dJOGFkYy9ZelR4d3cvL2dvbjRUUTVk?=
 =?utf-8?B?NVh0WTFOZ3VkRmRhVS9aVlcrVWd2MUVLZVIxZVNIYzh6b0hzVSttTytHVVBF?=
 =?utf-8?B?aUdvNkp0ck1HTnFZODlVbXcwNTBEaUV0aTdUM3l6WE1nQUJMcm9QaWRoZEti?=
 =?utf-8?B?WmZLaFg3TEd1a1BLMDRqaWZFdXQ4bVN2MzFwVXJXaVM1T3FWc1pObUtuT2cr?=
 =?utf-8?B?a0ZWOFZseUxwM1ArTFZSMFN1MUpWT0lXaFBHK0dTN1owZ1lrampoWTNhcXRo?=
 =?utf-8?B?QlZMYjh4c240U0lrVU5FOXNyVHRxR3U5SWpseDIwYW91YkRtb3g1Q04wSzJY?=
 =?utf-8?B?VklVcXc5cnNwcXJvQmhoK3hPWlhMZjZ1S2ErVEkvR0pueWJDWGRmRnUvTVFB?=
 =?utf-8?B?NXFnWGlXR0tWQkM2VFhOaVV6QUpGdkdCZnBLRUdrcmFLWjI4ZmxBcjc0VkR5?=
 =?utf-8?B?blJ3UGxUVlNRalVNNnc3dUdrMUJuOTZyeU9paUV5MzdFdFIyUU8wVDlPY2pz?=
 =?utf-8?B?dVhIUGNCRnhUQVBVNE1ueGtKb2RzY2VCcUE0MkUwSlBnVjJsalRUTzNtWUVM?=
 =?utf-8?B?YzdZQmppOWdYZEx1VE52SU40aTJxYllvcis3bnl5YXZOaVA3V0R0c2o1THd0?=
 =?utf-8?B?VitRdEU5a1FTdUNBY2hvTUQrRk9vc2xXZEJmdDNNVStjdjF4c1MyNXRUS1hG?=
 =?utf-8?B?b3Y3MXdLSFhpcnh3YWNnc1QrRm5hOExwVHo3RnZ0WWwvL0s2ZW16OCs3b2E0?=
 =?utf-8?B?cStsQmRjT2dtRWMyenJZQjIxZ2c1WTQxWjZPN0Q1Q0x3bmRaUzVQOWJUWU5r?=
 =?utf-8?B?TS91aE5mL2dkNCtyeXpRSXgxVk93RSs0Nkp2N3FqMVVkYlRad042M09GcTJt?=
 =?utf-8?B?NFJxTUIvR3BQdmlkTjJFRnI4TW4zMEwwbGZGWSsrRTQxcERhZFdGb1FjQTlx?=
 =?utf-8?B?SzFLL3VaZnBGNVJuOTNPUkVVRjZRTVlaTWEwU24vZ1dEdTVFVzJQSVRIQnFq?=
 =?utf-8?B?Nk5VTkN0cXpEaEdwZUtYbXhkbURJOE8wbEVzVlBqSUYyQnc9PQ==?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM4PR11MB6019.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(366016)(1800799024)(376014)(38070700018); DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?VndUVHA0RDkxR09NeVBxSlpmMmttSVlxM25Vbk1vUzBzR1QrR2FyazJqY1Jt?=
 =?utf-8?B?eUl6WDE1S2ZkWGszdkc1K0FXUXdRZ2xoY0VJQk1YQ1RIdTZNdUs4MTJvRkJH?=
 =?utf-8?B?Q2t1S051OFRpTmg1N2UyZHo3Sm1aUzNWb3kvU20wSzVGcHNhMms0RmxIM3BT?=
 =?utf-8?B?SlpnV0JpVjNBUkdZdTAyeEpSMDIzcWF4OXEraGlNQWZJYVcxQWlrTTk5elhi?=
 =?utf-8?B?UjlVQWQ1K2txRTI3ZENaaWNjdFEwWHZRUjFSWmgwbkwyUi9sNHo2QjFhbmlZ?=
 =?utf-8?B?Z2JDZzlMRHdNR2JwT3lhcTJjZ25ERGJPMU5XUURLREJCZDNEQTQ2ZmJzWGl3?=
 =?utf-8?B?M29FUng3ZzI2YXF1UmNZNDRtUGtMblUzdGdDeWNXRERkYlpHZGh5cXU2b3Z2?=
 =?utf-8?B?eW9GYWZNUFYxQ3FYQm9MYlY4U1pTUHVrR0VNbVRYbEV3YVN5alJBUTdydlZ4?=
 =?utf-8?B?U1RwdytrQm1NZlJ5ZllPS1Q3NU9ISDNrbjRQczIxTm5CckZ1c3p6UVRBWWh2?=
 =?utf-8?B?dzZmZ0RqNlAzTGJ0SzZmVVBJK1YxcXpsSzVJd0REUFZPL3FwYThKeWNjdU1O?=
 =?utf-8?B?M0xITXdPNW4zUWp1NzJVMkZwM01SQ1pYT3o4ODJ5aFpnOG4rUTFjTEZRZ2pX?=
 =?utf-8?B?bzFzRXJHQ0pVR0JoQUkxenlvd2tPbU8vSG1Wclp5UDF0L3RTcGFML1RHeWVm?=
 =?utf-8?B?L0lVaHhHWE1IOHlYVlp0WGo3SHlJZm93UU8vMWxnb0lROWZMc094OUNCbC9I?=
 =?utf-8?B?aXVqdEM5bEhZdUl2RUl5bTBRVmFjYzZ6cC9zOGxwdFhDT2JBYnZCOVpwdk5k?=
 =?utf-8?B?dmdybGlBY01CbUwwRzRGREJOdDNON0h6Q1NwNDR4QjlJMjB6UGRtVjc1Z0Fh?=
 =?utf-8?B?RmhzeUQzUFlaVml1QWpOSENvZzEwQWJnMEI4RXZUMnVnc3VENGVtUlVtdGxN?=
 =?utf-8?B?Z3FRMzZma0Q4cFJOUzVZMk0vYmQ2ZUdjZWo3VHg2K0dTSlZSSys1T2U5OWN0?=
 =?utf-8?B?czNGQWEvZ0JJRHhlcUlxVndRQTNFWXFvVUtqZDNSenhpSGNFZzhrY09OYWNk?=
 =?utf-8?B?OXJUMi9CMENFTk5KRHdRdzlWWmMydk1ld2ZtaTUvMFQ1ZDBjUU51YUlzV0Nt?=
 =?utf-8?B?L1ZYTXdBYnhUd0VhbUJHR3g4QkJKelB6a280Z2hsSkJ4ZEhtVTJZR3gzOXB6?=
 =?utf-8?B?aC81LzFvZ01OTGg0eTlPWEpHRlhDM3pwTTRlVXdkQmEyZjJHSlo1cXZLT25J?=
 =?utf-8?B?NnI4SlNKR05qNC9UNzRiMjF3OTZsaGFMeHpQNm5Cc0JJMDhLUWJQcSt2aTBh?=
 =?utf-8?B?MzB3RkFVUW9WUmlPR0xXdjBobzJxM0FjWVFzSmRCYzBuaHhsVmVnRWcxT1hN?=
 =?utf-8?B?L1MyNlZKQ24rTU0yUTdSL215bXZ2NjhnMWJtaDZpQy95Z2lUd1JMcFpTazYz?=
 =?utf-8?B?SnZNbk02OWV4V0N0U3dxS1hQR2xDRVVMaURJeVhHUzRCRUZYKzdsYVI1RVBi?=
 =?utf-8?B?b0szc3N4cDNpTGVYOWltelVUWHhmeFE1QmltcXZmQ0pzU1dHWHYyN3VJMEVT?=
 =?utf-8?B?bU9RaWw2amVZRVpja200SVQyVDl3NnRTRlhub1hRUHpRK2gxRUgyb1BKbERH?=
 =?utf-8?B?QlZQWnNPWDNhV3BRTkRPeTdqWWRXNlZnTVgvWGNvamhITm5hUFNISUlaV3g2?=
 =?utf-8?B?emFDbzc5WDY2VXBLcTQvZnJweUNxUFZyUFhrTFAwNFViTU5KRURNM0ZCYStE?=
 =?utf-8?B?L2tyK3NMMThrNkg2RktnNVBTUlZYcnV2RzdOWC8wUDB6WkpYa1VSQ2hWQUow?=
 =?utf-8?B?Z1JCM3JiT20xeGlNbDNpOGV4d3FzZXAvdGZBc0I4TUlJdlp4Q3FSbVY3dVB4?=
 =?utf-8?B?QzZMT1p2dHUrQjkycmI4SDY3bktQQ1U0bUx1cDBLY2EvNStXcE5SUng4cEJX?=
 =?utf-8?B?N2hYbkRtSUU2cEM2MmxDdGVXbWM0TktScDcwd2FOREp3cGpXbWRTeDN4cXlT?=
 =?utf-8?B?L2hPZHBBTGdPZkY0TzhLSlM3QzVjQzgwYlNUSG9lV0tlYi9tUnBaeG5ZR1NY?=
 =?utf-8?B?MTFXNk5iSmNvbldyZFloZVZBNkJTdkliSHppOFRLeGRCQ01oa1hxUmdZelZQ?=
 =?utf-8?B?Y3VSYTVZLzZLRW5ZNVg1RlRnOUpqN3NrVEVScXNuRHd2UXJTWGpYTU9mZmpq?=
 =?utf-8?B?cVE9PQ==?=
Content-Type: text/plain; charset="utf-8"
Content-ID: <115375C158D6864DB4C24A234F4E4BD7@namprd11.prod.outlook.com>
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: DM4PR11MB6019.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 3a192556-b552-4cba-63cb-08dccb3659c6
X-MS-Exchange-CrossTenant-originalarrivaltime: 02 Sep 2024 10:02:27.4040 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: F31BUzAQ25KS9pHSl8q9VV1G0mtzIDACxIPAiX4Wq+QXY4rGkyic0FLKVkNf2eXNOEbSLplZfc6pg+YAf5F3Cmc4PKZWMl77hKAO3xGUm2I=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: LV8PR11MB8558
X-OriginatorOrg: intel.com
X-BeenThere: intel-gfx@lists.freedesktop.org
X-Mailman-Version: 2.1.29
Precedence: list
List-Id: Intel graphics driver community testing & development
 <intel-gfx.lists.freedesktop.org>
List-Unsubscribe: <https://lists.freedesktop.org/mailman/options/intel-gfx>,
 <mailto:intel-gfx-request@lists.freedesktop.org?subject=unsubscribe>
List-Archive: <https://lists.freedesktop.org/archives/intel-gfx>
List-Post: <mailto:intel-gfx@lists.freedesktop.org>
List-Help: <mailto:intel-gfx-request@lists.freedesktop.org?subject=help>
List-Subscribe: <https://lists.freedesktop.org/mailman/listinfo/intel-gfx>,
 <mailto:intel-gfx-request@lists.freedesktop.org?subject=subscribe>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

T24gTW9uLCAyMDI0LTA5LTAyIGF0IDEyOjM3ICswMzAwLCBIb2dhbmRlciwgSm91bmkgd3JvdGU6
Cj4gT24gTW9uLCAyMDI0LTA5LTAyIGF0IDEwOjMyICswNTMwLCBTdXJhaiBLYW5kcGFsIHdyb3Rl
Ogo+ID4gVG8gcmVhY2ggUEMxMCB3aGVuIFBLR19DX0xBVEVOQ1kgaXMgY29uZmlndXJlIHdlIG11
c3QgZG8gdGhlCj4gPiBmb2xsb3dpbmcKPiA+IHRoaW5ncwo+ID4gMSkgRW50ZXIgUFNSMSBvbmx5
IHdoZW4gZGVsYXllZF92YmxhbmsgPCA2IGxpbmVzIGFuZCBEQzUgY2FuIGJlCj4gPiBlbnRlcmVk
Cj4gPiAyKSBBbGxvdyBQU1IyIGRlZXAgc2xlZXAgd2hlbiBEQzUgY2FuIGJlIGVudGVyZWQKPiA+
IDMpIERDNSBjYW4gYmUgZW50ZXJlZCB3aGVuIGFsbCB0cmFuc29jb2RlciBoYXZlIGVpdGhlciBQ
U1IxLCBQU1IyCj4gPiBvcgo+ID4gZURQIDEuNSBQUiBBTFBNIGVuYWJsZWQgYW5kIFZCSSBpcyBk
aXNhYmxlZCBhbmQgZmxpcHMgYW5kIHB1c2hlcwo+ID4gYXJlCj4gPiBub3QgaGFwcGVuaW5nLgo+
ID4gCj4gPiAtLXYyCj4gPiAtU3dpdGNoIGNvbmRpdGlvbiBhbmQgZG8gYW4gZWFybHkgcmV0dXJu
IFtKYW5pXQo+ID4gLURvIHNvbWUgY2hlY2tzIGluIGNvbXB1dGVfY29uZmlnIFtKYW5pXQo+ID4g
LURvIG5vdCB1c2UgcmVnaXN0ZXIgcmVhZHMgYXMgYSBtZXRob2Qgb2YgY2hlY2tpbmcgc3RhdGVz
IGZvcgo+ID4gRFBLR0Mgb3IgZGVsYXllZCB2YmxhbmsgW0phbmldCj4gPiAtVXNlIGFub3RoZXIg
d2F5IHRvIHNlZSBpcyB2YmxhbmsgaW50ZXJydXB0cyBhcmUgZGlzYWJsZWQgb3Igbm90Cj4gPiBb
SmFuaV0KPiA+IAo+ID4gLS12Mwo+ID4gLVVzZSBoYXNfcHNyIHRvIGNoZWNrIGlmIHBzciBjYW4g
YmUgZW5hYmxlZCBvciBub3QgZm9yIGRjNV9lbnRyeQo+ID4gY29uZAo+ID4gW1VtYV0KPiA+IC1N
b3ZlIHRoZSBkYzUgZW50cnkgY29tcHV0YXRpb24gdG8gcHNyX2NvbXB1dGVfY29uZmlnIFtKb3Vu
aV0KPiA+IC1ObyBuZWVkIHRvIGNoYW5nZSBzZXF1ZW5jZSBvZiBlbmFibGVkIGFuZCBhY3RpdmF0
ZSwKPiA+IHNvIGRvbnQgbWFrZSBoc3dfcHNyMV9hY3RpdmF0ZSByZXR1cm4gYW55dGhpbmcgW0pv
dW5pXQo+ID4gLVVzZSBoYXNfcHNyIHRvIHN0b3AgcHNyMSBhY3RpdmF0aW9uIFtKb3VuaV0KPiA+
IC1Vc2UgbGluZWFnZSBuby4gaW4gV0EKPiA+IC1BZGQgdGhlIGRpc3BsYXkgdmVyIHJlc3RyaWN0
aW9ucyBmb3IgV0EKPiA+IAo+ID4gV0E6IDIyMDE5NDQ0Nzk3Cj4gPiBTaWduZWQtb2ZmLWJ5OiBT
dXJhaiBLYW5kcGFsIDxzdXJhai5rYW5kcGFsQGludGVsLmNvbT4KPiA+IC0tLQo+ID4gwqAuLi4v
ZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kaXNwbGF5X3R5cGVzLmjCoMKgwqAgfMKgIDIgKwo+ID4g
wqBkcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX3Bzci5jwqDCoMKgwqDCoCB8IDk2
Cj4gPiArKysrKysrKysrKysrKysrKystCj4gPiDCoDIgZmlsZXMgY2hhbmdlZCwgOTcgaW5zZXJ0
aW9ucygrKSwgMSBkZWxldGlvbigtKQo+ID4gCj4gPiBkaWZmIC0tZ2l0IGEvZHJpdmVycy9ncHUv
ZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kaXNwbGF5X3R5cGVzLmgKPiA+IGIvZHJpdmVycy9ncHUv
ZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kaXNwbGF5X3R5cGVzLmgKPiA+IGluZGV4IDg2OGZmODk3
NmVkOS4uNTM5NWMxZWNkZTdmIDEwMDY0NAo+ID4gLS0tIGEvZHJpdmVycy9ncHUvZHJtL2k5MTUv
ZGlzcGxheS9pbnRlbF9kaXNwbGF5X3R5cGVzLmgKPiA+ICsrKyBiL2RyaXZlcnMvZ3B1L2RybS9p
OTE1L2Rpc3BsYXkvaW50ZWxfZGlzcGxheV90eXBlcy5oCj4gPiBAQCAtMTcxNyw2ICsxNzE3LDgg
QEAgc3RydWN0IGludGVsX3BzciB7Cj4gPiDCoMKgwqDCoMKgwqDCoMKgYm9vbCBzaW5rX3N1cHBv
cnQ7Cj4gPiDCoMKgwqDCoMKgwqDCoMKgYm9vbCBzb3VyY2Vfc3VwcG9ydDsKPiA+IMKgwqDCoMKg
wqDCoMKgwqBib29sIGVuYWJsZWQ7Cj4gPiArwqDCoMKgwqDCoMKgwqBib29sIGlzX2Rwa2djX2Nv
bmZpZ3VyZWQ7Cj4gPiArwqDCoMKgwqDCoMKgwqBib29sIGlzX2RjNV9lbnRyeV9wb3NzaWJsZTsK
PiA+IMKgwqDCoMKgwqDCoMKgwqBib29sIHBhdXNlZDsKPiA+IMKgwqDCoMKgwqDCoMKgwqBlbnVt
IHBpcGUgcGlwZTsKPiA+IMKgwqDCoMKgwqDCoMKgwqBlbnVtIHRyYW5zY29kZXIgdHJhbnNjb2Rl
cjsKPiA+IGRpZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX3Bz
ci5jCj4gPiBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfcHNyLmMKPiA+IGlu
ZGV4IDI1NzUyNjM2MmIzOS4uMWZhZWM3NmVhYzMyIDEwMDY0NAo+ID4gLS0tIGEvZHJpdmVycy9n
cHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9wc3IuYwo+ID4gKysrIGIvZHJpdmVycy9ncHUvZHJt
L2k5MTUvZGlzcGxheS9pbnRlbF9wc3IuYwo+ID4gQEAgLTg3MCw2ICs4NzAsNjkgQEAgc3RhdGlj
IHU4IHBzcl9jb21wdXRlX2lkbGVfZnJhbWVzKHN0cnVjdAo+ID4gaW50ZWxfZHAgKmludGVsX2Rw
KQo+ID4gwqDCoMKgwqDCoMKgwqDCoHJldHVybiBpZGxlX2ZyYW1lczsKPiA+IMKgfQo+ID4gwqAK
PiA+ICtzdGF0aWMgYm9vbCBpbnRlbF9wc3JfY2hlY2tfZGVsYXllZF92YmxhbmtfbGltaXQoc3Ry
dWN0Cj4gPiBpbnRlbF9jcnRjX3N0YXRlICpjcnRjX3N0YXRlKQo+IAo+IFlvdSBjb3VsZCBhZGQg
c29tZSBjb250ZXh0IGhlcmUgaW4gdGhlIG5hbWUuIFRoaXMgaXMgc29tZWhvdyB0ZWxsaW5nCj4g
aXQncyBzb21lIGdlbmVyaWMgZGVsYXllZCB2YmxhbmsgbGltaXQgd2hpbGUgaXQgaXMgYWN0dWFs
bHkgbGltaXQgZm9yCj4gdGhpcyB3b3JrYXJvdW5kLgo+IAo+ID4gK3sKPiA+ICvCoMKgwqDCoMKg
wqDCoHN0cnVjdCBkcm1fZGlzcGxheV9tb2RlICphZGp1c3RlZF9tb2RlID0gJmNydGNfc3RhdGUt
Cj4gPiA+IGh3LmFkanVzdGVkX21vZGU7Cj4gPiArCj4gPiArwqDCoMKgwqDCoMKgwqByZXR1cm4g
KGFkanVzdGVkX21vZGUtPmNydGNfdmJsYW5rX3N0YXJ0IC0gYWRqdXN0ZWRfbW9kZS0KPiA+ID4g
Y3J0Y192ZGlzcGxheSkgPj0gNjsKPiA+ICt9Cj4gPiArCj4gPiArLyoKPiA+ICsgKiBQS0dfQ19M
QVRFTkNZIGlzIGNvbmZpZ3VyZWQgb25seSB3aGVuIERJU1BMQVlfVkVSID49IDIwIGFuZAo+ID4g
KyAqIFZSUiBpcyBub3QgZW5hYmxlZAo+ID4gKyAqLwo+ID4gK3N0YXRpYyBib29sIGludGVsX3Bz
cl9pc19kcGtnY19jb25maWd1cmVkKHN0cnVjdCBkcm1faTkxNV9wcml2YXRlCj4gPiAqaTkxNSkK
PiA+ICt7Cj4gPiArwqDCoMKgwqDCoMKgwqBzdHJ1Y3QgaW50ZWxfY3J0YyAqaW50ZWxfY3J0YzsK
PiA+ICsKPiA+ICvCoMKgwqDCoMKgwqDCoGlmIChESVNQTEFZX1ZFUihpOTE1KSA8IDIwKQo+ID4g
K8KgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoHJldHVybiBmYWxzZTsKPiA+ICsKPiA+ICvC
oMKgwqDCoMKgwqDCoGZvcl9lYWNoX2ludGVsX2NydGMoJmk5MTUtPmRybSwgaW50ZWxfY3J0Yykg
ewo+ID4gK8KgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoHN0cnVjdCBpbnRlbF9jcnRjX3N0
YXRlICpjcnRjX3N0YXRlOwo+ID4gKwo+ID4gK8KgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDC
oGlmICghaW50ZWxfY3J0Yy0+YWN0aXZlKQo+ID4gK8KgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKg
wqDCoMKgwqDCoMKgwqDCoMKgwqBjb250aW51ZTsKPiA+ICsKPiA+ICvCoMKgwqDCoMKgwqDCoMKg
wqDCoMKgwqDCoMKgwqBjcnRjX3N0YXRlID0gaW50ZWxfY3J0Yy0+Y29uZmlnOwo+ID4gKwo+ID4g
K8KgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoGlmIChjcnRjX3N0YXRlLT52cnIuZW5hYmxl
KQo+ID4gK8KgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqByZXR1
cm4gZmFsc2U7Cj4gPiArwqDCoMKgwqDCoMKgwqB9Cj4gPiArCj4gPiArwqDCoMKgwqDCoMKgwqBy
ZXR1cm4gdHJ1ZTsKPiA+ICt9Cj4gPiArCj4gPiArLyoKPiA+ICsgKiBEQzUgZW50cnkgaXMgb25s
eSBwb3NzaWJsZSBpZiB2YmxhbmsgaW50ZXJydXB0IGlzIGRpc2FibGVkCj4gPiArICogYW5kIGVp
dGhlciBwc3IxLCBwc3IyLCBlZHAgMS41IHByIGFscG0gaXMgZW5hYmxlZCBvbiBhbGwKPiA+ICsg
KiBlbmFibGVkIGVuY29kZXJzLgo+ID4gKyAqLwo+ID4gK3N0YXRpYyBib29sCj4gPiAraW50ZWxf
cHNyX2lzX2RjNV9lbnRyeV9wb3NzaWJsZShzdHJ1Y3QgZHJtX2k5MTVfcHJpdmF0ZSAqaTkxNSwK
PiA+ICvCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKg
wqDCoMKgwqDCoHN0cnVjdCBpbnRlbF9jcnRjX3N0YXRlCj4gPiAqY3J0Y19zdGF0ZSkKPiA+ICt7
Cj4gPiArwqDCoMKgwqDCoMKgwqBzdHJ1Y3QgaW50ZWxfY3J0YyAqaW50ZWxfY3J0YzsKPiA+ICsK
PiA+ICvCoMKgwqDCoMKgwqDCoGlmICghKGNydGNfc3RhdGUtPmhhc19wc3IgfHwgY3J0Y19zdGF0
ZS0+aGFzX3NlbF91cGRhdGUpKQo+ID4gK8KgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoHJl
dHVybiBmYWxzZTsKPiAKPiBDdXJyZW50bHkgdGhpcyBpcyBub3QgcmV0dXJuaW5nIGZvciBEUDIu
MSBQUi4gVGhpcyB3b3VsZCBiZXR0ZXIgbWF0Y2gKPiB3aXRoIGNvbW1lbnQgYWJvdmU6Cj4gCj4g
aWYgKCFjcnRjX3N0YXRlLT5oYXNfcHNyIHx8ICFpbnRlbF9kcF9pc19lZHAoaW50ZWxfZHApKQo+
IMKgwqDCoCByZXR1cm4gZmFsc2U7Cj4gwqAKPiBTdGlsbCAiX2FsbF8gZW5hYmxlZCBlbmNvZGVy
cyIgaXMgbm90IGhhbmRsZWQuLi4KPiAKPiBCUiwKPiAKPiBKb3VuaSBIw7ZnYW5kZXIKPiAKPiA+
ICsKPiA+ICvCoMKgwqDCoMKgwqDCoGZvcl9lYWNoX2ludGVsX2NydGMoJmk5MTUtPmRybSwgaW50
ZWxfY3J0Yykgewo+ID4gK8KgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoHN0cnVjdCBkcm1f
Y3J0YyAqY3J0YyA9ICZpbnRlbF9jcnRjLT5iYXNlOwo+ID4gK8KgwqDCoMKgwqDCoMKgwqDCoMKg
wqDCoMKgwqDCoHN0cnVjdCBkcm1fdmJsYW5rX2NydGMgKnZibGFuazsKPiA+ICsKPiA+ICvCoMKg
wqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqBpZiAoIWludGVsX2NydGMtPmFjdGl2ZSkKPiA+ICvC
oMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgY29udGludWU7Cj4g
PiArCj4gPiArwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgdmJsYW5rID0gZHJtX2NydGNf
dmJsYW5rX2NydGMoY3J0Yyk7Cj4gPiArCj4gPiArwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDC
oMKgaWYgKHZibGFuay0+ZW5hYmxlZCkKPiA+ICvCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKg
wqDCoMKgwqDCoMKgwqDCoMKgcmV0dXJuIGZhbHNlOwo+ID4gK8KgwqDCoMKgwqDCoMKgfQo+ID4g
Kwo+ID4gK8KgwqDCoMKgwqDCoMKgcmV0dXJuIHRydWU7Cj4gPiArfQo+ID4gKwo+ID4gwqBzdGF0
aWMgdm9pZCBoc3dfYWN0aXZhdGVfcHNyMShzdHJ1Y3QgaW50ZWxfZHAgKmludGVsX2RwKQo+ID4g
wqB7Cj4gPiDCoMKgwqDCoMKgwqDCoMKgc3RydWN0IGRybV9pOTE1X3ByaXZhdGUgKmRldl9wcml2
ID0gZHBfdG9faTkxNShpbnRlbF9kcCk7Cj4gPiBAQCAtOTgwLDcgKzEwNDMsMTEgQEAgc3RhdGlj
IHZvaWQgaHN3X2FjdGl2YXRlX3BzcjIoc3RydWN0IGludGVsX2RwCj4gPiAqaW50ZWxfZHApCj4g
PiDCoMKgwqDCoMKgwqDCoMKgdTMyIHZhbCA9IEVEUF9QU1IyX0VOQUJMRTsKPiA+IMKgwqDCoMKg
wqDCoMKgwqB1MzIgcHNyX3ZhbCA9IDA7Cj4gPiDCoAo+ID4gLcKgwqDCoMKgwqDCoMKgdmFsIHw9
Cj4gPiBFRFBfUFNSMl9JRExFX0ZSQU1FUyhwc3JfY29tcHV0ZV9pZGxlX2ZyYW1lcyhpbnRlbF9k
cCkpOwo+ID4gK8KgwqDCoMKgwqDCoMKgLyogV2FfMjIwMTk0NDQ3OTcgKi8KPiA+ICvCoMKgwqDC
oMKgwqDCoGlmIChESVNQTEFZX1ZFUihkZXZfcHJpdikgIT0gMjAgfHwKCkkgdGhpbmsgdGhpcyBp
cyB3cm9uZy4gSXQgd2lsbCBub3QgY29uZmlndXJlIGlkbGUgZnJhbWVzIGZvciBkaXNwbGF5CnZl
cnNpb24gb3RoZXIgdGhhbiAyMC4KCkJSLAoKSm91bmkgSMO2Z2FuZGVyCgo+ID4gK8KgwqDCoMKg
wqDCoMKgwqDCoMKgIChpbnRlbF9kcC0+cHNyLmlzX2Rwa2djX2NvbmZpZ3VyZWQgJiYKPiA+ICvC
oMKgwqDCoMKgwqDCoMKgwqDCoMKgIGludGVsX2RwLT5wc3IuaXNfZGM1X2VudHJ5X3Bvc3NpYmxl
KSkKPiA+ICvCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqB2YWwgfD0KPiA+IEVEUF9QU1Iy
X0lETEVfRlJBTUVTKHBzcl9jb21wdXRlX2lkbGVfZnJhbWVzKGludGVsX2RwKSk7Cj4gPiDCoAo+
ID4gwqDCoMKgwqDCoMKgwqDCoGlmIChESVNQTEFZX1ZFUihkZXZfcHJpdikgPCAxNCAmJgo+ID4g
IUlTX0FMREVSTEFLRV9QKGRldl9wcml2KSkKPiA+IMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKg
wqDCoMKgdmFsIHw9IEVEUF9TVV9UUkFDS19FTkFCTEU7Cj4gPiBAQCAtMTU5NSw2ICsxNjYyLDMy
IEBAIF9wYW5lbF9yZXBsYXlfY29tcHV0ZV9jb25maWcoc3RydWN0IGludGVsX2RwCj4gPiAqaW50
ZWxfZHAsCj4gPiDCoMKgwqDCoMKgwqDCoMKgcmV0dXJuIHRydWU7Cj4gPiDCoH0KPiA+IMKgCj4g
PiArc3RhdGljIHZvaWQgd2FfMjIwMTk0NDQ3OTcoc3RydWN0IGludGVsX2RwICppbnRlbF9kcCwK
PiA+ICvCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoCBz
dHJ1Y3QgaW50ZWxfY3J0Y19zdGF0ZSAqY3J0Y19zdGF0ZSkKPiA+ICt7Cj4gPiArwqDCoMKgwqDC
oMKgwqBzdHJ1Y3QgZHJtX2k5MTVfcHJpdmF0ZSAqaTkxNSA9IGRwX3RvX2k5MTUoaW50ZWxfZHAp
Owo+ID4gKwo+ID4gK8KgwqDCoMKgwqDCoMKgaWYgKERJU1BMQVlfVkVSKGk5MTUpICE9IDIwKQo+
ID4gK8KgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoHJldHVybjsKPiA+ICsKPiA+ICvCoMKg
wqDCoMKgwqDCoGludGVsX2RwLT5wc3IuaXNfZHBrZ2NfY29uZmlndXJlZCA9Cj4gPiArwqDCoMKg
wqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgaW50ZWxfcHNyX2lzX2Rwa2djX2NvbmZpZ3VyZWQoaTkx
NSk7Cj4gPiArwqDCoMKgwqDCoMKgwqBpbnRlbF9kcC0+cHNyLmlzX2RjNV9lbnRyeV9wb3NzaWJs
ZSA9Cj4gPiArwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgaW50ZWxfcHNyX2lzX2RjNV9l
bnRyeV9wb3NzaWJsZShpOTE1LCBjcnRjX3N0YXRlKTsKPiA+ICsKPiA+ICvCoMKgwqDCoMKgwqDC
oC8qIFBTUjIgbm90IGhhbmRsZWQgaGVyZS4gV2Egbm90IG5lZWRlZCBmb3IgUGFuZWwgUmVwbGF5
ICovCj4gPiArwqDCoMKgwqDCoMKgwqBpZiAoY3J0Y19zdGF0ZS0+aGFzX3NlbF91cGRhdGUgfHwg
Y3J0Y19zdGF0ZS0KPiA+ID4gaGFzX3BhbmVsX3JlcGxheSkKPiA+ICvCoMKgwqDCoMKgwqDCoMKg
wqDCoMKgwqDCoMKgwqByZXR1cm47Cj4gPiArCj4gPiArwqDCoMKgwqDCoMKgwqBpZiAoaW50ZWxf
ZHAtPnBzci5pc19kcGtnY19jb25maWd1cmVkICYmCj4gPiArwqDCoMKgwqDCoMKgwqDCoMKgwqAg
KGludGVsX3Bzcl9jaGVja19kZWxheWVkX3ZibGFua19saW1pdChjcnRjX3N0YXRlKSB8fAo+ID4g
K8KgwqDCoMKgwqDCoMKgwqDCoMKgwqAgaW50ZWxfZHAtPnBzci5pc19kYzVfZW50cnlfcG9zc2li
bGUpKSB7Cj4gPiArwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgZHJtX2RiZ19rbXMoJmk5
MTUtPmRybSwKPiA+ICvCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDC
oMKgwqDCoMKgICJQU1IxIG5vdCBlbmFibGVkIGFzIGl0IGRvZXNuJ3QgbWVldAo+ID4gcmVxdWly
ZW1lbnRzIG9mIFdBOiAyMjAxOTQ0NDc5N1xuIik7Cj4gPiArwqDCoMKgwqDCoMKgwqDCoMKgwqDC
oMKgwqDCoMKgY3J0Y19zdGF0ZS0+aGFzX3BzciA9IGZhbHNlOwo+ID4gK8KgwqDCoMKgwqDCoMKg
fQo+ID4gK30KPiA+ICsKPiA+IMKgdm9pZCBpbnRlbF9wc3JfY29tcHV0ZV9jb25maWcoc3RydWN0
IGludGVsX2RwICppbnRlbF9kcCwKPiA+IMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKg
wqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqAgc3RydWN0IGludGVsX2NydGNfc3RhdGUgKmNydGNf
c3RhdGUsCj4gPiDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKg
wqDCoMKgwqDCoMKgIHN0cnVjdCBkcm1fY29ubmVjdG9yX3N0YXRlCj4gPiAqY29ubl9zdGF0ZSkK
PiA+IEBAIC0xNjQxLDYgKzE3MzQsNyBAQCB2b2lkIGludGVsX3Bzcl9jb21wdXRlX2NvbmZpZyhz
dHJ1Y3QgaW50ZWxfZHAKPiA+ICppbnRlbF9kcCwKPiA+IMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDC
oMKgwqDCoMKgcmV0dXJuOwo+ID4gwqAKPiA+IMKgwqDCoMKgwqDCoMKgwqBjcnRjX3N0YXRlLT5o
YXNfc2VsX3VwZGF0ZSA9Cj4gPiBpbnRlbF9zZWxfdXBkYXRlX2NvbmZpZ192YWxpZChpbnRlbF9k
cCwgY3J0Y19zdGF0ZSk7Cj4gPiArwqDCoMKgwqDCoMKgwqB3YV8yMjAxOTQ0NDc5NyhpbnRlbF9k
cCwgY3J0Y19zdGF0ZSk7Cj4gPiDCoH0KPiA+IMKgCj4gPiDCoHZvaWQgaW50ZWxfcHNyX2dldF9j
b25maWcoc3RydWN0IGludGVsX2VuY29kZXIgKmVuY29kZXIsCj4gCgo=
