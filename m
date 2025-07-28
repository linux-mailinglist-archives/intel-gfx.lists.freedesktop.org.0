Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 28020B140C1
	for <lists+intel-gfx@lfdr.de>; Mon, 28 Jul 2025 18:53:48 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 35BE510E13E;
	Mon, 28 Jul 2025 16:53:46 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="Mdc9ApgA";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.11])
 by gabe.freedesktop.org (Postfix) with ESMTPS id A55EA89ECB;
 Mon, 28 Jul 2025 16:53:44 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1753721625; x=1785257625;
 h=message-id:date:from:subject:to:cc:
 content-transfer-encoding:mime-version;
 bh=1hU9QV3YTjGf+bNZJ54j/CUvKxYWK6hs4aeyRfN8riw=;
 b=Mdc9ApgA2a6X33P3Iwzm5iQt4Dj8Ndl7mhEInbspkdW5YJPawkDMv3KK
 7gCYJXwsGZoWoQwOAdClB83E2EOhrmFM9ETtr5+3a90H5/4qW2hvA1HGz
 W4NeLtSD8QVMNLR2RU5YWiDPY74h/qWs0uE4yY+iBchz/+YCRe+mes25R
 g1x/Bahi4vhzZCtaeFXrOig0V/0d5UIrQ+JlI3Yb5f//w+jEF9oRqXWVL
 4KhfTwgTMaZ1Jl5mMrdFQluwHvK5teSiswQj4NcNsE4TUAfOKQhhN6iHR
 uJ+pkWj++9ekKhwZx/42xWh7a8oT6nnWS3/CeeAVjOMh8yVAp4SmZyK56 Q==;
X-CSE-ConnectionGUID: cznHl10QSHWJyP+7YgeaxA==
X-CSE-MsgGUID: uG8nYtKFS/WQB/OAUQf36w==
X-IronPort-AV: E=McAfee;i="6800,10657,11505"; a="66247596"
X-IronPort-AV: E=Sophos;i="6.16,339,1744095600"; d="scan'208";a="66247596"
Received: from orviesa010.jf.intel.com ([10.64.159.150])
 by orvoesa103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 28 Jul 2025 09:53:44 -0700
X-CSE-ConnectionGUID: WUYZyUrSSTexAmKbjj9lyA==
X-CSE-MsgGUID: y8DfUJaWRguLA7uXye9CTg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.16,339,1744095600"; d="scan'208";a="161737953"
Received: from orsmsx901.amr.corp.intel.com ([10.22.229.23])
 by orviesa010.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 28 Jul 2025 09:53:45 -0700
Received: from ORSMSX902.amr.corp.intel.com (10.22.229.24) by
 ORSMSX901.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1748.26; Mon, 28 Jul 2025 09:53:43 -0700
Received: from ORSEDG901.ED.cps.intel.com (10.7.248.11) by
 ORSMSX902.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1748.26 via Frontend Transport; Mon, 28 Jul 2025 09:53:43 -0700
Received: from NAM12-BN8-obe.outbound.protection.outlook.com (40.107.237.54)
 by edgegateway.intel.com (134.134.137.111) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1748.26; Mon, 28 Jul 2025 09:53:43 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=kxLI5/z6vEqHajGbCJsMlOmgAS1G+UuA+ccVQtLTsQiOMuwuU1IAo0Buj1GnlH5+zOIB7EWE+KhfWd2VJRHsFuEM6/3lKWSN8bHpSqtGs125i/gXYpRotQ48EMhO8iyhGv+ZCPXwIx7eYpYj6Qu8bzXjKf+B4YG2rytxqgbZzZ0KiUeBF8/O6wl36Xf4/eeES9NfPKGCLpC1TL1VHcGZCPxP0wHtbdbypEKLR0yEkndcHwQNe/+v8gSiksCuAAsh44ZbskykOH+VCoAecUvJBeLopgAP6Iw7r7msni0D/pKuC0+LWENp/abCN/SAulTH9sQ0o68mK8eglnpMFHw5Rg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=hy6NBDL/geZpFLW9717Gtzd9LE2YL2ykIRF5oWu3Duw=;
 b=KwnOLJr+GqI9tkiVnmtarVvV7IesQcOiPYbXcH6Tm7k5ekSBlkgnoYsIXpWyFMy66vYXVFav1tc9xAtSFJvoul8Pi6ppZ7wClWlN0DnFcdPkk22bXQgqtpfFaTE1uIddGG1NJPPGEPucr14Qn0EtSuIlf7ZW975olPcJfT9dBBBZRRmafLhkjwvRCM3tgT6powreYPHiY2BY3SvSGAYHH302QlQO5lF6d0mFGsRQYz1oAmRGQQByvmN43N9lEILc6yggh70dJv5YO58hJY4EKYgQbnBRXiRrSh2cY2oOvVi9DuiUHuB2AS+Tzl3HTcqQD/MVYbCVtCdLjeJ7ckceBg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from SJ1PR11MB6129.namprd11.prod.outlook.com (2603:10b6:a03:488::12)
 by PH7PR11MB7099.namprd11.prod.outlook.com (2603:10b6:510:20e::13)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8964.27; Mon, 28 Jul
 2025 16:53:13 +0000
Received: from SJ1PR11MB6129.namprd11.prod.outlook.com
 ([fe80::21c3:4b36:8cc5:b525]) by SJ1PR11MB6129.namprd11.prod.outlook.com
 ([fe80::21c3:4b36:8cc5:b525%6]) with mapi id 15.20.8964.025; Mon, 28 Jul 2025
 16:53:13 +0000
Message-ID: <6a98e630-0610-4ba2-89c9-b2bd0d8ef9af@intel.com>
Date: Mon, 28 Jul 2025 22:23:06 +0530
User-Agent: Mozilla Thunderbird
From: "Borah, Chaitanya Kumar" <chaitanya.kumar.borah@intel.com>
Subject: Regression on linux-next (next-20250721)
Content-Language: en-GB
To: <john.johansen@canonical.com>
CC: "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>,
 "intel-xe@lists.freedesktop.org" <intel-xe@lists.freedesktop.org>, "Kurmi,
 Suresh Kumar" <suresh.kumar.kurmi@intel.com>, "Saarinen, Jani"
 <jani.saarinen@intel.com>, <lucas.demarchi@intel.com>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: 8bit
X-ClientProxiedBy: MAXP287CA0020.INDP287.PROD.OUTLOOK.COM
 (2603:1096:a00:49::36) To SJ1PR11MB6129.namprd11.prod.outlook.com
 (2603:10b6:a03:488::12)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: SJ1PR11MB6129:EE_|PH7PR11MB7099:EE_
X-MS-Office365-Filtering-Correlation-Id: bc03cecb-d693-4f68-1b25-08ddcdf73d81
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|366016|376014|1800799024;
X-Microsoft-Antispam-Message-Info: =?utf-8?B?UXcvMzhDQUViM2k5S1FmRjZtVHlTRy9WVitob1lNdk83SXRMamJ3VElzaWFh?=
 =?utf-8?B?VE1tNlVCcmdwTXB0T3Blek01blVzNHVpWkE0WU1xTTMrZ0lRdVVGZE9XcWVk?=
 =?utf-8?B?K2k1NmV4M21TTnhWMlVKekJHTVpxeEM1VzBuT3pUcTdwRVcycWRwbXdjWEgy?=
 =?utf-8?B?RW9nSGJrNDdvZFQrZmY4TWRQY0V4UmlicEJYSUlRZENlTklDS0RyaGF2YnFM?=
 =?utf-8?B?QVRIemFYeDJtUGZIeHFiQnBjM3AvTmp3THYzOTlmMkhyeWFrcHN0akduZFMv?=
 =?utf-8?B?YXhCVFJHSUNsRUV2dnBsSkxFT3REa1NpYjRQK1RYZlBtNHFFVmRENnNuYXVY?=
 =?utf-8?B?VjE5RE1JdVpXUEpkd1U1cmtIaGx6M3VqdXd0dGl3K3ExajZNQzZsTlljSk1t?=
 =?utf-8?B?QWNUaTdTR3BWNm1sZTBUMEdaMGcvN0RHaVlCcEJkYnZIMjBSaUJxekdHZGgv?=
 =?utf-8?B?YjhxdThxeTNERWRnL0VkYTlzQW5LYWM2SmxsbURUUWQxcmp2UjNVODROR3ky?=
 =?utf-8?B?enVMcFdEVnJsR09mUlZuNkpNaGlIaExBTEFvTFUvT3lqNVV3bDlkbG5UWGc0?=
 =?utf-8?B?dGZGdlV1OEVtTU9WNnV3d3ZkK0R6eDF3OXB2TVFaNGtsTEthN1c1UTdZNWVC?=
 =?utf-8?B?TlBiTk1CMCtCM0hZYTEvYXVZTGxVSzM2OXJBVkM1cTJqWWRwaUhnS2ZxZW05?=
 =?utf-8?B?YmYvZ1FVajd6ZWlZd1dQYjlnMnBBdGNNS0dYbFMrbkJVUFRmR1B5TzFKdmN6?=
 =?utf-8?B?UFZPZ0FBRmxORkdnSDc5ZUR4STJxTjRhTzEwM2c3SjdVTWF1MmdWUFd1NE9j?=
 =?utf-8?B?TUptQnZMZWVidk5HMEFPZWh1M2trcmpjVUorTmdsNjcvYnB2VllWbHlEUjlD?=
 =?utf-8?B?Z1Z5d052WE5HWWRhOWh6bGFmR0pSZEx5NjVZTFo5ZXFXYlEza09lajYvbHhP?=
 =?utf-8?B?NDR5c2o2Tkh4cGRZcVI0WFYreFNpSEdtL0hpTk8wNzZFQXFGL0VhSTNYOU56?=
 =?utf-8?B?YVF1U0s5YkhaV2xaZ2IyaFg4TlNwSmhrV2ZqYVQ2YUNPSEZBaldCSTdvQ3R4?=
 =?utf-8?B?UFowWlUwM2sza3JPbEZMeEJDdU9aNHVySU83VVkxcTRCZTBlWFczZXZ2SkxD?=
 =?utf-8?B?OUhMS2VWaXQxV0lZMEg5ZG1nS1hhak04aC95TXVRSXErUGw4TWRxclFTOUJ4?=
 =?utf-8?B?cWZ2cHlIcEdQNVB6TVdKYWVjb09kdXduakI0Z01sdFB1Y0EvMzdzajM5aFhN?=
 =?utf-8?B?UmJwSkZ0eEpvS29nNy9zdG5vcnhnZDMyTHM5NGg3Y21oMk9wYWZzbTFmeitS?=
 =?utf-8?B?d0p2aEFqTmxRbGFJeHlRaXBrRW9HNFRtTnAvRmxDdDZ6eDNMNXdWYnZuMC9Q?=
 =?utf-8?B?Z1RBQ2krWGtia0QrNHVqOVM4Y0hNQkZPaURobk5yVm54YXVRTTVieUp6RlM3?=
 =?utf-8?B?QkQxck1VU1cwWklZYTMzZjJ5Vkg0TUllME9EUzk2MXFzdXAvaGNWN2tyZ0RZ?=
 =?utf-8?B?YlpHaGllcDlhMGZDUkdnaGxIWGFRbFEraE5qS2RwNTh3Um00MmI4SXVHUjRu?=
 =?utf-8?B?WlVsQlJGd2FubVI1eFlERXZpdkM1aVh4VTNoYmVLcExsYmprRWhVdEhXbWo3?=
 =?utf-8?B?TktmQTczVjhuaWdTSFNBTGdvOUdtVzFlMEV5Um5HNkh0YWZqL0ZWVjlrb2VO?=
 =?utf-8?B?SE1JL2RwZGZFOXNaZ2pKZ1ljQlNzb043WG5zMVJxZ1ZmUE5FTUlGNkhqY3dz?=
 =?utf-8?B?Uk1RaDY1L3RDcGdONHpnZ0pRY3JkK240UER6YXdyakJBV1VwekY3SEcrdmhZ?=
 =?utf-8?B?TDNROXFCbTNNR1lmVnhiNm96cFoyaEx4TVVuSmRJNVF1azVhMDh3bnFVR1Qy?=
 =?utf-8?Q?kXi9SBNO7O8js?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:SJ1PR11MB6129.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(366016)(376014)(1800799024); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?U0xCKzQrdFRGa0hxY0xoeHBFYmFQMC9kRlFsaU9MYjRWd25vTDNFMUpDVzRr?=
 =?utf-8?B?VzNpRWxaaHV4enViNk03NFA1SDZHR3JjbEVUWHdMLzVHeTFwVk9FZ1cvYlk2?=
 =?utf-8?B?cU5kOVUrQmtpbXFFL3dLYnVwc2ZRSE5wODhrM2YvdHBiTk1jZjlUOWhhYmhP?=
 =?utf-8?B?OTlvRlRVTXdoUXJaUkZ6WEtwb3Q5dENDbnZ4VngwNklSNjl0b0FEZ05xcStt?=
 =?utf-8?B?bDdjbHVuWWxiQzJzaDRjYnAwaGZFVHdwSGxLdjN5NDlnZ3o3WitjZG1sZmgw?=
 =?utf-8?B?UHBpOGlYa2E1R2owZE5hb21NV3cxN2NhWGI5amRLWkFadmczNlVEbG1TWktW?=
 =?utf-8?B?d0xWVnp2bEhSOXhGSURxNlVDbElwTjNDa25UUUxaOEM5Z1ZzL2pub3U2WHpB?=
 =?utf-8?B?VHJWMkVaV2xTMHlzbDBXOW42anlOL01vZXZQaVI5VEd0dVpEaGVYZXpWaWQ5?=
 =?utf-8?B?MTZaZEMrRjhUdnAwRUxuUXZYRzBXWGNMMXZIK1p5OHVYeG1uNVVJYnpRYU9E?=
 =?utf-8?B?TXJMWEZJVnJIY2hudWpZUXRzbXYrNS9SYUJySHU5VXNPNlR5dGRLSWsvREVN?=
 =?utf-8?B?RmNtTGpyZWNydWw0QWlOVzZRdmhFVC95ZEt3a202cGs4QmVqeE1XV1h4a25r?=
 =?utf-8?B?bi93ZzFFdVN5UXZqSUdWMjBVQ0w2cDVheGlYcVV2WHl1dkZRSTRMQi9jclF5?=
 =?utf-8?B?cnB3Y25kSFdFYUdCbEpscmphMWVxUUxZdUZORXVYRU41dUt4QXNVamt0K2FT?=
 =?utf-8?B?NGxVbDZndnZScHdDWVFEaExITmdiUXNOSGhOcHl6bUhoOWJRVzFVemxjTHhS?=
 =?utf-8?B?enZsaHhzSVJtN2Zld3VsOC9ZRTlzbHBiMkRoTWkxOWpaSXNZbTZoaG10MFBl?=
 =?utf-8?B?VVdRdlBPQWNRa21mQXFrUmJTaThtM1FHNmFOMVVtRWhNTUEwTWZYWEFqRkEw?=
 =?utf-8?B?cWE5YW1yK3RYdHJURGpsSHRxcGt2dzZwRW9OZnBVY0lhSDlWMUd3dzZoU3NN?=
 =?utf-8?B?QWh5NVcxNlliWEdJd0VZd25UMERUcGJSMGlYNDJPQ0ZSTjhJQ0N1M0xDZkk1?=
 =?utf-8?B?aGdSL05obDRYN0R0YXlvSWl0ZkcwMmN2YTAxY093UHJWVFhNaWJCbmFGWmY0?=
 =?utf-8?B?UFl2bFdMczB4RllZNHRmeXB4RmlCWTFVMHY4Mi9hVG50c09YZEFncUx5Mi9K?=
 =?utf-8?B?aG1pMGc0eno1bFRxQjcwT1pWRElod1RUT1g2clR3UFdnZ040M3h6ZnJ1czFq?=
 =?utf-8?B?L1NwdmY2UjNJbExnMkREL3lKUElIUC9pVlQraGpwS0lQeFIyeVpKcmw1VWcy?=
 =?utf-8?B?K1BhMzYrR2owTlAwRVl1cTBPN1dqVkc1bE1CNjVCZERTeUF3Z2ptdWtCL3Nv?=
 =?utf-8?B?eWN6OTRwNk1nVk9LbUJvNURWdjNhQ3lvWnhMTkNNQStqZDRURGVKejNKcHdF?=
 =?utf-8?B?aDBrNHY0TmswT2RWQ1dXalBQbDlpNk9xbGJ0TUtNNnFsOFRBTTJWVUpTV3pR?=
 =?utf-8?B?WXJSNDVnODBJemhyUUo3OGFnb2N3cGxNdEVMdGZocm0vcWgxUHBIbFVqMzB2?=
 =?utf-8?B?bDBrOUNkV0sxeDM2S2FtMnhraEFGNnVwNnBNQ2xwM2JsK01GemNaNjdiK3hi?=
 =?utf-8?B?Y1JYOG9XWjhBalZ0MGJmQ2cvdHptQWsyc3pvdFpHekwwa3ZxQUdwa0ZONE42?=
 =?utf-8?B?ZnNJczcyeXdsblhUOGk4TTltNVc4Ni9DWUpJd016ZkJoUFF4UWphVkdGcWVQ?=
 =?utf-8?B?TjdYNXR2cGRpMEJrYW45Q21rRk9JVVZHRFZ2UGJLNG1pcE9ndGdqdFFkRVg2?=
 =?utf-8?B?bzh1a090VmhJK1ZjNnRaR1l0aWl3MnhmaXlURmoyR3ZtbGZaN2tWdXZiQWg0?=
 =?utf-8?B?bEpBUG5mNEFMRlc2cnJ4QnNwR1JwL2I1M05ndTRXZUdTd3BBeVVlSXBIc21w?=
 =?utf-8?B?eW83K0VZMmQzY29tMDVoU1k5dUVCdDc1UWdhK2d2b0EyUkdXYURqdlNBOVJz?=
 =?utf-8?B?eWZjSnltNGp2ZVVMbnRZa3ZEVkVYZU1ZeVRURXFzZzNpbk5QMkdQNzMxZzRT?=
 =?utf-8?B?UG5SSjZNS2V0Q2hsZnJmM3FRd2RqdDN1b29rZk5OcStIblFJdWRmcUdqSGcy?=
 =?utf-8?B?QlRMckpxRVR5SUg3Rml3b25wT2FwVmVtcnI3WG1uS2V2VlJxYUZoRFpHMGhG?=
 =?utf-8?Q?kmdqA7ZroxB8QrvMPX2pgNE=3D?=
X-MS-Exchange-CrossTenant-Network-Message-Id: bc03cecb-d693-4f68-1b25-08ddcdf73d81
X-MS-Exchange-CrossTenant-AuthSource: SJ1PR11MB6129.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 28 Jul 2025 16:53:13.1961 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: w5gOfP02WZcvMiGvpt4+HJYKewoCh4d753FokqimO+2xTftIcH6/Jp8eyynw+dS5E1ZvTVZud1wumipZpbC9pREa2gRwhUGU9DAaY3vRAw8=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PH7PR11MB7099
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

Hello John,

Hope you are doing well. I am Chaitanya from the linux graphics team in 
Intel.

This mail is regarding a regression we are seeing in our CI runs[1] on
linux-next repository.

Since the version next-20250721 [2], we are seeing the following regression

`````````````````````````````````````````````````````````````````````````````````
<3>[   10.781401] INFO: trying to register non-static key.
<3>[   10.781411] The code is fine but needs lockdep annotation, or maybe
<3>[   10.781414] you didn't initialize this object before use?
<3>[   10.781416] turning off the locking correctness validator.
<4>[   10.781420] CPU: 1 UID: 0 PID: 745 Comm: rsyslogd Not tainted 
6.16.0-rc7-next-20250721-next-20250721-g979875200256+ #1 PREEMPT(voluntary)
<4>[   10.781422] Hardware name: Intel Corporation Arrow Lake Client 
Platform/ARL-H Lp5x T4 RVP, BIOS MTLPFWI1.R00.5204.D80.2505151204 05/15/2025
<4>[   10.781423] Call Trace:
<4>[   10.781424]  <TASK>
<4>[   10.781425]  dump_stack_lvl+0x91/0xf0
<4>[   10.781430]  dump_stack+0x10/0x20
<4>[   10.781431]  register_lock_class+0x491/0x4a0
<4>[   10.781434]  ? prepend_path+0x330/0x510
<4>[   10.781438]  ? prepend_path+0x8f/0x510
<4>[   10.781440]  __lock_acquire+0xa8/0x2650
<4>[   10.781444]  lock_acquire+0xc4/0x2e0
<4>[   10.781445]  ? update_file_ctx+0x1e/0x110
<4>[   10.781450]  _raw_spin_lock+0x2f/0x60
<4>[   10.781452]  ? update_file_ctx+0x1e/0x110
<4>[   10.781453]  update_file_ctx+0x1e/0x110
<4>[   10.781455]  aa_file_perm+0x68f/0x7f0
<4>[   10.781457]  common_file_perm+0x88/0x150
<4>[   10.781460]  apparmor_mmap_file+0x5f/0x80
<4>[   10.781462]  security_mmap_file+0x1b0/0x490
<4>[   10.781465]  vm_mmap_pgoff+0x5d/0x220
<4>[   10.781468]  ksys_mmap_pgoff+0x17a/0x250
<4>[   10.781471]  __x64_sys_mmap+0x33/0x70
<4>[   10.781474]  x64_sys_call+0x1eda/0x2680
<4>[   10.781477]  do_syscall_64+0x93/0xa20
<4>[   10.781480]  ? irqentry_exit+0x77/0xb0
<4>[   10.781482]  ? exc_page_fault+0xbd/0x2c0
<4>[   10.781484]  entry_SYSCALL_64_after_hwframe+0x76/0x7e
`````````````````````````````````````````````````````````````````````````````````
Details log can be found in [3].

After bisecting the tree, the following patch [4] seems to be the first 
"bad" commit

`````````````````````````````````````````````````````````````````````````````````````````````````````````
commit 88fec3526e84123997ecebd6bb6778eb4ce779b7

Author: John Johansen john.johansen@canonical.com

Date:   Thu Jun 19 22:11:52 2025 -0700


     apparmor: make sure unix socket labeling is correctly updated.
`````````````````````````````````````````````````````````````````````````````````````````````````````````

We also verified that if we revert the patch the issue is not seen.

Could you please check why the patch causes this regression and provide 
a fix if necessary?

Thank you.

Regards

Chaitanya

[1]
https://intel-gfx-ci.01.org/tree/linux-next/combined-alt.html?
[2] 
https://git.kernel.org/pub/scm/linux/kernel/git/next/linux-next.git/commit/?h=next-20250721
[3]
https://intel-gfx-ci.01.org/tree/linux-next/next-20250721/bat-arlh-2/boot0.txt
[4] 
https://git.kernel.org/pub/scm/linux/kernel/git/next/linux-next.git/commit/?h=next-20250721&id=88fec3526e84123997ecebd6bb6778eb4ce779b7
