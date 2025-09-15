Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id A126AB57D46
	for <lists+intel-gfx@lfdr.de>; Mon, 15 Sep 2025 15:33:45 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 348DD10E4BC;
	Mon, 15 Sep 2025 13:33:44 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="X3xRyBlJ";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.19])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 1C6C410E4BC
 for <intel-gfx@lists.freedesktop.org>; Mon, 15 Sep 2025 13:33:43 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1757943223; x=1789479223;
 h=content-transfer-encoding:in-reply-to:references:subject:
 from:to:cc:date:message-id:mime-version;
 bh=BaTYP2BTOA8cm0sOozwkudGakurmioTfUkdA0Wkh8R0=;
 b=X3xRyBlJHv7ONCKe5io3qOTh+GHOBELXf4aXUHetyVpS03TRbTMxMbkI
 Gr0D+1QrBk7jtPy1SveFc6tn0giiqqgJj267bC5jATKldZZHReIOTumNO
 KSNDt907WfOcdeMtznnOYwm00CVkNiJ1IwON78/w0KXYEeFE4VP6yQ3Ip
 IeQDl5Rhnuub96anksUPceAjybis4YmK+rAx3KRjLe0hvE1SzcpFvHbN0
 CMYpYMchbpLtO7Lwko3HIWpNsLbK/MsdJEdChhoTdBJf/apTBfQtwyZua
 aoGj7WjxD9L3sm6GnBtEe9bUILLAXvQWkqd0MBc7oQqM5BbyX6Xykl+Qp Q==;
X-CSE-ConnectionGUID: JKyvWX3URFO8jfqGQJfSGg==
X-CSE-MsgGUID: OwPQYw8kTwKE5iUkhVqD7Q==
X-IronPort-AV: E=McAfee;i="6800,10657,11554"; a="59237696"
X-IronPort-AV: E=Sophos;i="6.18,266,1751266800"; d="scan'208";a="59237696"
Received: from orviesa007.jf.intel.com ([10.64.159.147])
 by fmvoesa113.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 15 Sep 2025 06:33:36 -0700
X-CSE-ConnectionGUID: WHDeo1DARCKiUY76gjwsDA==
X-CSE-MsgGUID: Au/wd5MtR5eLLhhBg0CRHg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.18,266,1751266800"; d="scan'208";a="174460518"
Received: from orsmsx903.amr.corp.intel.com ([10.22.229.25])
 by orviesa007.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 15 Sep 2025 06:33:36 -0700
Received: from ORSMSX903.amr.corp.intel.com (10.22.229.25) by
 ORSMSX903.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.17; Mon, 15 Sep 2025 06:33:35 -0700
Received: from ORSEDG901.ED.cps.intel.com (10.7.248.11) by
 ORSMSX903.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.17 via Frontend Transport; Mon, 15 Sep 2025 06:33:35 -0700
Received: from SA9PR02CU001.outbound.protection.outlook.com (40.93.196.32) by
 edgegateway.intel.com (134.134.137.111) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.17; Mon, 15 Sep 2025 06:33:35 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=hmhTsw2sGY/3UARxVxJV+ZS2GrOeDBsvb16Embe3o6RnwI0r7gs0OQua8skVXv999Wh15BazGeNbmPEDHSxX1w1KDN0yzP9tWzmYdq+mZV7HWbmUDJjvxHZS2pN+RUIrSnfqy14I29vkEBmSXnLbLhEmcfU44I/VQZ6ujgMs5ycx97zI0WZRALicsPzCDHE0KMokvEAnsmuuwdqx2aaKpevfxHhotkXoisUM4A20xvYjE04VO207dV087OzmduzriQ+79d0lje6b4ZipHi0Y5tKNYushjmZQjYBaVQpjanaNd6DIbyNFTZ8y81sxvt0elMnNdCwMo1xVW7xZ5dRa5g==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=wpUh+4c8umHMB0RMVKbms8SsKo4otgh7z4JuhRjsYjQ=;
 b=ugp8CC8j5KYAMaPtG4wcmN2BR/el00T7fA3GibR4PM/Va2dEONH7AeVEPWCpw/wqRVNCJsPAEysmUCQPxyhOYufufxEs9RbtWEZTIvEoz2tEn+IjLbURGwI/46lQ5C553jTosuedhl1CRedxLvDiLzn2aISh5O0P7HzOwR37GAmXqHyscFHSb9VdXaWM9J9quz1lZdTN8QDGCcQQJVm/q2G2O9jRCJEfKhYPeB2ly9fkutuc3OROaUST0HoJIjUqaQRrRG4lfU0OEBJrXeRSQydrBgyK2LpzguViXyYe4HDf/VTupodYMI0rUW/X7DXNXSvoovVOlZOmp1sRyOgurw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from PH8PR11MB8287.namprd11.prod.outlook.com (2603:10b6:510:1c7::14)
 by SA1PR11MB6870.namprd11.prod.outlook.com (2603:10b6:806:2b4::16)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9094.22; Mon, 15 Sep
 2025 13:33:32 +0000
Received: from PH8PR11MB8287.namprd11.prod.outlook.com
 ([fe80::7e8b:2e5:8ce4:2350]) by PH8PR11MB8287.namprd11.prod.outlook.com
 ([fe80::7e8b:2e5:8ce4:2350%7]) with mapi id 15.20.9115.018; Mon, 15 Sep 2025
 13:33:31 +0000
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: quoted-printable
In-Reply-To: <20250911205543.388402-2-dnyaneshwar.bhadane@intel.com>
References: <20250911205543.388402-1-dnyaneshwar.bhadane@intel.com>
 <20250911205543.388402-2-dnyaneshwar.bhadane@intel.com>
Subject: Re: [PATCH 1/3] drm/pcids: Split PTL pciids group to make wcl
 subplatform
From: Gustavo Sousa <gustavo.sousa@intel.com>
To: Dnyaneshwar Bhadane <dnyaneshwar.bhadane@intel.com>,
 <ankit.k.nautiyal@intel.com>, <intel-gfx@lists.freedesktop.org>
CC: <matthew.s.atwood@intel.com>, Dnyaneshwar Bhadane
 <dnyaneshwar.bhadane@intel.com>, Jani Nikula <jani.nikula@intel.com>
Date: Mon, 15 Sep 2025 10:33:27 -0300
Message-ID: <175794320783.1613.3172112236499856318@intel.com>
User-Agent: alot/0.12.dev22+g972188619
X-ClientProxiedBy: BYAPR02CA0039.namprd02.prod.outlook.com
 (2603:10b6:a03:54::16) To PH8PR11MB8287.namprd11.prod.outlook.com
 (2603:10b6:510:1c7::14)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: PH8PR11MB8287:EE_|SA1PR11MB6870:EE_
X-MS-Office365-Filtering-Correlation-Id: 28afcbf5-3708-499c-f858-08ddf45c764f
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|376014|1800799024|366016;
X-Microsoft-Antispam-Message-Info: =?utf-8?B?Y1ZEa1liL2hSelVxcUpBbzI3MkNSdGNHaVI5MHJySXE5eDFnSUR6QnpDZUdk?=
 =?utf-8?B?T1M5b2o0ckJ1aGUzVEExczNJRkVjc1NRMDUvd0JLc2k0Q1QyU3Vibmswc1Yx?=
 =?utf-8?B?S01sUFdqdWRqZXM5WEZycUlWMVQ4cVRrKytpNUJEZW43Z1duSjh5bUNFRDRq?=
 =?utf-8?B?M2dmNlEvWkg3bXZFd01aN09oeWZ0WE9DREJ4UXRZb1c4TVJUM1dmSmhpWTVM?=
 =?utf-8?B?WWpTSmxDUllabytJNlhiWlpiL2I0M21VbmdsZ0NwbGFLTUIrZyt5SDc2WjJR?=
 =?utf-8?B?MG1ZaUphZVo4K1l1aVJGKzdHK0oxOE9ReHpTREs2T3lqek81Q0g2VkFWOVRT?=
 =?utf-8?B?Zi9SVjQvcXRWS1U0T3ZIaThBK3dPZjE4b3BSSDN0ckpXeGUvelE5bDlKSWlH?=
 =?utf-8?B?OVF5d2NkekRIRXpMQlNHNTVhVEdhYm1qLytseVY4ZHd3SnFzMFVyZ1NPaklO?=
 =?utf-8?B?TkdXMXVFcGRCWityOXJsQTY1WHhqYnN4V053MDFOR2VFWHcwZHFLNElKa29x?=
 =?utf-8?B?L2lYc3htaTNEMUdyT3ltb2FCZ3VhVXF6NnJQNGtmZU5GU0RnTk9qVWNoQXBr?=
 =?utf-8?B?ZU83Qis1VnYxNS9BWi9jQW01c0oxT3BwV1VSRno0M3lIdFVSR0JUMzE2SE93?=
 =?utf-8?B?Wit5eDNmMFdyME1uSzRxcXN6Y2FkOVgzSUFtUU9qRENlMnQxeHRoWDZsbkQw?=
 =?utf-8?B?ODBqZk5GUEZFR2Z2RUExa2VYVU9WMVA2OXh5TXdHQWYyT2ZZY0IrRFFreG1v?=
 =?utf-8?B?WFFTSE16L1h3SUg2VGRqeFRZbCtKTU1GNmk2UHQ3aTliSWg1eE5LbGtvSGVh?=
 =?utf-8?B?ZmdNd0cxWlJqcytwbCsxeDdaclppTW5iM1h1NjcvM20xZTVCQzNjMmZBVStN?=
 =?utf-8?B?R216Sk1lbzlEbi9nUkVicHdqRTlhZnQrR0lPWjRmYmg2YkZhMEk3cHlaalI1?=
 =?utf-8?B?TVViV1lkT3ozL1VQWExydzNtRVZqVHl3WUpnNmNuSnY4enVyMjdpSUVLNllL?=
 =?utf-8?B?VnhRSGNYY3h1dnhoNDFpNmdnejUwWS81Ty92T1RFSzNpRThxNEsyTUpNMW44?=
 =?utf-8?B?enV6SVp0WXAvb2NPSFlTbkozTnBUOXFFRFNrYUF3OXo4aU5WZ3g2MzJzYjRS?=
 =?utf-8?B?K25WOXFoZjJuS01nRnZzck9hNnNaMkMwQy9JMmU2MldOZytBUFpTLzZQVFBL?=
 =?utf-8?B?WGNoc1ZBUzNxd210d1JVYTZpV2x0c3NOQlhMRVJ3QkpsSEZZdnI2VG56OElq?=
 =?utf-8?B?d0FFd2JsZkhyMnpKNG5UeHE1QXd5UTMxU1JoV21RS1dENm9OU0hHQmlNNEV4?=
 =?utf-8?B?d3pSR3pxRjU5YVdqSTN4dkd6MHZEdFEwU0prK1dlaGpVemQyTXZHZ0h5M2ta?=
 =?utf-8?B?ckNmTXRYeXB3MUNhQ0VUOGE5cnJFOVNoeURGUlN6ZENjajl4amVRRnRCNDNE?=
 =?utf-8?B?Y1R5SnA0bFdmVXRVMCtQaXUvVy83bGhVWHpmWHlucE5pbXRldnA1RklSSlZ5?=
 =?utf-8?B?S1J6SkdOYUNFS0p3SnNXTm00UjN0ME1zQ3UrS0EwUmIrSngxTXp3ZHRIYmx6?=
 =?utf-8?B?WkdHbC81aUNqU3hXdWFWYzFrRkVsTjZmdU9YcEpxUjB5MlYyV3VoOXRYSnBW?=
 =?utf-8?B?ejJNOG04aG45aTNwNWRSeU1WbTB6Nmg3UXdMb1BaYjUrcHdPZFF2S09EYXVi?=
 =?utf-8?B?OFpwYkVTNFg1Yis5QXpqRy9CbldPdlJjTVJQdk44TkZqdy81OFFQSHV5YzdC?=
 =?utf-8?B?MDZiOGhNcUtyZDJFVFlUVXpUTmtSZWx3ZEF5dWRmV2J5bEp3YThUeEpEVjBM?=
 =?utf-8?B?N2ZKREwzWWZzdGpvVUtwamF1cUQ4QXUzSzJrbTladGl4aUxJOS93NWRkZEhu?=
 =?utf-8?B?TW9OcktXNElFTXZ6WFpTTE5ackRuZFRoMmxJVEJjbW9ua2ZJWnJkUjNXamlG?=
 =?utf-8?Q?GLzAeixprwI=3D?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:PH8PR11MB8287.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(376014)(1800799024)(366016); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?U0Uwa1IvZFlKWXZIc2dVUS9yQURLU3dsOHROUDdXTDdvWkgxSlpHT1laM1o4?=
 =?utf-8?B?ckRWZ0JFZFBIdDd3TVQ5TzlMV3J5Tnh6UGthMm9rc1FFUzdBTWprRWhoUy9D?=
 =?utf-8?B?SDE3NnlMSVhTRHJCYkNJRTRSdlR2cmZlRjlwVjJrait1OXBGN0F0RWl4KzND?=
 =?utf-8?B?RlYyMzJPclFtaDhtQnBQV0hQN0VuaHVZeXkwbVpSQjlRcnlPZjBFSHE4QUdl?=
 =?utf-8?B?czRuSGI0T1FTSHFIdFdmbWFLSHhvZ0pYMEtVNnlOcUpIUDJOZCtnUjJiYkJX?=
 =?utf-8?B?Rmo0UnRjakl4NFNyQVF1WWNSZzUzM3N3OTB4M1VHZ09jNXpjTEpkcGdPd1cv?=
 =?utf-8?B?Nm9QYlNVR0RQeDZ1VHZnTkRsYmNIMUVTa202dFVrZ0I3RFg1V2E2Z09uVERR?=
 =?utf-8?B?QWk1WXJxZ09KckFJT1ByQWRBVmVVdmlsUFF1b2p0SGRBVWNYMWhNMTZBSnhz?=
 =?utf-8?B?Znd5R2liSExvKzdoSW90VDhPZVNGSGJQU0dOcks5bFVyQmhEdVlZUzdrMWtT?=
 =?utf-8?B?TERFbHVHK09kVU90dDlCVWtxWVpzNkZPSHcrV1J0MzFaeU9zakVtd2wxUFV6?=
 =?utf-8?B?TVZrT0wrQ2tVNmlRSGxmWUxObXBSK1FWL0NKMGVDSlZQc2VRaUZiaFE5TkdI?=
 =?utf-8?B?MnlNdFVHQlpVRHJJemtqK3RtcmFoRkFBTTVQQ29Ia2p4TDBEbk41SW9tMkNU?=
 =?utf-8?B?TERSVmlYdDd1S25hUms3RUNWM1NPNlhhcEptZzZ2QlNWRVdHNFFyRmoreGM3?=
 =?utf-8?B?cVV3QjkwdnkvRlFKMXZOTmM0RFFOMlNrOFpxbkxwTTIreDlNZEpoeER3YU45?=
 =?utf-8?B?ZmhxTFZRbDA4SkdrS0huM0VuektKM0c0MmZQQStEcFZrNmdEYnozN3RqWVVu?=
 =?utf-8?B?WTl1RVNmNVpBdkR2T2lHQnIrdGZzczJFcWZYMm9zUm5LN2swRDRnTHRwZ3cx?=
 =?utf-8?B?UnN0RVRuRWNGSVpRNHJsbDFLSUNxd2oyd09Zb1JVZUkxeXRQOWkyeVZ4NUNK?=
 =?utf-8?B?OVArVGpEQlpqMTNkMjgyRTVOUUxhbmZwcU9aZUVFa2ZIMmNtL1QxOXBtTFk3?=
 =?utf-8?B?TlpialRJRlVpRzVsSVRWdGxxWEF6QXNRRkp3azg3UEFDbUVkTzF1Vzhhem9K?=
 =?utf-8?B?MVF1Ny9lczhtZlQ4K0swd3hkTk1XNlhlaThEVUlxZjBQSWp6em5YeHFsK0N4?=
 =?utf-8?B?Mm1Id0E2NGJDZ2MwdUFJWVVvbFdZalRsenRScndIK09rVGJzSkJWK0E1aW1F?=
 =?utf-8?B?TUtvY0VZUjBtMUZnd0ZyOTFiTzcwQlVmWHo2SzROaWdFVkJCYWFOZWcwWTZl?=
 =?utf-8?B?dWJjRWxvT05OdzJ2c2VWTlFOSW42ZldrWHFsaEdRMHkycFcrdEp5MFNzMXRG?=
 =?utf-8?B?czFBRzVyM3NiK1NpaU9JS3B2QXNlcUh0Zjd1cm1STDR1enAwZW5mVE0rM1pB?=
 =?utf-8?B?VFA4UHVmak1ady9YbitrN3dTdUVlNVMvUWRVWUNIeC9Sd2I1aHNTS0xiUE5s?=
 =?utf-8?B?WHhOTEg4KzlxM2FxNFFsMkFibElVN3gybU9GSEdnUTBFZ1BSRzZyMlhNVldO?=
 =?utf-8?B?eHd6VUR0RjRSSzgxUmJndDhhd1lFM3hQVUJpRjZ2ODFuMjV4aUhEdEx5bDFm?=
 =?utf-8?B?YVZoRWpDZEwwZFBrZkpTQXFRKzd1YmFETXRRTjFKd3BrY2tWQ3pKci9INUJ5?=
 =?utf-8?B?VjV6L21KN1RMbEVkN2oxaGJ0V1d6S043Tkp1Nkg5U2VNVVpRZC84c1d1SENI?=
 =?utf-8?B?QkZvNmY1ZUE2cTRWbldMU3dZNjV3TnR1S2xrUm54V093ak1pNmNvT3FjRndP?=
 =?utf-8?B?dkhjK3RHU003bmZVektHTjVMNUpkbGVNdHNYekNIVFF3TnBHS1hXR3J5U3RC?=
 =?utf-8?B?azhzVEp1TjlMVFg3YmJXNmxwNXNrQTRnRlZNZXcrNnpUYXIxQkJFQkVvdWpk?=
 =?utf-8?B?b0JLS3c3N3pBM0thMEpWS1BPaUtPcDNSdnEzek94WVdlWkJDS3ErTWdNbW9C?=
 =?utf-8?B?Q1VhM05BU05LaTN3cWREOWVnbGwzODRNLzFYSE5BMmZUcUFsUXlWbHBxeDNl?=
 =?utf-8?B?NmJHalUraC82WW1GNldIaXZOc1lLNzFKbnVQTUhYOGlCS3M4NXhpRDYwa2N6?=
 =?utf-8?B?YTlPdVVCQ2R0MkRpbUJTQndBLzg3elVPS3ByZnRUSXVTR3R1dDZPcFc2NWYy?=
 =?utf-8?B?NGc9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 28afcbf5-3708-499c-f858-08ddf45c764f
X-MS-Exchange-CrossTenant-AuthSource: PH8PR11MB8287.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 15 Sep 2025 13:33:31.9069 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: 4MIzmv/Fn0ncPRRfYhDbFNMln4OcmDdjuP/V0r3tGPSHXK852w2ARst2oSwsM7UW9j2sPmIkSzFpIxlh2La0Yw==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SA1PR11MB6870
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

Quoting Dnyaneshwar Bhadane (2025-09-11 17:55:40-03:00)
>To form the WCL platform as a subplatform of PTL in definition,
>WCL pci ids are splited into saparate group from PTL.
>So update the pciidlist struct to cover all the pci ids.
>
>Signed-off-by: Dnyaneshwar Bhadane <dnyaneshwar.bhadane@intel.com>
>---
> drivers/gpu/drm/xe/xe_pci.c | 1 +
> include/drm/intel/pciids.h  | 4 +++-
> 2 files changed, 4 insertions(+), 1 deletion(-)
>
>diff --git a/drivers/gpu/drm/xe/xe_pci.c b/drivers/gpu/drm/xe/xe_pci.c
>index 701ba9baa9d7..fc2ea9132804 100644
>--- a/drivers/gpu/drm/xe/xe_pci.c
>+++ b/drivers/gpu/drm/xe/xe_pci.c
>@@ -375,6 +375,7 @@ static const struct pci_device_id pciidlist[] =3D {
>         INTEL_LNL_IDS(INTEL_VGA_DEVICE, &lnl_desc),
>         INTEL_BMG_IDS(INTEL_VGA_DEVICE, &bmg_desc),
>         INTEL_PTL_IDS(INTEL_VGA_DEVICE, &ptl_desc),
>+        INTEL_WCL_IDS(INTEL_VGA_DEVICE, &ptl_desc),
>         { }
> };
> MODULE_DEVICE_TABLE(pci, pciidlist);
>diff --git a/include/drm/intel/pciids.h b/include/drm/intel/pciids.h
>index da6301a6fcea..9d378c65be4b 100644
>--- a/include/drm/intel/pciids.h
>+++ b/include/drm/intel/pciids.h
>@@ -877,7 +877,9 @@
>         MACRO__(0xB08F, ## __VA_ARGS__), \
>         MACRO__(0xB090, ## __VA_ARGS__), \
>         MACRO__(0xB0A0, ## __VA_ARGS__), \
>-        MACRO__(0xB0B0, ## __VA_ARGS__), \
>+        MACRO__(0xB0B0, ## __VA_ARGS__)
>+
>+#define INTEL_WCL_IDS(MACRO__, ...) \
>         MACRO__(0xFD80, ## __VA_ARGS__), \
>         MACRO__(0xFD81, ## __VA_ARGS__)

This patch, at its current state, will break the display part, because
WCL will not be detected until the next patch. We should either:

 - bring the line "INTEL_WCL_IDS(INTEL_DISPLAY_DEVICE, &ptl_desc)" from
   path #2 into this one.

 - squash this and patch #2 together.

That said, since we are defining WCL as a subplatform, I think we
probably should make INTEL_WCL_IDS() be called from INTEL_PTL_IDS().
Either that or make both separate platforms from the display point of
view.

Also, I'm not sure how having a prelimiary patch affects backporting
fixes. So, I'm wondering if we should tag this patch somehow or if
something else should be made here to make the backporting easier.

Cc: Jani

--
Gustavo Sousa

>=20
>--=20
>2.51.0
>
