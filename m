Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id C9108B2B94F
	for <lists+intel-gfx@lfdr.de>; Tue, 19 Aug 2025 08:18:49 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 6632210E533;
	Tue, 19 Aug 2025 06:18:48 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="VOUTFXlt";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.12])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 56BC410E533;
 Tue, 19 Aug 2025 06:18:47 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1755584328; x=1787120328;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=iMEhqu3lmLnboZ7GkHyNNfPDJfexQRhdl8bzh9N9wNY=;
 b=VOUTFXltd9czOTYFCmnF9XcQh2EILnWbbtAoTng1iOm5MxyHdYVNaL7G
 pfVWGCoXFad46j3gAwC8NLqUIDFRbNTNHLxeUTGRsxhCqCT0M17KHheG2
 mCFuAV3piKoxa2UkRHTzqEq2Xd815Z6ZAU8eMBNMHO8D11XEfwuJeCq1c
 a+biaByvZ6etIg/xhVhsiI24qXAqcXZMGszZAqen2rBkMZjiQ1ylVIfbx
 TOMgyZSe/L7mQWZdra13SYESvrBRhg8VWWHY3l3h4gpoTJYvNaEM10QJq
 CCISKZPrnDivNejOqOeKt2za3VoFKI777KnUvd1YJoc6a0tjBiGcpEnIr Q==;
X-CSE-ConnectionGUID: qfy1iaq5Svqpa6EDG53CpA==
X-CSE-MsgGUID: Di9RF9ASRmqxQZZtdoJxgg==
X-IronPort-AV: E=McAfee;i="6800,10657,11526"; a="69269442"
X-IronPort-AV: E=Sophos;i="6.17,300,1747724400"; d="scan'208";a="69269442"
Received: from fmviesa002.fm.intel.com ([10.60.135.142])
 by orvoesa104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 18 Aug 2025 23:18:48 -0700
X-CSE-ConnectionGUID: 8bm5rJC8QWK4vT8seuiheA==
X-CSE-MsgGUID: UiNXdyxVQ8Gss1aRex2LXg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.17,300,1747724400"; d="scan'208";a="191459935"
Received: from fmsmsx901.amr.corp.intel.com ([10.18.126.90])
 by fmviesa002.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 18 Aug 2025 23:18:47 -0700
Received: from FMSMSX902.amr.corp.intel.com (10.18.126.91) by
 fmsmsx901.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.17; Mon, 18 Aug 2025 23:18:46 -0700
Received: from fmsedg903.ED.cps.intel.com (10.1.192.145) by
 FMSMSX902.amr.corp.intel.com (10.18.126.91) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.17 via Frontend Transport; Mon, 18 Aug 2025 23:18:46 -0700
Received: from NAM10-MW2-obe.outbound.protection.outlook.com (40.107.94.66) by
 edgegateway.intel.com (192.55.55.83) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.17; Mon, 18 Aug 2025 23:18:46 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=RAQZPokl6c6Tsa/pKck9WUC9fugBpR4EVBGNUnddM/pl+GIYzvi59kuz3ueY91PWjU9K86MgKDAf4pppvEj5zqU63gQNEMjMbQeG/L1oYVhun6GLJSZz4vbhkLBos9equE3qOfJrkckw/Nx4tFRs1hTFOwdvN3VI5+n+oINlT5eDmwjdAidldIzj8Ll8bGH9DiWSNyY14z4n8XEK3SCu3j/Qt/qmsX1+tpUhMZSQTznAIUntoSfXqytZJcVrLFU1+Ue+NAMtNMHGuZSHzEsQR+psakCyuhZB1oxXQrVrA83sYIz8XgKMoijOhnhu1pJZefhqiqcODG4C0CM285sQSQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=iMEhqu3lmLnboZ7GkHyNNfPDJfexQRhdl8bzh9N9wNY=;
 b=af0byJLKjblHXtqvlZ327p0pviv5QL8I5MY67ITZ+1jvV8TpcY+svll5hQcHDpw/p2JGO0yjHmlyRUhoSXisNs6BDZeuaySOtq4g4fxlV6pXRRrY00M8i/B0b03ligI3ufBGyIQi6bcnuacZID0I5uYv/p39a00stCrZCT4ktkGQJ2/Oe0w/YR1NkCYS83hV+0OorP0Igi1M1OVBskI+hDXXh83ifJ6Rupucs8Ma9YLTQBzbp2sI1CpPVuNFfjDDOtynjopygZ3s0piG3HdqrogcjSrvV31wbbJfT01E4bkQy8tSXvSrGB6iKMuJMfhgpPTmeSQP8/VyvAEaOeeFeQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from DM3PPF208195D8D.namprd11.prod.outlook.com
 (2603:10b6:f:fc00::f13) by IA1PR11MB6396.namprd11.prod.outlook.com
 (2603:10b6:208:3ab::10) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9031.24; Tue, 19 Aug
 2025 06:18:44 +0000
Received: from DM3PPF208195D8D.namprd11.prod.outlook.com
 ([fe80::7aab:2a1f:f728:eb01]) by DM3PPF208195D8D.namprd11.prod.outlook.com
 ([fe80::7aab:2a1f:f728:eb01%6]) with mapi id 15.20.9031.024; Tue, 19 Aug 2025
 06:18:44 +0000
From: "Kandpal, Suraj" <suraj.kandpal@intel.com>
To: "Nautiyal, Ankit K" <ankit.k.nautiyal@intel.com>,
 "intel-xe@lists.freedesktop.org" <intel-xe@lists.freedesktop.org>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
CC: "Nikula, Jani" <jani.nikula@intel.com>
Subject: RE: [PATCH v4 3/3] drm/i915/edp: eDP Data Overrride
Thread-Topic: [PATCH v4 3/3] drm/i915/edp: eDP Data Overrride
Thread-Index: AQHcAgCj5jUmiDCC7E+F6RjSoAD4IrRphvAAgAAXHqA=
Date: Tue, 19 Aug 2025 06:18:44 +0000
Message-ID: <DM3PPF208195D8DDFE54BB8BFDFF8D8DC2CE330A@DM3PPF208195D8D.namprd11.prod.outlook.com>
References: <20250731051646.3009255-4-suraj.kandpal@intel.com>
 <20250731095049.3026988-1-suraj.kandpal@intel.com>
 <972b6cf2-fd9e-45dd-b319-efbf11b81ed8@intel.com>
In-Reply-To: <972b6cf2-fd9e-45dd-b319-efbf11b81ed8@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: DM3PPF208195D8D:EE_|IA1PR11MB6396:EE_
x-ms-office365-filtering-correlation-id: 13674651-4487-4a05-f1a2-08dddee83fd2
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0; ARA:13230040|1800799024|376014|366016|38070700018;
x-microsoft-antispam-message-info: =?utf-8?B?ZkdJZEhTeVhZU25jWUdHajV0TUFZZkwvQW42UGNPall6S2lZYllJb0t3Nllt?=
 =?utf-8?B?WFMwQTU1QkFrMmdyNDl3dDFvTXBmSGZ0L3J0Wmx5ODk1SEROWXBJT29RQkgz?=
 =?utf-8?B?Z20wWGJIQ1U1UGkxdUpwTG9seXFVaDRBb052SnJlNGNtbzMyQXVmM1A0MVF2?=
 =?utf-8?B?MjZzWDBnWEs1dzIraE1qcGwwMWtsV0lwQjk0Y1k1TmRFbDlJNENKR3pzUTBv?=
 =?utf-8?B?a0hOeTZDT3BmMnZta1lHSVY5SVpPblNoSjhDQW9ieXMxc29JZnVmWHpkZU9D?=
 =?utf-8?B?NmxxWHpvaDF0NXhManUrVXVKU0t4R3pyY3hQcHZScEpVSlpBUFBBVEN3aWZj?=
 =?utf-8?B?SWNncGIzcW5wc0NzQStFQnoxYWJOWjczNXNuc3pjZ3lWaEV2VjZnUSt5M3Vl?=
 =?utf-8?B?SEVJdFNhc0lKeDRoMGRlRnV0WXpiYW9yRGdxQXpBY0ZjWU1MQXZ1T1F0RlJr?=
 =?utf-8?B?Wm9YNWNvVDlNZHEreWwybHVNNXh4V0tOb0h6QTFjMk03OVRGRjBaUUpmWUo3?=
 =?utf-8?B?NzR5TGVqcDI1eElaWFVYb1J0YVZxMWluY29uanJxY3VaY1UwcTBrcVZZc0lp?=
 =?utf-8?B?eGpya3A2L2ZHS2V1RVcvdHpMaDFmZUg1ZjZwMk1kd3dZalAra1ZXckhPZldu?=
 =?utf-8?B?SCtoR2lzZzFHS2o2WThUSWE3S3B6cWpxM0xOV2NFRVUvOENFMUJjd0ZKeERM?=
 =?utf-8?B?VjZLZlJNeWVNcER5bGpSTnZFZ1hLaEdpUFNIMHZFUHBxUFFJMHlEc2JyVURn?=
 =?utf-8?B?RW40TkFDcU4wdUNYZ29mWDNYTE1LZDlKMUdZaFRrT3V3eWxZbUNNZlU2YTJt?=
 =?utf-8?B?NUVvQ0lDTE5tWHNiTFdtaGRUVENMY0dzZy9jY2ZuM0hLbXFSVWc3WkVNM3Iv?=
 =?utf-8?B?WWhCVkY3MmV2VlpCZnJaQlp2bHhNVDEvaTE2OVd6TUp3N0g4RENWTFAxNkh4?=
 =?utf-8?B?d1pKaEtCSGdNSlBYdWpTNHp5Z3QyUUNyK3lnNVdlZ3Erbk0xTmJZS1FDeWcw?=
 =?utf-8?B?MlRqcFB2VDJXNkVtK0E5WkVSSXBYWkVWN2dyWnJEb0pnSmd0VDU0eDlQeWZU?=
 =?utf-8?B?MDdDU3JzMzhUNWNHd0VoeVFSREt5SzJkTVpUTEIzWEJqNno0aWlIYlkwNzBT?=
 =?utf-8?B?VTBaTUJ0bEhIazh0M2FXRk9DeHgrYmR1TU9vWmRiWTRBMVY2QlRocXpHelZu?=
 =?utf-8?B?eXFCZkcwdy8vYXNaS0YyTk0wUlVMdGhtNUpYMnpqU1NCSHZJTlZ0YnVMME5Q?=
 =?utf-8?B?YkNXU2o2MjFiSHZzeE9WbW11RmthOWd5eWsvYU5aNk1za3hvTW5ib3lHYUZN?=
 =?utf-8?B?UUtzYmZ2ZnVRdzkvZ2xvQkM4S2N1b3VOZGZFc2M4dDk2SzBhZWU4czFYbVNH?=
 =?utf-8?B?VDRZZ2gydkJNR0RDOUJuOUNQUk41ZkVUNERXZ2JoSklhMmVrTTR1WWdTV295?=
 =?utf-8?B?SkFrc2pVM0R2alVRSVMrREJUbEdkUlBaSmF4ZDQ3SVVueGNTUGMyZlRLNld4?=
 =?utf-8?B?QmR0UHE3YjA0MWNNdGNGay9rbkEvNGZvUUMxeDZGVEFlNmRwYTRqUlB2S3JQ?=
 =?utf-8?B?ZEdVemtsU1l5ZWJvSVM3Z29td0tHRnhzYTVEWi9zdUtPUmVSekxhTXdmMkNR?=
 =?utf-8?B?ZktGV0hMWXJQK3FYc2lGZnRFeW1tZHhXSUpUMS8xL1FCb2xZeGdlKzduUmcv?=
 =?utf-8?B?WGRsMUN2Y3RXSUtuRzJ1SFRqd0NEM1FEb1I4NTdlRGwxMllzTXZ5cXNFQ2du?=
 =?utf-8?B?amtiblZndlhsVWUydzUrZjBrb2hTT1dHSTNUbFhpcndxQ0ZlUncrU3dQLy9I?=
 =?utf-8?B?MkZxVGk4YzZyUzR2Q2VudHpkWWF6ZUJBSXFqTmRNb0paRFBPQU5Td2pGYkha?=
 =?utf-8?B?QW9MN0hxSXg0dy83d0tyMWxDTW9Fd0liU2JhV01NYitMb2t4NzJDbWsySmVI?=
 =?utf-8?B?alpnNUpVN2Jaek1XQWR1S1M5ZTU1V3NieGE3NjA0YlRxa05IUnYzcE5sTTVC?=
 =?utf-8?B?dEc3WmxEVnRRPT0=?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM3PPF208195D8D.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(1800799024)(376014)(366016)(38070700018); DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?bHlXUVVWbW5BT3VCdXJZMFFhMzRIdXc2ZVVzbXlhamRrNWFPMm9BL0hrcDN2?=
 =?utf-8?B?Wi9NWU9sTkdEL3U5Wm5vd094SDJqS25CZDFYRURlVk5BYXhSaVF0TjhCRmJP?=
 =?utf-8?B?a1pyajBwY2d6VU1HbVF1Nklzd29QeXZuMVZlSVBCS2VBYVduRVlIa1B3enZo?=
 =?utf-8?B?SVVMTXAzaUhGSGZmNDc1a0ZDYld0MEZUVUl5Y3B0bE1vNEhZTEh2MHhndGdm?=
 =?utf-8?B?SjM4QTdBbjhkQ0JvZTZscFRBSlp5eFk5OGxTQkVsUStadW1SaGxQU1ZzTzNl?=
 =?utf-8?B?YVZueDVHQzdQZW1ObEJWdHUyYWxTQ3BUYURzTWlwSk54SzBPWVozZUJhY3Q4?=
 =?utf-8?B?Q2NSUDAvRDRkNzdIMmxnMVM2bjVaSkN0ZGZQVi9zUmlUSmcvTm1IejYxeVFp?=
 =?utf-8?B?cHQ3WmdMbUtucE04cVhHUGh0OE05emNOZzBoL0pHZVROblZpRjJnMUZzSElw?=
 =?utf-8?B?VERralJZa3ViU01HbkxhT3dyQ1pNcXNtTTkxUVZsUjdyMWhjN1VXci81ZUFF?=
 =?utf-8?B?Y0tiRGd3STRkT2ZjZ29oUG5SUnM1V3pxelZTSnRqUm1oeHFQVlpLTVFWK0lI?=
 =?utf-8?B?RlpUOWt0OXVVQVhuUW1MQlpYbGtyLzBSTFN1TEZLeTRsakhNRzhvSWJqQldw?=
 =?utf-8?B?UGhlNFdlcHM5K3d1bGcrNlpDbUtkclZIc09ZV2xOdnhWZDI2VzUwTkFhWmYx?=
 =?utf-8?B?dWdnK0pkajhuQnhPUEJxYzhSZFFEbGExa2Fnd3J3OTVZZ2pmbGs2djB0bVpH?=
 =?utf-8?B?UExESzFHWkVCNVRCRGJJSTJDeEwvTzY0OHk0NzZnTG02cWNhcFB2NyswSHFo?=
 =?utf-8?B?Y0dZcWNIczlsLzh6dHJMQ0xvYWVLTGNxRmVQZHNzTlhvSEpWK1FYSDBJcW9Y?=
 =?utf-8?B?QnRFYnNNSi82U29xaFl2UXJoWEYzRUh6alJqWXB2WW9nbGdKa216L0JLUWc1?=
 =?utf-8?B?QURlZXFtaXdvNnYySTVyN3hhT0lMZTJSVmQ3bWFwTmo1ZWxHOTVYeGhUcGdY?=
 =?utf-8?B?SDdYZ3NNOHdCTVRvbSt1VHRjQzAvUEZFTjIwR1A0aHJyYWxzWDc4aXE1NjUz?=
 =?utf-8?B?azYzckFtZ25aSDRwallJZzVwblp3VEdXUENvNUVYcFpGUjl1NzZhNkQwUDNa?=
 =?utf-8?B?QnV0aitSeXRaamx2NnhUL3FhZXg4T1dyQU1xUnJ3Y1hBRmY2V0Npd0t3cGhk?=
 =?utf-8?B?SkxlNUY2MFN4cXFKb1RINGZJcExLOUVKSm5TWC9NaFpiMXJ4VU5Ed2tyVEhP?=
 =?utf-8?B?U0N0aWFoTEFkNDRaS1FkTU1QVGRFVEFkNHROT2l5ZUlpV0JJZEhVZ3BMNitU?=
 =?utf-8?B?RDVZRjZLTkJSbkVDa1BCNG1IeEdtYlhkQjVHNmVjVyszZVZVZUJzaDZmUXZv?=
 =?utf-8?B?TzFZL1Y0WHhBRHdYVFBUSUc0eXFYOVVWdzJOZTN1aWNDNUFuZnZmbjFpTjFH?=
 =?utf-8?B?dG9pMGpITHJFNFUxNmRCOTV6cUxyVk9xMytuM1p0SDc5cE9LZTIzc3lYZG9y?=
 =?utf-8?B?Z0NHUGR0eXh4dHlBWHBQRmsweVZCUmljNGEzZmxacTdCRW9mVXlFTVpudGVh?=
 =?utf-8?B?VmVYOUxNZGE5azlLdXNTTUYydUpRazVGYm5ULzNnZUgwcEtJekx6NndhcFo0?=
 =?utf-8?B?UHBWRWcrMjRFQU9nb2QzazE2OExpbkVWc1M4T1A3NmtNUmNGaXdMVllVRnFO?=
 =?utf-8?B?OHJFVGwzK0tBOGVjTTFnUk50UlcvZ2FjWGcyMUxDZVVybVRVV2UyT2M5bnFI?=
 =?utf-8?B?NVZ4RXhRTy9VK1Uza1Vna3FOb2tpZElOendjMVM4YVVmeTh4UnRUVzRwTm9K?=
 =?utf-8?B?aWFVWk1CRFRRMXlWcndjZFdMWUJmenRJSzhpQVkvSFhsbEI2UHcwcGtVS3RD?=
 =?utf-8?B?Qkh4ekpPWTRjQjVpbEpXcHBaSnE5OVU2NERsZFI0WURGMjlTRmltQUFJbUx4?=
 =?utf-8?B?TjF0Q3BRUXlLSlpzK2FZdlFqaFZYSThqbnY2Q0I2aTc3OFhraEhYaEIyZmVy?=
 =?utf-8?B?b0c3L1JWaHNjcS9TNTVLWFlOTGdSbk5MWkdVV1g5RkVVNGR3dXRkVkJNRkhq?=
 =?utf-8?B?ZUVzZ1lMU3VvUldEMjZrWEtkUGtDT0NJMXQ3NlhnMDhEeGNSVStYZnF1OWk5?=
 =?utf-8?Q?bTcGQtZ6d+DkDi4Qf2ZZAAdsO?=
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: DM3PPF208195D8D.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 13674651-4487-4a05-f1a2-08dddee83fd2
X-MS-Exchange-CrossTenant-originalarrivaltime: 19 Aug 2025 06:18:44.0480 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: /d386O3VZc8+y/AzIPXnSphUJdvt64KbTcIEH3S+A3PVljClgfz8QLpi5ba++bLaR5olN/nYKktmQ9zBSijYew==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: IA1PR11MB6396
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

PiA+ICsrKyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfYmlvcy5jDQo+ID4g
QEAgLTI1MTksMTIgKzI1MTksMjUgQEAgaW50IGludGVsX2Jpb3NfZHBfbWF4X2xhbmVfY291bnQo
Y29uc3Qgc3RydWN0DQo+IGludGVsX2Jpb3NfZW5jb2Rlcl9kYXRhICpkZXZkYXRhKQ0KPiA+ICAg
fQ0KPiA+DQo+ID4gICBib29sDQo+ID4gLWludGVsX2Jpb3NfZW5jb2Rlcl9zdXBwb3J0c19lZHBf
cmF0ZShjb25zdCBzdHJ1Y3QNCj4gaW50ZWxfYmlvc19lbmNvZGVyX2RhdGEgKmRldmRhdGEsDQo+
ID4gLQkJCQkgICAgIGludCByYXRlKQ0KPiA+ICtpbnRlbF9iaW9zX3ZidF9zdXBwb3J0c19lZHBf
ZGF0YV9vdmVycmlkZShjb25zdCBzdHJ1Y3QNCj4gPiAraW50ZWxfYmlvc19lbmNvZGVyX2RhdGEg
KmRldmRhdGEpDQo+ID4gICB7DQo+ID4gICAJaWYgKCFkZXZkYXRhIHx8IGRldmRhdGEtPmRpc3Bs
YXktPnZidC52ZXJzaW9uIDwgMjYzKQ0KPiA+ICAgCQlyZXR1cm4gZmFsc2U7DQo+ID4NCj4gPiAr
CS8qDQo+ID4gKwkgKiBUaGlzIG1lYW5zIHRoZSBWQlQgZW5kcyB1cCBhc2tpbmcgdXMgdG8gb3Zl
cnJpZGUgZXZlcnkgcG9zc2libGUgcmF0ZQ0KPiA+ICsJICogaW5kaWNhdGluZyB0aGUgVkJUIGlz
IGJyb2tlbiBzbyBza2lwIHRoaXMNCj4gPiArCSAqLw0KPiA+ICsJaWYgKGh3ZWlnaHQzMihkZXZk
YXRhLT5jaGlsZC5lZHBfZGF0YV9yYXRlX292ZXJyaWRlKSA+PSAxMSkNCj4gDQo+IFRoaXMgc2hv
dWxkIGJlIDEyLg0KPiANCj4gSSB0aGluayBpdCB3b3VsZCBiZSBiZXR0ZXIgdG8gZGVmaW5lIGEg
bWFjcm8gZm9yIHRoaXMNCj4gQkRCXzI2M19FRFBfTlVNX0xJTktfUkFURVMgb3Igc29tZXRoaW5n
IHNpbWlsYXIgYW5kIHVzZSB0aGF0Lg0KPiANCj4gVGhpcyBjYW4gYmUgcGFydCBvZiAxc3QgcGF0
Y2guDQoNClJpZ2h0IHdpbGwgZml4IHRoaXMuDQoNClJlZ2FyZHMsDQpTdXJhaiBLYW5kcGFsDQoN
Cj4gDQo+IA0KPiBSZWdhcmRzLA0KPiANCj4gQW5raXQNCj4gDQo+IA0KPiA+ICsJCXJldHVybiBm
YWxzZTsNCj4gPiArDQo+ID4gKwlyZXR1cm4gdHJ1ZTsNCj4gPiArfQ0KPiA+ICsNCj4gPiArYm9v
bA0KPiA+ICtpbnRlbF9iaW9zX2VuY29kZXJfc3VwcG9ydHNfZWRwX3JhdGUoY29uc3Qgc3RydWN0
DQo+IGludGVsX2Jpb3NfZW5jb2Rlcl9kYXRhICpkZXZkYXRhLA0KPiA+ICsJCQkJICAgICBpbnQg
cmF0ZSkNCj4gPiArew0KPiA+ICAgCXJldHVybiBkZXZkYXRhLT5jaGlsZC5lZHBfZGF0YV9yYXRl
X292ZXJyaWRlICYNCj4gZWRwX3JhdGVfb3ZlcnJpZGVfbWFzayhyYXRlKTsNCj4gPiAgIH0NCj4g
Pg0KPiA+IGRpZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2Jp
b3MuaA0KPiA+IGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9iaW9zLmgNCj4g
PiBpbmRleCBhNGFiYWE4OWE2ODIuLmQyNDRjYWVmMjI3NSAxMDA2NDQNCj4gPiAtLS0gYS9kcml2
ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2Jpb3MuaA0KPiA+ICsrKyBiL2RyaXZlcnMv
Z3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfYmlvcy5oDQo+ID4gQEAgLTI3Niw1ICsyNzYsNyBA
QCB2b2lkIGludGVsX2Jpb3NfZm9yX2VhY2hfZW5jb2RlcihzdHJ1Y3QgaW50ZWxfZGlzcGxheQ0K
PiAqZGlzcGxheSwNCj4gPiAgIAkJCQkJICAgICAgY29uc3Qgc3RydWN0DQo+IGludGVsX2Jpb3Nf
ZW5jb2Rlcl9kYXRhICpkZXZkYXRhKSk7DQo+ID4NCj4gPiAgIHZvaWQgaW50ZWxfYmlvc19kZWJ1
Z2ZzX3JlZ2lzdGVyKHN0cnVjdCBpbnRlbF9kaXNwbGF5ICpkaXNwbGF5KTsNCj4gPiArYm9vbA0K
PiA+ICtpbnRlbF9iaW9zX3ZidF9zdXBwb3J0c19lZHBfZGF0YV9vdmVycmlkZShjb25zdCBzdHJ1
Y3QNCj4gPiAraW50ZWxfYmlvc19lbmNvZGVyX2RhdGEgKmRldmRhdGEpOw0KPiA+DQo+ID4gICAj
ZW5kaWYgLyogX0lOVEVMX0JJT1NfSF8gKi8NCj4gPiBkaWZmIC0tZ2l0IGEvZHJpdmVycy9ncHUv
ZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kcC5jDQo+ID4gYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9k
aXNwbGF5L2ludGVsX2RwLmMNCj4gPiBpbmRleCA1NGQ4OGYyNGI2ODkuLjdlOTA1ZTkxMmFlZiAx
MDA2NDQNCj4gPiAtLS0gYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2RwLmMN
Cj4gPiArKysgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2RwLmMNCj4gPiBA
QCAtNDI3Nyw2ICs0Mjc3LDI2IEBAIHN0YXRpYyB2b2lkIGludGVsX2VkcF9tc29faW5pdChzdHJ1
Y3QgaW50ZWxfZHANCj4gKmludGVsX2RwKQ0KPiA+ICAgCWludGVsX2RwLT5tc29fcGl4ZWxfb3Zl
cmxhcCA9IG1zbyA/IGluZm8tPm1zb19waXhlbF9vdmVybGFwIDogMDsNCj4gPiAgIH0NCj4gPg0K
PiA+ICtzdGF0aWMgdm9pZA0KPiA+ICtpbnRlbF9lZHBfc2V0X2RhdGFfb3ZlcnJpZGVfcmF0ZXMo
c3RydWN0IGludGVsX2RwICppbnRlbF9kcCkgew0KPiA+ICsJc3RydWN0IGludGVsX2VuY29kZXIg
KmVuY29kZXIgPSAmZHBfdG9fZGlnX3BvcnQoaW50ZWxfZHApLT5iYXNlOw0KPiA+ICsJaW50ICpz
aW5rX3JhdGVzID0gaW50ZWxfZHAtPnNpbmtfcmF0ZXM7DQo+ID4gKwlpbnQgaSwgaiA9IDA7DQo+
ID4gKw0KPiA+ICsJaWYgKCFpbnRlbF9iaW9zX3ZidF9zdXBwb3J0c19lZHBfZGF0YV9vdmVycmlk
ZShlbmNvZGVyLT5kZXZkYXRhKSkNCj4gPiArCQlyZXR1cm47DQo+ID4gKw0KPiA+ICsJZm9yIChp
ID0gMDsgaSA8IGludGVsX2RwLT5udW1fc2lua19yYXRlczsgaSsrKSB7DQo+ID4gKwkJaWYgKGlu
dGVsX2Jpb3NfZW5jb2Rlcl9zdXBwb3J0c19lZHBfcmF0ZShlbmNvZGVyLT5kZXZkYXRhLA0KPiA+
ICsJCQkJCQkJIGludGVsX2RwLQ0KPiA+c2lua19yYXRlc1tpXSkpDQo+ID4gKwkJCWNvbnRpbnVl
Ow0KPiA+ICsNCj4gPiArCQlzaW5rX3JhdGVzW2orK10gPSBpbnRlbF9kcC0+c2lua19yYXRlc1tp
XTsNCj4gPiArCX0NCj4gPiArCWludGVsX2RwLT5udW1fc2lua19yYXRlcyA9IGo7DQo+ID4gK30N
Cj4gPiArDQo+ID4gICBzdGF0aWMgdm9pZA0KPiA+ICAgaW50ZWxfZWRwX3NldF9zaW5rX3JhdGVz
KHN0cnVjdCBpbnRlbF9kcCAqaW50ZWxfZHApDQo+ID4gICB7DQo+ID4gQEAgLTQzMjcsNiArNDM0
Nyw4IEBAIGludGVsX2VkcF9zZXRfc2lua19yYXRlcyhzdHJ1Y3QgaW50ZWxfZHAgKmludGVsX2Rw
KQ0KPiA+ICAgCQlpbnRlbF9kcC0+dXNlX3JhdGVfc2VsZWN0ID0gdHJ1ZTsNCj4gPiAgIAllbHNl
DQo+ID4gICAJCWludGVsX2RwX3NldF9zaW5rX3JhdGVzKGludGVsX2RwKTsNCj4gPiArDQo+ID4g
KwlpbnRlbF9lZHBfc2V0X2RhdGFfb3ZlcnJpZGVfcmF0ZXMoaW50ZWxfZHApOw0KPiA+ICAgfQ0K
PiA+DQo+ID4gICBzdGF0aWMgYm9vbA0K
