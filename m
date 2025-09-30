Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 9CD00BAB627
	for <lists+intel-gfx@lfdr.de>; Tue, 30 Sep 2025 06:38:32 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 98B7F10E117;
	Tue, 30 Sep 2025 04:38:30 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="X+14cxgZ";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.18])
 by gabe.freedesktop.org (Postfix) with ESMTPS id C564610E117;
 Tue, 30 Sep 2025 04:38:28 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1759207109; x=1790743109;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-id:content-transfer-encoding: mime-version;
 bh=onkczvUgTSK8lbf/zLkKyfP7Z9VxMXUGH6KzrUrtMEw=;
 b=X+14cxgZ76Pf6BPRJ9bmIeOrJs7fDHVFKUPorzEsRLXn+1zrfSDB1UID
 GNYCKCEPd9liG6xOwKHbmtT54fgdCfoscy6z13+AUMGxaH5CAgp07nDj+
 yB8nBwcnmAXTcnAAaB1MzlMTT+C45yxF+TCq3zy2iJlFI1c/h3sDe/zQN
 SP85MO/YasJVbRPVJSMYeHsPg6Q+Jugjh5YU+VJq8xmkgkCdMXNPSsNFp
 0lkt3pcUtRt0smRuACPPllDnekTXh4zTjH6cwSwfPiEtcK4fwrVx6i7Ng
 eQcGomqgBo6Bsby3XVKKx1JlSYl384zx0NNHTWKOa2GJ3ndx2DDbKnXZL g==;
X-CSE-ConnectionGUID: tK2RZNKeT0++zQcfDvtdbQ==
X-CSE-MsgGUID: c0TgZN0YRHGu4uQXupXbtA==
X-IronPort-AV: E=McAfee;i="6800,10657,11531"; a="61499034"
X-IronPort-AV: E=Sophos;i="6.17,312,1747724400"; d="scan'208";a="61499034"
Received: from orviesa009.jf.intel.com ([10.64.159.149])
 by orvoesa110.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 29 Sep 2025 21:38:29 -0700
X-CSE-ConnectionGUID: 0/nyTWjHRFy1xLSFz4x0kQ==
X-CSE-MsgGUID: PifxyskNT1uNsf06i3fdCQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.18,303,1751266800"; d="scan'208";a="177976187"
Received: from orsmsx903.amr.corp.intel.com ([10.22.229.25])
 by orviesa009.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 29 Sep 2025 21:38:28 -0700
Received: from ORSMSX901.amr.corp.intel.com (10.22.229.23) by
 ORSMSX903.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.27; Mon, 29 Sep 2025 21:38:28 -0700
Received: from ORSEDG902.ED.cps.intel.com (10.7.248.12) by
 ORSMSX901.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.27 via Frontend Transport; Mon, 29 Sep 2025 21:38:28 -0700
Received: from CH5PR02CU005.outbound.protection.outlook.com (40.107.200.18) by
 edgegateway.intel.com (134.134.137.112) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.27; Mon, 29 Sep 2025 21:38:27 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=GwxL6L8k1ciw764GQCjdUOJ02wqdWixAW2EYLfObqo00z+TW1sZ608r32AL8YNT5W7MCOTOGbNj/lBx7iujspfHdwnZuUgDWYvOuot0IinMlgmGaKaLGVRMWCKpwvq+QQcf6v2aeIdwMPRuRZc4iB7A+djHv5jEfaNxKwBO+km5H0JUnKZVS3xxGQ6lHebDenKzjnz2xPJoViM0bgpYQevOUCXjssEhIxSEy/J36GULtgv6xqMp7ykt8F2IoEHgRccebM+qqDWBuyDuUSAuz5zMR9qiBxHGrQOArDOJGRLeBG95NbVHdB4KF9zbMj3IRkfUUbF20UiGCvFtlSUtMlQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=onkczvUgTSK8lbf/zLkKyfP7Z9VxMXUGH6KzrUrtMEw=;
 b=RrdLpy7YNpRqTuwnFWhfUn1h/LSiYUVWP1aZJBCvag7iYl1V0FrhuNN8S2p9IYVnun7VIqh0zau005SmlnQEe9dR4yx1uQFavRmzN3hI5+gtV15NCsUhUM4gfsD3FJ2enfT3E/6zxEMAan2nP0/ldMWd2eQCHyz/YOl2qcUAQiu7nFm6lMtgKtYgHiExdnD5YKrlHTQjMAVSw4zKnFLoJ8kxp0LIFzyrARu4VfwduVuA3y6jul1YTGa5vKkVudOYEtTUFD6phT6EmVbRYpIxfupHTLoNrFqDX4ALjgekZJ0UCtuEApTV4sfmq3DqRh/GedI1HrX3CyUqgNg0XkoN2Q==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from DM4PR11MB6019.namprd11.prod.outlook.com (2603:10b6:8:60::5) by
 SJ5PPF035FE4CB7.namprd11.prod.outlook.com (2603:10b6:a0f:fc02::805)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9137.14; Tue, 30 Sep
 2025 04:38:25 +0000
Received: from DM4PR11MB6019.namprd11.prod.outlook.com
 ([fe80::fc1:e80f:134c:5ed2]) by DM4PR11MB6019.namprd11.prod.outlook.com
 ([fe80::fc1:e80f:134c:5ed2%5]) with mapi id 15.20.9160.015; Tue, 30 Sep 2025
 04:38:25 +0000
From: "Hogander, Jouni" <jouni.hogander@intel.com>
To: "intel-xe@lists.freedesktop.org" <intel-xe@lists.freedesktop.org>,
 "Grzelak, Michal" <michal.grzelak@intel.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
CC: "Brzezinka, Sebastian" <sebastian.brzezinka@intel.com>
Subject: Re: [PATCH v11 1/1] drm/i915/display: Add no_psr_reason to PSR debugfs
Thread-Topic: [PATCH v11 1/1] drm/i915/display: Add no_psr_reason to PSR
 debugfs
Thread-Index: AQHcJkt9HJT98AZvpk+u6VVbyEoHRLSrO4SA
Date: Tue, 30 Sep 2025 04:38:25 +0000
Message-ID: <a961a8bf5a3c3b6715c68d92548508d7a78f8e02.camel@intel.com>
References: <20250915141913.939152-1-michal.grzelak@intel.com>
 <20250915141913.939152-2-michal.grzelak@intel.com>
In-Reply-To: <20250915141913.939152-2-michal.grzelak@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: DM4PR11MB6019:EE_|SJ5PPF035FE4CB7:EE_
x-ms-office365-filtering-correlation-id: d66faa1b-0955-42e8-c6d1-08ddffdb31a1
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
 ARA:13230040|10070799003|376014|366016|1800799024|38070700021; 
x-microsoft-antispam-message-info: =?utf-8?B?YmJJYVZVZTgwcnFsb2NKTVFBRTFqdkxEK3h6c2taNm16YWlYM2xCcmxZUlBT?=
 =?utf-8?B?YlpTd3hqSU0ySW1Ebk1JQ1NKc05MSVdLWVJ2Qk0ybWVjbnJHcGRuNnYyOFp5?=
 =?utf-8?B?R2hTcjhKZy9DZHloejRjT3VleEphcDFwOGJYcnE3b2MwN0NxR1YxTEo1RkhX?=
 =?utf-8?B?UVdoV2NyRnRKZEtmWVVEWEMrNXEyTW8waUdkZ0ZNVHJhOUIrVzg1UnExYXE5?=
 =?utf-8?B?Q21qWDF0RWU4UVh4VkdaMFphMWxkMWFLWm9YSHlkZjJIWW1jdktNMndvdjFV?=
 =?utf-8?B?YXpUWmUzWkk5NFpUNkQwL0hBQm9CajNuN0txN0kxTEg5clA0WldhcERmTlJj?=
 =?utf-8?B?a2wrUDgwVmxTbzVHY3AydzErSkE3T3Z6amRjTVJuVGVpMHVBT2RkSWRIYUJP?=
 =?utf-8?B?QzcvOUVIMDdqcjJzN1hGK3dRRWdkTzhqVVhLQm1qdmdFL0g2Q1dNY3ViRHEv?=
 =?utf-8?B?QWZkZEFMdmRVREFWQWNOK1BWaisybThTNVA3YzJCRkNSbHZtRk8zQ0JRbzA3?=
 =?utf-8?B?aXVlMGp1T0d3RVoycXg2VTFVaXUwQVZaQXo3S0FSUHBCRjg1U0xRb2t0cTJQ?=
 =?utf-8?B?Q3k0dUl2Qy9lNVo0V01KenRWbWIvRVFlVThwUGNoYUVxd2pMSURVSHdKYjU4?=
 =?utf-8?B?eml0eHFSTE5Yb2c1NExlaXROckVuYzVVN2x4d1NBRGhWS2V1bUhGN0JSeXBX?=
 =?utf-8?B?ekcycTdGcGxtRDBLZk1xMkcrRGRoVFJWNktDWjd5eTRQbkJnU1NSTUNHVmI4?=
 =?utf-8?B?VVdzUjJua0R2UlZNcXdyd0J4QkNBS2FDYTY4VVc1dmxkVWF5OE1hT3FCa2hX?=
 =?utf-8?B?RGR3bVVrdGF3OStFNUxHZlNZYkY4RDRGWlF4YVNmMHJYenBEcXJXc082ZWwy?=
 =?utf-8?B?bGlLbndYYjRUYXBhMTFNb2N0NVNLVjUzblJ1VGJrcTZhakJJRnFMRkE0RTc5?=
 =?utf-8?B?aWtVdnJNcGhuWXp2NkxDWGJqYjRod25jcVcxZFNHVDV4U3UxNmw5cThUUW5h?=
 =?utf-8?B?SHdKL3ZwMVNITGk3M05tOEFsdWowS2loSG01emxQQlFyVzEwZGpJZUpYRm5y?=
 =?utf-8?B?bEFzUXVJOG90UGJIalQ4ZWxJODZCakdjVVozdTlwK1ZtQXZYNGpmanVOQ2Fq?=
 =?utf-8?B?U2tQc0ZleU1vYmxGdWpQRlRtUEJBQjJtUVhmMCtRdk11bWtDZXp4a3VkSitu?=
 =?utf-8?B?dUVZM1ZjdEFUbWV1OXoxU3J3S3d4T214Zmk1b1BKZWRIbFM4V1dNaHIveGdM?=
 =?utf-8?B?UWdocnFjUjFXUlRaZjM1RjlxaTB1aEp1T1FKVWZ3SFBOSU9JZWpCMWo3dCt6?=
 =?utf-8?B?RFRLeCtoWnJDTTdwYmM2eTI0Q3lsUUJQc3U2TU94bDZqc2lZSW1RRU0waGhk?=
 =?utf-8?B?bThpdmttRnQ0V09mM1BMQzhnMUo1a2FSWVppWmdDZFV5c0pnajlnZmFpTHZV?=
 =?utf-8?B?R2JPLzc3a0FGUjQ4L3JzUjdtMmU1WHNwaHdLNHIrWTE3R3NEa3BxTnk0KzB5?=
 =?utf-8?B?cEdCT2RleDFqUHdxeW9LUWZUdWludXFjc2hBZGZuMjRmKzNPOU9Pcm1QeDFh?=
 =?utf-8?B?WEtCRXp5bUdGbDlFRHRpSEdVV1U5RFVadlF2cnhUOHdBTTRiRUFjVFBsZ1VN?=
 =?utf-8?B?MFBGekZpWHdROTJxYTVMTVIzZzZFMzFEN25lMGZyemVVU0pZeUR1cUNZRkRm?=
 =?utf-8?B?OFE3TG1QUFpZL1NCQmt3OW9hejd5Q3FJR2QzWU04NkJXbSt1d25kZEtqT1Za?=
 =?utf-8?B?Qm44NnVrMU5OQndKbHZpMENtL1k3MUMybHkzMnBsejBiMVpVSkVDWFVScSt6?=
 =?utf-8?B?NHJDOEFJNTZQZ010ZUJlbXVUdC9KNDE2NWFZL1B0NTZUWGlHRkdRaDZlckhP?=
 =?utf-8?B?T3BnV09Ia1IwOVQzUzVxVFl1YzNjeWt5UDd5TGNEWkNsVnBFQTFaK3lnVkdR?=
 =?utf-8?B?OXRhcUlMRGpyeTNZRzRXZ0dBRHdERTNybHVNN2FLZm9NcVlsbFRMVVI5YStY?=
 =?utf-8?B?SjdOdzZ0ckNIdGVvVUNRRDc1TmNUY1ArRW1CUExoMzg0b29BZFRCNGx2Rk5v?=
 =?utf-8?Q?ka3HIl?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM4PR11MB6019.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(10070799003)(376014)(366016)(1800799024)(38070700021); DIR:OUT;
 SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?YWwycjNGMWZQQisvU2lUalFleEQzSWRSTE1nNXA2YmxGZ09EV2lweURIYXdh?=
 =?utf-8?B?OEx1SHovZCtOclhIYXJLaEl5V2JhRUpJWnNRRGF4TGN3UkdUZW43ZTB0RGQy?=
 =?utf-8?B?c1lPS1RjWVh6dUV4ZCtGNU1PaVhUUGlSSUYxS1hkb1NzMXVlREZFVHliZE1m?=
 =?utf-8?B?c2VNUmQ1dUhIVzFveUsrbXpHc3Q4bS9PbkFiVE9WMmZoRmcrandHYW1qMEkr?=
 =?utf-8?B?T1dPd09TUGNrSmRQakVDUGVCREJWckVvekRxalpwK2FGQnhzbFNCb3NvaDFo?=
 =?utf-8?B?WHQ3V3dLVExQckZra3NwVHlJNTdnZm1hbE44VUw2WDN1NTFlNEFrcjNaWnZS?=
 =?utf-8?B?c21LbktTWTZwbXhVemY4R2xUVEh0aVVYTEJRc3RuUkZBK2F2ajRlYVlMYXBv?=
 =?utf-8?B?aDRKeVZSQ09neDlGd2d4NDNhRmo2RXlQaDROa0JWaXNqL3hGRXFpTU9mcHFT?=
 =?utf-8?B?NFBoTFNaVDAwcENGRjRvWnN2MVd4aTVQSTQ2RHdEODYzTDBYVndVQSs1SWd2?=
 =?utf-8?B?dHgxS1I3Zzl5R3VSSXdxSmt2MkVlNE9XcXRuell1VUpadFJKeThPVzRJZ0dO?=
 =?utf-8?B?b3NvZkhxdm5BeDMxeXErVk9sWkhneWJzaDN4YS83M2w2YkhZdDZjWVhrcnlw?=
 =?utf-8?B?WlJ0UkhGM2wxeStUYTlWQWY3UWdCSUZTQjA5UzI2OFBjbDRGbGUvZmNmVC90?=
 =?utf-8?B?cTdtcnhDSUhGLyt4ajRCME5IVHZTc1FQd3BLd3B5NnJtb0FJOUd3MHI3Vm9J?=
 =?utf-8?B?UmJEbVRxYWI2QlZncFhBalZSM0VrcmxhRFhSSDJ4R0Q4bmNzOFlvZkthWmk1?=
 =?utf-8?B?VTdwdDhUQ2VhTE9BMG9XVWFObTEySFp4K21xRGMyemdUVzM4S3NwSDY3bjli?=
 =?utf-8?B?UEtSTmxTK0FtZWlTa1hxeUwvWVJWVzQvZitzWXFHT3p6QlNpbkdib3BBSHhF?=
 =?utf-8?B?eFVxeHF4R1pWVjdNTWNwQU1SNkxSSlR5d1Nud0RBL2NBSVM1OGJVT0dWMHZh?=
 =?utf-8?B?UkpLOXFSM3lHaFVNU2NlRU1tUUpqc0d3K29qNWpXOGVkTkJ5SzRscUJZNFBn?=
 =?utf-8?B?cmR5Wm5vV2owL0dPbzhueW5xaFF1REh2bnFuREw0TW9ScklpSmNET2x0ekdW?=
 =?utf-8?B?Zis1TVZUekZmZ1F2VklKemV1YVJUYkgyeUtJa0FGZk5WcjhxaHVNS05MaFBx?=
 =?utf-8?B?SUR2RVArWS9nNUtzNjJab2FxTjdJNGsvQ1NqS3hpRG1wV0V0MkQwRUtXckpZ?=
 =?utf-8?B?VWRncGtMNGtXaXRHZ0c1dk9QSVhZbGI2QWY4dzJ3TmR3MVZxQUFkazBsaThk?=
 =?utf-8?B?NHkybmxSeHkyaVZoV1o5by9VeEpPOHlDeVp0SVNKRlN3NUdiYitaaWdtejFp?=
 =?utf-8?B?QmNXMzNRbHZUK1F2RUJuUHBwc0psUWErcHl4QnJWbVVlVi9wU21wRUNxUnZT?=
 =?utf-8?B?cmUzRnZqZ01vYUYrbTZWeUZiTE9hR0hRSWhBdmlCNEt5SzhlSkF3aUlLNHVJ?=
 =?utf-8?B?MEFoUldncXJhclhqTHF0TCtXaEt0TlM5dzcraHp5MGJhdmZlT3ZzWWg0Rysw?=
 =?utf-8?B?NlpDTFl1R1pkaTFHQ0FaczVtd0J4ZnlqWTVPTDRDQmU2V3FKcDhCS09XZWNi?=
 =?utf-8?B?R09jS0N4MDUvV1pLZGYwQmh0MzEyRFFWL1ZoL0pmYzVXMjlYMnRTL2F2Tm9C?=
 =?utf-8?B?aGViK05hdVdldWltYzdNRXFGOVovNU1CR0ZwZXplOVB3cG1USkhCNkpBNTlp?=
 =?utf-8?B?NVN4Y1I2YlRiNzBUVDh6MG9GcFpEMXBhMVRldVJ0dU55NnJsZXM3aDV0d2Y3?=
 =?utf-8?B?d2pZL0lkeDR6N3VhZWR0aGlmLzB3QVRFcndqdWQ0T0dwUFFneTlJL09UMDNu?=
 =?utf-8?B?Y014K0owUFN3RzVwbkRuYlhxU20vdzg5bmgrVnlBbHBaVGl6Y3lXaURUV1FP?=
 =?utf-8?B?VC8vMEtmV2ZhMGI4a0pqT3VJNWVEUWYxckh0bWI1c3lVcURaaGYyajdaellW?=
 =?utf-8?B?L2pwQVV3alhSUHdBUnNoZWFpQjdoOHI0UStMdThOVFY3VnBjZFZvNS9ud0lU?=
 =?utf-8?B?RUtMS1ZkQXJsWTh6QSszQmlOOFZ5T0hXZHQrS0cwblFpbFlLVTdFL1Q4MzZC?=
 =?utf-8?B?aGRQS1dYdmFYTHBlc3NWTnA2MmlZdVIyRnJKVVJSV1Rlb0F4NmZwV2lpS2Fq?=
 =?utf-8?B?SUpTYlJndFFXUmNPKzJ5bXphaG1WWDBIVWpTWUtia014M3JGMmEzV25pOHN4?=
 =?utf-8?B?bDRQUkZwMTArdGxJVHI0NnNhZUxBPT0=?=
Content-Type: text/plain; charset="utf-8"
Content-ID: <776BFC00AA224849829022F7E9C05FF8@namprd11.prod.outlook.com>
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: DM4PR11MB6019.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: d66faa1b-0955-42e8-c6d1-08ddffdb31a1
X-MS-Exchange-CrossTenant-originalarrivaltime: 30 Sep 2025 04:38:25.1981 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: T/iYUerJN0jWEZVmiJa+s9EJmBSXZKyPVxx52NkywKt1j59ikr0noE5mw62lwJTsLrn2GltcHySv4uD7mHkb2m5Kcf9jqs3ybn0MoRNFYNM=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SJ5PPF035FE4CB7
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

T24gTW9uLCAyMDI1LTA5LTE1IGF0IDE2OjE5ICswMjAwLCBHcnplbGFrLCBNaWNoYWwgd3JvdGU6
DQo+IFRoZXJlIGlzIG5vIHJlYXNvbiBpbiBkZWJ1Z2ZzIHdoeSBQU1IgaGFzIGJlZW4gZGlzYWJs
ZWQuIEN1cnJlbnRseSwNCj4gd2l0aG91dCB0aGlzIGluZm9ybWF0aW9uLCBJR1QgdGVzdHMgY2Fu
bm90IGRlY2lkZSB3aGV0aGVyIFBTUiBoYXMNCj4gYmVlbiBkaXNhYmxlZCBvbiBwdXJwb3NlIG9y
IHdhcyBpdCBhYm5vcm1hbCBiZWhhdmlvci4gQmVjYXVzZSBvZiBpdCwNCj4gdGhlIHN0YXR1cyBv
ZiB0aGUgdGVzdCBjYW5ub3QgYmUgZGVjaWRlZCBjb3JyZWN0bHkuDQo+IA0KPiBBZGQgbm9fcHNy
X3JlYXNvbiBmaWVsZCBpbnRvIHN0cnVjdCBpbnRlbF9wc3IuIEFkZCBub19wc3JfcmVhc29uDQo+
IGludG8gc3RydWN0IGludGVsX2NydGNfc3RhdGUgdG8gcHJldmVudCBzdGF5aW5nIG91dCBvZiBz
eW5jIHdoZW4NCj4gX3Bzcl9jb21wdXRlX2NvbmZpZyBpcyBub3QgdXNpbmcgY29tcHV0ZWQgc3Rh
dGUuIFdyaXRlIHRoZSByZWFzb24sDQo+IGUuZy4gUFNSIHNldHVwIHRpbWluZyBub3QgbWV0LCBp
bnRvIHByb3BlciBQU1IgZGVidWdmcyBmaWxlLiBVcGRhdGUNCj4gdGhlIHJlYXNvbiBmcm9tIG5l
d19jcnRjX3N0YXRlIGluIGludGVsX3Bzcl9wcmVfcGxhbmVfdXBkYXRlLiBFeHRlbmQNCj4gZm9y
bWF0IG9mIGRlYnVnZnMgZmlsZSB0byBoYXZlIHJlYXNvbiB3aGVuIGl0IGlzIG5vbi1OVUxMLiBD
bGVhbiB0aGUNCj4gcmVhc29uIHdoZW4gUFNSIGlzIGFjdGl2YXRlZC4NCj4gDQo+IFJlZmFjdG9y
IGludGVsX3Bzcl9wb3N0X3BsYW5lX3VwZGF0ZSB0byB1c2Ugbm9fcHNyX3JlYXNvbiBhbG9uZw0K
PiBrZWVwX2Rpc2FibGVkLg0KPiANCj4gQ2hhbmdlbG9nOg0KPiB2MTAtPnYxMQ0KPiAtIHVwZGF0
ZSB0aGUgcmVhc29uIGZyb20gbmV3X2NydGNfc3RhdGUgaW5zdGVhZCBvZiBvbGRfY3J0Y19zdGF0
ZQ0KPiBbSm91bmldDQo+IA0KPiB2OS0+djEwDQo+IC0gbG9nIHJlYXNvbiBpbnRvIGludGVsX2Ny
dGNfc3RhdGUgaW5zdGVhZCBvZiBpbnRlbF9kcC0+cHNyIFtKb3VuaV0NCj4gLSByZW1vdmUgY2xl
YXJpbmcgbm9fcHNyX3JlYXNvbiBpbiBpbnRlbF9wc3JfY29tcHV0ZV9jb25maWcgW0pvdW5pXQ0K
PiAtIGNoYW5nZSB1cGRhdGUgb2Ygbm9fcHNyX3JlYXNvbiBpbnRvIG1vcmUgcmVhZGFibGUgZm9y
bSBbSm91bmldDQo+IA0KPiB2OC0+djkNCj4gLSBhZGQgbm9fcHNyX3JlYXNvbiBpbnRvIHN0cnVj
dCBpbnRlbF9jcnRjX3N0YXRlIFtKb3VuaV0NCj4gLSB1cGRhdGUgdGhlIHJlYXNvbiBpbiBpbnRl
bF9wc3JfcHJlX3BsYW5lX3VwZGF0ZSBbSm91bmldDQo+IC0gZWxhYm9yYXRlIG9uIG1vdGl2YXRp
b24gb2YgdGhlIGZlYXR1cmUgaW4gY29tbWl0IG1lc3NhZ2UNCj4gW1NlYmFzdGlhbl0NCj4gLSBj
b3B5IGNoYW5nZWxvZyB0byBjb21taXQgbWVzc2FnZSBbU2ViYXN0aWFuXQ0KPiANCj4gdjctPnY4
DQo+IC0gcmVzZXQgbm9fcHNyX3JlYXNvbiBhdCB0aGUgYmVnaW4gb2YgaW50ZWxfcHNyX2NvbXB1
dGVfY29uZmlnDQo+IFtKb3VuaV0NCj4gLSByZXN0b3JlIGtlZXBfZGlzYWJsZWQgW0pvdW5pXQ0K
PiAtIGRyb3Agc2V0dGluZyAiU2luayBub3QgcmVsaWFibGUiIFtKb3VuaV0NCj4gLSBhZGQgV0Eg
bnVtYmVyIFtKb3VuaV0NCj4gLSBpZiBub24tTlVMTCwgd3JpdGUgbm9fcHNyX3JlYXNvbiBhZnRl
ciBQU1IgbW9kZSBbSm91bmldDQo+IA0KPiB2Ni0+djcNCj4gLSByZWJhc2Ugb250byBuZXcgZHJt
LXRpcA0KPiANCj4gdjUtPnY2DQo+IC0gbW92ZSBzZXR0aW5nIG5vX3Bzcl9yZWFzb24gdG8gaW50
ZWxfcHNyX3Bvc3RfcGxhbmVfdXBkYXRlIFtKb3VuaV0NCj4gLSByZW1vdmUgc2V0dGluZyBub19w
c3JfcmVhc29uIHdoZW4gZGlzYWJsaW5nIFBTUiBpcyB0ZW1wb3JhcnkNCj4gW0pvdW5pXQ0KPiAN
Cj4gdjQtPnY1DQo+IC0gZml4IGluZGVudGF0aW9uIGVycm9ycyBmcm9tIGNoZWNrcGF0Y2gNCj4g
DQo+IHYzLT52NA0KPiAtIGNoYW5nZSBmb3JtYXQgb2YgbG9nZ2luZyB3b3JrYXJvdW5kICMxMTM2
DQo+IA0KPiB2Mi0+djMNCj4gLSBjaGFuZ2UgcmVhc29uIGRlc2NyaXB0aW9uIHRvIGJlIG1vcmUg
c3BlY2lmaWMgW01pa2FdDQo+IC0gcmVtb3ZlIEJTcGVjcyBudW1iZXIgJiBXQSBudW1iZXIgZnJv
bSBiZWluZyB3cml0dGVuIGludG8NCj4gbm9fcHNyX3JlYXNvbg0KPiAtIHJlcGxhY2Ugc3BhY2Vz
IHdpdGggdGFicw0KPiANCj4gdjEtPnYyDQo+IC0gc2V0IG90aGVyIHJlYXNvbnMgdGhhbiAiUFNS
IHNldHVwIHRpbWluZyBub3QgbWV0Ig0KPiAtIGNsZWFyIG5vX3Bzcl9yZWFzb24gd2hlbiBhY3Rp
dmF0aW5nIFBTUi4NCj4gDQo+IFJldmlld2VkLWJ5OiBTZWJhc3RpYW4gQnJ6ZXppbmthIDxzZWJh
c3RpYW4uYnJ6ZXppbmthQGludGVsLmNvbT4NCj4gU2lnbmVkLW9mZi1ieTogTWljaGHFgiBHcnpl
bGFrIDxtaWNoYWwuZ3J6ZWxha0BpbnRlbC5jb20+DQoNCkhvcGVmdWxseSB5b3UgaGF2ZSB0aW1l
IGFuZCBpbnRlcmVzdCB0byBleHRlbmQgdGhpcy4gQW55d2F5cyB0aGlzIG9uZQ0KdG9nZXRoZXIg
d2l0aCB5b3VyIGlndCBwYXRjaCBpcyBhbHJlYWR5IHNvbHZpbmcgb25lIHByb2JsZW0gZm9yIHVz
Og0KDQpSZXZpZXdlZC1ieTogSm91bmkgSMO2Z2FuZGVyIDxqb3VuaS5ob2dhbmRlckBpbnRlbC5j
b20+DQoNCj4gLS0tDQo+IMKgLi4uL2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZGlzcGxheV90eXBl
cy5owqDCoMKgIHzCoCAzICsrKw0KPiDCoGRyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50
ZWxfcHNyLmPCoMKgwqDCoMKgIHwgMjIgKysrKysrKysrKysrKysrLS0NCj4gLS0NCj4gwqAyIGZp
bGVzIGNoYW5nZWQsIDIxIGluc2VydGlvbnMoKyksIDQgZGVsZXRpb25zKC0pDQo+IA0KPiBkaWZm
IC0tZ2l0IGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kaXNwbGF5X3R5cGVz
LmgNCj4gYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2Rpc3BsYXlfdHlwZXMu
aA0KPiBpbmRleCAzNThhYjkyMmQ3YTcuLjhlOTMwZWMxOTdhYiAxMDA2NDQNCj4gLS0tIGEvZHJp
dmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kaXNwbGF5X3R5cGVzLmgNCj4gKysrIGIv
ZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kaXNwbGF5X3R5cGVzLmgNCj4gQEAg
LTExMjcsNiArMTEyNyw3IEBAIHN0cnVjdCBpbnRlbF9jcnRjX3N0YXRlIHsNCj4gwqAJdTMyIGRj
M2NvX2V4aXRsaW5lOw0KPiDCoAl1MTYgc3VfeV9ncmFudWxhcml0eTsNCj4gwqAJdTggYWN0aXZl
X25vbl9wc3JfcGlwZXM7DQo+ICsJY29uc3QgY2hhciAqbm9fcHNyX3JlYXNvbjsNCj4gwqANCj4g
wqAJLyoNCj4gwqAJICogRnJlcXVlbmN5IHRoZSBkcGxsIGZvciB0aGUgcG9ydCBzaG91bGQgcnVu
IGF0LiBEaWZmZXJzDQo+IGZyb20gdGhlDQo+IEBAIC0xNjg5LDYgKzE2OTAsOCBAQCBzdHJ1Y3Qg
aW50ZWxfcHNyIHsNCj4gwqAJYm9vbCBwa2dfY19sYXRlbmN5X3VzZWQ7DQo+IMKgDQo+IMKgCXU4
IGFjdGl2ZV9ub25fcHNyX3BpcGVzOw0KPiArDQo+ICsJY29uc3QgY2hhciAqbm9fcHNyX3JlYXNv
bjsNCj4gwqB9Ow0KPiDCoA0KPiDCoHN0cnVjdCBpbnRlbF9kcCB7DQo+IGRpZmYgLS1naXQgYS9k
cml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX3Bzci5jDQo+IGIvZHJpdmVycy9ncHUv
ZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9wc3IuYw0KPiBpbmRleCAwMWJmMzA0YzcwNWYuLmExZmFm
OGE4ZDE4NCAxMDA2NDQNCj4gLS0tIGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRl
bF9wc3IuYw0KPiArKysgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX3Bzci5j
DQo+IEBAIC0xNTgyLDYgKzE1ODIsNyBAQCBzdGF0aWMgYm9vbCBfcHNyX2NvbXB1dGVfY29uZmln
KHN0cnVjdCBpbnRlbF9kcA0KPiAqaW50ZWxfZHAsDQo+IMKgCWlmIChlbnRyeV9zZXR1cF9mcmFt
ZXMgPj0gMCkgew0KPiDCoAkJaW50ZWxfZHAtPnBzci5lbnRyeV9zZXR1cF9mcmFtZXMgPQ0KPiBl
bnRyeV9zZXR1cF9mcmFtZXM7DQo+IMKgCX0gZWxzZSB7DQo+ICsJCWNydGNfc3RhdGUtPm5vX3Bz
cl9yZWFzb24gPSAiUFNSIHNldHVwIHRpbWluZyBub3QNCj4gbWV0IjsNCj4gwqAJCWRybV9kYmdf
a21zKGRpc3BsYXktPmRybSwNCj4gwqAJCQnCoMKgwqAgIlBTUiBjb25kaXRpb24gZmFpbGVkOiBQ
U1Igc2V0dXAgdGltaW5nDQo+IG5vdCBtZXRcbiIpOw0KPiDCoAkJcmV0dXJuIGZhbHNlOw0KPiBA
QCAtMTgxMyw2ICsxODE0LDcgQEAgc3RhdGljIHZvaWQgaW50ZWxfcHNyX2FjdGl2YXRlKHN0cnVj
dCBpbnRlbF9kcA0KPiAqaW50ZWxfZHApDQo+IMKgCQloc3dfYWN0aXZhdGVfcHNyMShpbnRlbF9k
cCk7DQo+IMKgDQo+IMKgCWludGVsX2RwLT5wc3IuYWN0aXZlID0gdHJ1ZTsNCj4gKwlpbnRlbF9k
cC0+cHNyLm5vX3Bzcl9yZWFzb24gPSBOVUxMOw0KPiDCoH0NCj4gwqANCj4gwqAvKg0KPiBAQCAt
MjkyNSw2ICsyOTI3LDkgQEAgdm9pZCBpbnRlbF9wc3JfcHJlX3BsYW5lX3VwZGF0ZShzdHJ1Y3QN
Cj4gaW50ZWxfYXRvbWljX3N0YXRlICpzdGF0ZSwNCj4gwqANCj4gwqAJCW11dGV4X2xvY2soJnBz
ci0+bG9jayk7DQo+IMKgDQo+ICsJCWlmICghbmV3X2NydGNfc3RhdGUtPmhhc19wc3IpDQo+ICsJ
CQlwc3ItPm5vX3Bzcl9yZWFzb24gPSBuZXdfY3J0Y19zdGF0ZS0NCj4gPm5vX3Bzcl9yZWFzb247
DQo+ICsNCj4gwqAJCWlmIChwc3ItPmVuYWJsZWQpIHsNCj4gwqAJCQkvKg0KPiDCoAkJCSAqIFJl
YXNvbnMgdG8gZGlzYWJsZToNCj4gQEAgLTI5NzMsMTIgKzI5NzgsMTkgQEAgdm9pZCBpbnRlbF9w
c3JfcG9zdF9wbGFuZV91cGRhdGUoc3RydWN0DQo+IGludGVsX2F0b21pY19zdGF0ZSAqc3RhdGUs
DQo+IMKgCQlkcm1fV0FSTl9PTihkaXNwbGF5LT5kcm0sDQo+IMKgCQkJwqDCoMKgIHBzci0+ZW5h
YmxlZCAmJiAhY3J0Y19zdGF0ZS0NCj4gPmFjdGl2ZV9wbGFuZXMpOw0KPiDCoA0KPiAtCQlrZWVw
X2Rpc2FibGVkIHw9IHBzci0+c2lua19ub3RfcmVsaWFibGU7DQo+IC0JCWtlZXBfZGlzYWJsZWQg
fD0gIWNydGNfc3RhdGUtPmFjdGl2ZV9wbGFuZXM7DQo+ICsJCWlmIChwc3ItPnNpbmtfbm90X3Jl
bGlhYmxlKQ0KPiArCQkJa2VlcF9kaXNhYmxlZCA9IHRydWU7DQo+ICsNCj4gKwkJaWYgKCFjcnRj
X3N0YXRlLT5hY3RpdmVfcGxhbmVzKSB7DQo+ICsJCQlwc3ItPm5vX3Bzcl9yZWFzb24gPSAiQWxs
IHBsYW5lcyBpbmFjdGl2ZSI7DQo+ICsJCQlrZWVwX2Rpc2FibGVkID0gdHJ1ZTsNCj4gKwkJfQ0K
PiDCoA0KPiDCoAkJLyogRGlzcGxheSBXQSAjMTEzNjogc2tsLCBieHQgKi8NCj4gLQkJa2VlcF9k
aXNhYmxlZCB8PSBESVNQTEFZX1ZFUihkaXNwbGF5KSA8IDExICYmDQo+IC0JCQljcnRjX3N0YXRl
LT53bV9sZXZlbF9kaXNhYmxlZDsNCj4gKwkJaWYgKERJU1BMQVlfVkVSKGRpc3BsYXkpIDwgMTEg
JiYgY3J0Y19zdGF0ZS0NCj4gPndtX2xldmVsX2Rpc2FibGVkKSB7DQo+ICsJCQlwc3ItPm5vX3Bz
cl9yZWFzb24gPSAiV29ya2Fyb3VuZCAjMTEzNiBmb3INCj4gc2tsLCBieHQiOw0KPiArCQkJa2Vl
cF9kaXNhYmxlZCA9IHRydWU7DQo+ICsJCX0NCj4gwqANCj4gwqAJCWlmICghcHNyLT5lbmFibGVk
ICYmICFrZWVwX2Rpc2FibGVkKQ0KPiDCoAkJCWludGVsX3Bzcl9lbmFibGVfbG9ja2VkKGludGVs
X2RwLA0KPiBjcnRjX3N0YXRlKTsNCj4gQEAgLTQwMTcsNiArNDAyOSw4IEBAIHN0YXRpYyB2b2lk
IGludGVsX3Bzcl9wcmludF9tb2RlKHN0cnVjdA0KPiBpbnRlbF9kcCAqaW50ZWxfZHAsDQo+IMKg
CQlyZWdpb25fZXQgPSAiIjsNCj4gwqANCj4gwqAJc2VxX3ByaW50ZihtLCAiUFNSIG1vZGU6ICVz
JXMlc1xuIiwgbW9kZSwgc3RhdHVzLA0KPiByZWdpb25fZXQpOw0KPiArCWlmIChwc3ItPm5vX3Bz
cl9yZWFzb24pDQo+ICsJCXNlcV9wcmludGYobSwgIsKgICVzXG4iLCBwc3ItPm5vX3Bzcl9yZWFz
b24pOw0KPiDCoH0NCj4gwqANCj4gwqBzdGF0aWMgaW50IGludGVsX3Bzcl9zdGF0dXMoc3RydWN0
IHNlcV9maWxlICptLCBzdHJ1Y3QgaW50ZWxfZHANCj4gKmludGVsX2RwKQ0KPiAtLSANCj4gMi40
NS4yDQo+IA0KDQo=
