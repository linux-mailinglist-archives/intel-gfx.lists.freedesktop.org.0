Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id CAE499B28AA
	for <lists+intel-gfx@lfdr.de>; Mon, 28 Oct 2024 08:22:53 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 344FF10E35F;
	Mon, 28 Oct 2024 07:22:51 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="YQz3YObG";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.17])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 9D27E10E35F;
 Mon, 28 Oct 2024 07:22:49 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1730100170; x=1761636170;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-id:content-transfer-encoding: mime-version;
 bh=BQH1PGi6mjzpP0abuHX+DoQ8jQXA/nGh0qYGI41atEY=;
 b=YQz3YObG2I/C8JzyoN/ybB2ng3HcDl6GPVOcYg0zThB/Fbw9P6lKl3Pn
 ARTAL2aRC4kJfgWj/Vu9kQT6G6RJxw3kMAmZMSrT3aktbtE4kHt8C8eij
 FPQSB3BzKQsnR1ZaFbxKpRJg7HxQmE8pX+Puh3/nn57zEFE5VQEB4o5oa
 7lYhzE4lA/z3peImExaIeNgaW9WoSa7Z61AEDlY/Ug5YbwY7p3F8ZWJvm
 lHZ3z8NGe59SX38NNYEbZLwcecNIfY6ilVqQ8S/qeu7GGYvHZ0ZMPcR42
 fweI5W3N7Ns7QHx3YAqU76KXKfrdlnEIiwqDFDq6+HsVFLGbinF0uvqM6 A==;
X-CSE-ConnectionGUID: CTYvsbAZSaKowqXrEdyXyw==
X-CSE-MsgGUID: SakGNaKXT/i/7h//RUufoA==
X-IronPort-AV: E=McAfee;i="6700,10204,11238"; a="29591176"
X-IronPort-AV: E=Sophos;i="6.11,238,1725346800"; d="scan'208";a="29591176"
Received: from fmviesa005.fm.intel.com ([10.60.135.145])
 by fmvoesa111.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 28 Oct 2024 00:22:50 -0700
X-CSE-ConnectionGUID: dHER/tUFSbaRnJ31wiE80Q==
X-CSE-MsgGUID: oTU+LzxvRR6Y/6IQtW3onw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.11,238,1725346800"; d="scan'208";a="86110683"
Received: from orsmsx601.amr.corp.intel.com ([10.22.229.14])
 by fmviesa005.fm.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 28 Oct 2024 00:22:49 -0700
Received: from orsmsx601.amr.corp.intel.com (10.22.229.14) by
 ORSMSX601.amr.corp.intel.com (10.22.229.14) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39; Mon, 28 Oct 2024 00:22:48 -0700
Received: from ORSEDG602.ED.cps.intel.com (10.7.248.7) by
 orsmsx601.amr.corp.intel.com (10.22.229.14) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39 via Frontend Transport; Mon, 28 Oct 2024 00:22:48 -0700
Received: from NAM10-MW2-obe.outbound.protection.outlook.com (104.47.55.48) by
 edgegateway.intel.com (134.134.137.103) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.39; Mon, 28 Oct 2024 00:22:48 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=RlFc8ZGtFXeDNzfUL1+cE9pH72V+w9tLuizmfqmQHnwJXYPly9VKhZFEGK61BvoxQIZ1FOlyItrR+l8oqWuZKYQWZ0zKzA1T5d228o78nk5OJykl40+QIPDmBwD4vPNI5OqmR+sbFE6myr5DcriNGj4TPpPvSR5iu8NRtebjTekqxOvYSl0zY+zGGBFjFxYNs/UuwjOc/8ZeFsVjpDmSmXjxK+3iWnZJYwfVwRgaT3Zoz6ww8PQaIeDGfCNQYGFsdci212UmhtoBfVdSRt0OHSMf0B2iRlqZrAxZJrJqMzC/yZrLYKQJ0hmrix86j2T473sWlTTe81VkxQ4TouY5ow==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=BQH1PGi6mjzpP0abuHX+DoQ8jQXA/nGh0qYGI41atEY=;
 b=p60l/zqWM/LtwL8RtzXDy53wCgEkrf1pQJjoBt2YrSOcZlafNO+ZY5bh85Cq6k7XUTVyG8oSZqr4W2QfAv+rYTI+NTKUBbV2ckIPbpjDFg00/Lg+OQgTlKq9cPlHZ3FObbmlrrRxxQP7cY45dOn8BJA7w5BM3wf7hMACh9qHWidkJRjMhAL5jPmn6r672y9rm7szVP2BcwFy5ETBV09o+eWMZdHi6r8TUZiQpiSv6IBt0rgUsQlX9D3/UXwVA82eYBDD3FSPoX+quPUxze0b4i2UT5moNm/9RJnXxHIeH/kUW7o8NOJ8tLQc0uE05rmRK3FwxIw4t0ou731su/Bcqg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from DM4PR11MB6019.namprd11.prod.outlook.com (2603:10b6:8:60::5) by
 CH3PR11MB7915.namprd11.prod.outlook.com (2603:10b6:610:12f::7) with
 Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.8093.23; Mon, 28 Oct 2024 07:22:46 +0000
Received: from DM4PR11MB6019.namprd11.prod.outlook.com
 ([fe80::fc1:e80f:134c:5ed2]) by DM4PR11MB6019.namprd11.prod.outlook.com
 ([fe80::fc1:e80f:134c:5ed2%4]) with mapi id 15.20.8093.018; Mon, 28 Oct 2024
 07:22:46 +0000
From: "Hogander, Jouni" <jouni.hogander@intel.com>
To: "Kandpal, Suraj" <suraj.kandpal@intel.com>, "Roper, Matthew D"
 <matthew.d.roper@intel.com>
CC: "intel-xe@lists.freedesktop.org" <intel-xe@lists.freedesktop.org>,
 "Nautiyal, Ankit K" <ankit.k.nautiyal@intel.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
Subject: Re: [PATCH 3/5] drm/i915/psr: Increase psr size limits for Xe2
Thread-Topic: [PATCH 3/5] drm/i915/psr: Increase psr size limits for Xe2
Thread-Index: AQHbJqN3e5ubFerUbkShGeIY6egiaLKYBZWAgAOGaACAADsZgA==
Date: Mon, 28 Oct 2024 07:22:46 +0000
Message-ID: <173c8891e65c9c21f2054c4c3ae6ac04a921bd56.camel@intel.com>
References: <20241025060136.9884-1-suraj.kandpal@intel.com>
 <20241025060136.9884-4-suraj.kandpal@intel.com>
 <20241025220123.GU5725@mdroper-desk1.amr.corp.intel.com>
 <SN7PR11MB67503EE31C965BAA14F37110E34A2@SN7PR11MB6750.namprd11.prod.outlook.com>
In-Reply-To: <SN7PR11MB67503EE31C965BAA14F37110E34A2@SN7PR11MB6750.namprd11.prod.outlook.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: DM4PR11MB6019:EE_|CH3PR11MB7915:EE_
x-ms-office365-filtering-correlation-id: 132e1c4f-24dc-4a66-45b6-08dcf7215228
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0; ARA:13230040|1800799024|376014|366016|38070700018;
x-microsoft-antispam-message-info: =?utf-8?B?YzdQVVFkUU40SHFhd1RaU2RyTkNCbXRSdk9KaEZlWWljYVVmV0U1dVJTN3g1?=
 =?utf-8?B?NGZLRXVPUVM3dlFodWRsRTBGZ3dvOFZXTVd2Z1UycVBxRlFjVksveU5kdDI3?=
 =?utf-8?B?aFZaOGlMYXhnTGhEYzdwZER3VlN3dkErTWFGWTRGaUJkbDQ4NW8yQ1piSFRP?=
 =?utf-8?B?aHNHR2tJMkRDMWVnWVk1R1JLTGl3TGV5eGlUc1JocmFqK2dlN2t5eEdLbTBQ?=
 =?utf-8?B?QTV2dkFaMlBDTUhiTlpDU1pTVVFUZXk3aTgvQUYwQUhaZ0JTK2RMRUhxR3da?=
 =?utf-8?B?aDlJUmFSaVBYRWk0L1hqejdxNDdVV2xOeXRUN05veHp2M1pjc0t4NERZRGtv?=
 =?utf-8?B?Zm42d2RadGtVS2tpUW1rV1BUSWhhTitPTThHWEJsOWQ2dXIxaGxpMlNQcHVo?=
 =?utf-8?B?RGxtOTEwSEdnMHdnM2ZhVk1VRHdDQ0NubU8vdDVMK3lTVUhndzJZVE4xRCs0?=
 =?utf-8?B?M20xRXlrdnk4R3g2M2lIamluYURGUE4vYlVWcTZiY3Q0aWhIeEQ0Q21ZYS9x?=
 =?utf-8?B?WTVsc0NNU1NKRWZIb0VraytpYXVjRG9uL1I4Q29sTlY5elkwYVN4QmVhM1I0?=
 =?utf-8?B?ZWowUG9XcDZTQ3ZtSlhia0VQN0hqUmVNS3g2UWlhempsRVIzMElDTU9sWnFx?=
 =?utf-8?B?T0RRd0w0aXhNRmVCeEwvUHlKSmhKZDNqZ0huNyt2Y1VVWUJybVNkcVFleEtj?=
 =?utf-8?B?ZGdsQ2ZseHloNG5qMGQ1RHlNV0UxcTFOYmJYMXdZZnNwQXR3dHFmVXZPeWdl?=
 =?utf-8?B?bFBGdkhVajZiNTR6MXN0N3BYVi9OUjh5R21yckV3dnpYdnBzWXF5eEd6RHdX?=
 =?utf-8?B?c2o1WkJUb1FKeThldC8xam5PTU9xb0tCOUh0THpYZUhZRFQ0Mm1NRHR2R2dQ?=
 =?utf-8?B?ZmNrTFl5TEZYa3VtcVBKLzFrbjRZa2lZKzhDNWhudjY1MnA3Y1krT2JvcUZ3?=
 =?utf-8?B?SjZaeTljbjd1VzZWdDFQVFhJWHJlU3hldVFDNHBEdjFabmszTmhHZTZFeGpa?=
 =?utf-8?B?T01VL3oyaVlkbTU4SEluMmp4VjYrWS9DODNFcXhXSXl2ZU84WnlvTEdFTVVV?=
 =?utf-8?B?UGlzS1lkQzhmMEdPcU1DbzJ1am5uTnhVUW8wNEN0aDRrSmZVc0Fjcmw0VnY1?=
 =?utf-8?B?ZGZibzByQzJzWGU0ajBLLzVKdEFVMmFDb1h0ZktYZG9PNXR2aEhmRlFSbnZV?=
 =?utf-8?B?SElHcFZMeVpieStrWVNtTVJFRkhJdmRWd3BqUGVLRzlSSHNzZGc3VXB1aE5S?=
 =?utf-8?B?d2NlcGRDV2IwUFQ0QmNzRTRNYlFyYktrNUx5ejBkT1kvQzV3R1lYOVVxUmRl?=
 =?utf-8?B?N1hlUmllWEUrb1ZqR3pCM1UxblNGUUNlK21tdlF2Z2pjTjd0bUNPQjJYVXVh?=
 =?utf-8?B?Z0tYa210RUs3dW10UDdmTjhsYldvWVE0b2lFSVFDMGl0ZWpwR05NZU1JTm9s?=
 =?utf-8?B?cHJDckFNZDJPWTNnaE9jYi9Va0xoaWRGT0trQjF5b05zdHVPOGVuZ0EvcWxL?=
 =?utf-8?B?NlBVclhyTk55YlVDUzdCTlJXRGxGV2hDU29aNUE1WTEzTVJyb0Q0eW5UN053?=
 =?utf-8?B?Z2dKSHZ6dTlOMnUwaC9hQmVsQVozek94NUxOVExmTGU2T0NEWWVMWVpIZ3Nw?=
 =?utf-8?B?MjdiYTJnSkFuT2MwNVdEcWJZRFUyNWxKTXdWVjNxYU9oZCt6azJlRXUwRThQ?=
 =?utf-8?B?cDZEUEpLZEFRWjdJdUc2RnBsQ2FjUUM1MWVORjlnWnpjbGp1WlduVE5hdlBm?=
 =?utf-8?B?V0w4MXFnNUZvZU4zNkxvVXp4cC9xd1VXVS90amtzaGJPSWovc0Z0TFFwaVVL?=
 =?utf-8?Q?KCJOSyAeuIwy0JBZ5WNet68ocMVw+c5wX+MPU=3D?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM4PR11MB6019.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(1800799024)(376014)(366016)(38070700018); DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?dC9Ed2VRa2ZqMUVPMnFST05odGJ2L0pxVm9qMUY1bks3VEJIbUpNOE9jL2pn?=
 =?utf-8?B?bXlURU02b1FzdTlNR0NLOUh0dENZeXFXcE52dkUyYkFpUExlZjFVWitzMUJT?=
 =?utf-8?B?RWh1TWhJYWc2TzdDbG00TmlZczBZK285K3FUWkFNSmpLY2lnMkw4am4xUVVL?=
 =?utf-8?B?SkNCVVJnbkRJeTluQWRnUmx2QnBYb0NKWHhPbk52ek5WU3hxQkdmbHB1VEtE?=
 =?utf-8?B?a054UGhsSGIwenptR3R5TlFObVdFVWpwNXBmOTNqb09uU1NwbEwya1JaWTlH?=
 =?utf-8?B?bmsra1Nqb0c3R3gwYjFtSDRwbHJmUzFCQXlmK2RWS3FYSjVPcmxkb0VrbzhV?=
 =?utf-8?B?K3BFNkpESzN6eTRQRTZpU1VoY2dyYVNGWnNuZ01UdVlsdGhZbEdtNWdkZWNL?=
 =?utf-8?B?YXFlcHFsR0Z0NEhzVTFseW9jSTd5QkdsVmNXd0JvWURnM01MZUhYMWtnQUE5?=
 =?utf-8?B?OWZvcDVhS3ZwalZ6UG12Sjg2TjdwMWlCbWtnZDR0b3JLMTVBRzBEbnJHUXd6?=
 =?utf-8?B?eFRpK1JJM0hZckorRFd3ZC9lQWYwVE5SUysxV1pVNzRrMWRtR01ZVzlKYm0v?=
 =?utf-8?B?UWJONURuN3RXblRjZFh0Q1Z2VkYyRG8wb3d2Wk5GODQ5THBYMmNaaVNpeDc3?=
 =?utf-8?B?WE13dFJLZ0ExQ2tZbGIreWJTTVNvVExBYlJFcjZjQkhTUm5NS2FrL1pnRXRo?=
 =?utf-8?B?di8yS1d2bVY3YXZteVMzbUV0c0dSak9hNE9xUHdPOTl5WlhFZWNaTnpHV29G?=
 =?utf-8?B?SnlDbkpFZ25KdHdBU2MxSm9YOG5TYVVaem5jVCtyMGpRQnRiV2NMTXZnTWto?=
 =?utf-8?B?czZRcUNxTEZIL3lITS9Ga0ZDZHB2YTg1MXJSZ0cwcGVYNTBpZXh1d1JjTU5D?=
 =?utf-8?B?N1ZrVTk1MnN5VEsrRGptTHlnUHJZcVBmdWJDVjdtT1c4VGVadTZ1VXdGTXVJ?=
 =?utf-8?B?VkFYSVkwYlppUGhnaFpwOE1wL1FIL2h5VnVsTDdNWGtzYUZHUUYxbXdZUkh1?=
 =?utf-8?B?TDBpWE84cDl1MU1kNng2RENTajAxdFpsM2pDWXdvYU81Rkk2dG1EY1d6WmxV?=
 =?utf-8?B?Y01JaDBzL0dBRy94UE44N2wvU1l2QjZVRVlZdndwT3huWmxiZlovbXowZmNk?=
 =?utf-8?B?blJ6d1V1S1k3blBqTDcrbmF3QU1OU0FKWE5lZ2U1cDE1ajFhUkp6bzI2aitH?=
 =?utf-8?B?cEtKeVZDNU90ZS9ubllQSnNlNXpDb0hzVEJ4T1RRTkhXK20zeWVXNU9Tc09D?=
 =?utf-8?B?ai8yaEpLTWJCR25PREZISFdIekUrN0F0Y2ZyQW42a3hNSDhIVmFhUC8xdlRK?=
 =?utf-8?B?UnlhTkNWdHVRaDVNWG1Fdk5qQkNjZm9FTm5teUpOTEVYeERZUjJwWTJ3REV6?=
 =?utf-8?B?SDRQRVcwVldrcFY5TDBMZXljS0dLQ3RZc0tnWFUzUGRkN0lOOFA5enZaNFdw?=
 =?utf-8?B?QTRHTUJtVmlDMFdEZlFUd3BRY05jNHc4RkVNQkJ0Yjc2K0tYdGtjeWswL002?=
 =?utf-8?B?VE9KeHZxWGZTbjRrbWVzbDYxZVRsWU5TcTY4L3FuRllHKzlRQTdOZ0VvbVE2?=
 =?utf-8?B?cDhWK05RWUt0MmpPYzlIbDRlOE9vRHB2UmNkRTRDWDFmUDNwZUt3K0FCTXdy?=
 =?utf-8?B?RGo1MStrelM1Ti9nZXhzKy9MZkw2cmFSdnRJS2drN1IycU92WmsrVmxzdEVu?=
 =?utf-8?B?Q0FnNEFibWZSMkdUUEdoNHA2cExqci9PaTNCU3lsb2dYclMyTFlxV0swQTA5?=
 =?utf-8?B?b3prQzMrSHF6R2ZJQzdoOGVmcXVXdWhuVEZKblc1eUYycUVlSTljdEcvZlR0?=
 =?utf-8?B?VUJkRGxncUFaYXlIL01NWGE3ZkJRd1Bxa0l3eFN4MkJRN0daZlg5K0t2Y00w?=
 =?utf-8?B?VStqTVFLZDg4Q21pVW1XdXFoOCs0MG9XeG9wQVlzY1VKdjA2anBhVWluL1Ro?=
 =?utf-8?B?YmkrWG1yZVE5R25pdmI3a2J6ZHk2TTJZRi9jd1oxMkIxODVhWkFoZjVLbTZT?=
 =?utf-8?B?VGdqcnNnK3R5RDVlSE1EVkprUGdIUHA4OG10dklBZm9EcHgzT0pjd3paMTlv?=
 =?utf-8?B?bkVIL0c5U0tFaXZSUGd4L2pwelBCRjk0NWVIcTBQN1ZrcVhwWnlaTDJXSTRC?=
 =?utf-8?B?NG1Eb3lVZkVlWTRYL3QxNTRVUEcvU29VNHdmV3h4WWhWSi9ncHFFK2dleS8y?=
 =?utf-8?B?Q1E9PQ==?=
Content-Type: text/plain; charset="utf-8"
Content-ID: <54FD376975F84549B313E18AB5E2CAAE@namprd11.prod.outlook.com>
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: DM4PR11MB6019.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 132e1c4f-24dc-4a66-45b6-08dcf7215228
X-MS-Exchange-CrossTenant-originalarrivaltime: 28 Oct 2024 07:22:46.3819 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: SyuzI5cwFikdWIVIzOTK4Fk9A11eT8UXTPE58XK78/PYdyraowTF9Zunff5jdziHd44RT9+Hhq2XTF9ag0YWOm6zjPbZTw4TG0D62NhkK6g=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CH3PR11MB7915
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

T24gTW9uLCAyMDI0LTEwLTI4IGF0IDAzOjUxICswMDAwLCBLYW5kcGFsLCBTdXJhaiB3cm90ZToN
Cj4gDQo+IA0KPiA+IC0tLS0tT3JpZ2luYWwgTWVzc2FnZS0tLS0tDQo+ID4gRnJvbTogUm9wZXIs
IE1hdHRoZXcgRCA8bWF0dGhldy5kLnJvcGVyQGludGVsLmNvbT4NCj4gPiBTZW50OiBTYXR1cmRh
eSwgT2N0b2JlciAyNiwgMjAyNCAzOjMxIEFNDQo+ID4gVG86IEthbmRwYWwsIFN1cmFqIDxzdXJh
ai5rYW5kcGFsQGludGVsLmNvbT4NCj4gPiBDYzogaW50ZWwteGVAbGlzdHMuZnJlZWRlc2t0b3Au
b3JnOw0KPiA+IGludGVsLWdmeEBsaXN0cy5mcmVlZGVza3RvcC5vcmc7IE5hdXRpeWFsLA0KPiA+
IEFua2l0IEsgPGFua2l0LmsubmF1dGl5YWxAaW50ZWwuY29tPg0KPiA+IFN1YmplY3Q6IFJlOiBb
UEFUQ0ggMy81XSBkcm0vaTkxNS9wc3I6IEluY3JlYXNlIHBzciBzaXplIGxpbWl0cyBmb3INCj4g
PiBYZTINCj4gPiANCj4gPiBPbiBGcmksIE9jdCAyNSwgMjAyNCBhdCAxMTozMTozNEFNICswNTMw
LCBTdXJhaiBLYW5kcGFsIHdyb3RlOg0KPiA+ID4gSW5jcmVhc2UgdGhlIHBzciBtYXhfaCBsaW1p
dCB0byA0MDk2Lg0KPiA+IA0KPiA+IENvbW1pdCBtZXNzYWdlIGRvZXNuJ3QgbWF0Y2ggY29kZSAo
dGhpcyBzaG91bGQgcHJvYmFibHkgc2F5IG1heF92DQo+ID4gaW5zdGVhZCBvZiBtYXhfaCkuDQo+
IA0KPiBTdXJlIHdpbGwgZml4IHRoYXQNCj4gDQo+ID4gDQo+ID4gU2luY2UgUFNSMiBzaXplIGlz
IHN1cHBvcnRlZCB1cCB0byB0aGUgbWF4aW11bSBwaXBlIHNpemUgbm93IChmb3INCj4gPiBib3Ro
DQo+ID4gWGUyIGFuZCBYZTMpIHdvdWxkIGl0IGJlIHNpbXBsZXIgdG8ganVzdCBtYWtlIHRoZSBj
aGVjayBvbg0KPiA+IHBzcl9tYXhfe2gsdn0NCj4gPiBjb25kaXRpb25hbCB0byBwcmUtWGUyP8Kg
IFRoZW4gaWYgd2UgZG9uJ3QgaGF2ZSBhbnkgdHJ1bHkgUFNSLQ0KPiA+IHNwZWNpZmljIGxpbWl0
cywgd2UNCj4gPiBkb24ndCBuZWVkIHRvIGtlZXAgZHVwbGljYXRpbmcgdGhlIHBpcGUgbGltaXRz
IGluIHR3byBwbGFjZXMgZ29pbmcNCj4gPiBmb3J3YXJkLg0KPiA+IGlmIHdlIA0KPiANCj4gQEhv
Z2FuZGVyLCBKb3VuaSBkbyB5b3Ugc2VlIGFueSByaXNrIG9mIHRoaXMgYmVpbmcgZG9uZSBvciBz
aG91bGQgd2UNCj4gZ28gYWhlYWQgd2l0aCBNYXR0IHNhaWQNCj4gQW5kIGhhdmUgdGhlIGNoZWNr
cyBqdXN0IGZvciBwcmUtWGUyDQoNCkkgdGhpbmsgeW91IHNob3VsZCBtb2RpZnkgaXQgYXMgTWF0
dCBzdWdnZXN0ZWQuIFlvdXIgY29uY2VybiBvbiBqb2luZXINCmluIGxhdHRlciBtYWlsIGlzIG5v
dCB2YWxpZC4gQnNwZWMgc2F5czoNCg0KIlBTUjIgaXMgc3VwcG9ydGVkIHVwIHRvIHRoZSBtYXhp
bXVtIHBpcGUgYWN0aXZlIHNpemUuIg0KDQphbmQgUFNSMiBzaG91bGQgd29yayB3aXRoIGpvaW5l
ciBhcyB3ZWxsIHRvdWdodCBjdXJyZW50bHkgaXQgaXMNCmRpc2FibGVkLiBUaGF0IGlzIGFub3Ro
ZXIgdG9waWMgYW5kIG5vdCByZWxhdGVkIHRvIHRoaXMuDQoNCkJSLA0KDQpKb3VuaSBIw7ZnYW5k
ZXINCg0KPiANCj4gUmVnYXJkcywNCj4gU3VyYWogS2FuZHBhbA0KPiANCj4gPiANCj4gPiBNYXR0
DQo+ID4gDQo+ID4gPiANCj4gPiA+IEJzcGVjOiA2OTg4NSwgNjg4NTgNCj4gPiA+IFNpZ25lZC1v
ZmYtYnk6IFN1cmFqIEthbmRwYWwgPHN1cmFqLmthbmRwYWxAaW50ZWwuY29tPg0KPiA+ID4gLS0t
DQo+ID4gPiDCoGRyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfcHNyLmMgfCA2ICsr
KysrLQ0KPiA+ID4gwqAxIGZpbGUgY2hhbmdlZCwgNSBpbnNlcnRpb25zKCspLCAxIGRlbGV0aW9u
KC0pDQo+ID4gPiANCj4gPiA+IGRpZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNw
bGF5L2ludGVsX3Bzci5jDQo+ID4gPiBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50
ZWxfcHNyLmMNCj4gPiA+IGluZGV4IDQxNzYxNjNlYzE5YS4uYzIyMzg2YTMxYTYzIDEwMDY0NA0K
PiA+ID4gLS0tIGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9wc3IuYw0KPiA+
ID4gKysrIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9wc3IuYw0KPiA+ID4g
QEAgLTE0NTMsNyArMTQ1MywxMSBAQCBzdGF0aWMgYm9vbCBpbnRlbF9wc3IyX2NvbmZpZ192YWxp
ZChzdHJ1Y3QNCj4gPiBpbnRlbF9kcCAqaW50ZWxfZHAsDQo+ID4gPiDCoMKgwqDCoMKgwqDCoMKg
wqDCoMKgwqDCoMKgwqDCoHJldHVybiBmYWxzZTsNCj4gPiA+IMKgwqDCoMKgwqDCoMKgwqB9DQo+
ID4gPiANCj4gPiA+IC3CoMKgwqDCoMKgwqDCoGlmIChESVNQTEFZX1ZFUihkaXNwbGF5KSA+PSAx
Mikgew0KPiA+ID4gK8KgwqDCoMKgwqDCoMKgaWYgKERJU1BMQVlfVkVSKGRpc3BsYXkpID49IDIw
KSB7DQo+ID4gPiArwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgcHNyX21heF9oID0gNTEy
MDsNCj4gPiA+ICvCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqBwc3JfbWF4X3YgPSA0MDk2
Ow0KPiA+ID4gK8KgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoG1heF9icHAgPSAzMDsNCj4g
PiA+ICvCoMKgwqDCoMKgwqDCoH0gZWxzZSBpZiAoRElTUExBWV9WRVIoZGlzcGxheSkgPj0gMTIp
IHsNCj4gPiA+IMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgcHNyX21heF9oID0gNTEy
MDsNCj4gPiA+IMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgcHNyX21heF92ID0gMzIw
MDsNCj4gPiA+IMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgbWF4X2JwcCA9IDMwOw0K
PiA+ID4gLS0NCj4gPiA+IDIuMzQuMQ0KPiA+ID4gDQo+ID4gDQo+ID4gLS0NCj4gPiBNYXR0IFJv
cGVyDQo+ID4gR3JhcGhpY3MgU29mdHdhcmUgRW5naW5lZXINCj4gPiBMaW51eCBHUFUgUGxhdGZv
cm0gRW5hYmxlbWVudA0KPiA+IEludGVsIENvcnBvcmF0aW9uDQoNCg==
