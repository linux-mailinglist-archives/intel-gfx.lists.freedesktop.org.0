Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 499C0CF5F49
	for <lists+intel-gfx@lfdr.de>; Tue, 06 Jan 2026 00:17:41 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 5FCE810E0B4;
	Mon,  5 Jan 2026 23:17:39 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="DaMcwi9Q";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.18])
 by gabe.freedesktop.org (Postfix) with ESMTPS id EBD9910E050;
 Mon,  5 Jan 2026 23:17:36 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1767655057; x=1799191057;
 h=content-transfer-encoding:in-reply-to:references:subject:
 from:to:cc:date:message-id:mime-version;
 bh=hGTZ1YbQLcf2Bqpz5X/ev8ZvXBhIDvCNwHrzlLldnlw=;
 b=DaMcwi9QROoy83KL8qtoPeJZP0tiMWRuVsA7ZANfAPM5yCjlJ0au58ZX
 n9zZcFQvzkKT+uT+vMRQR4WjlrGP1pjJG9YizfyeIhqznW2oPQ0EdhQ1v
 gKy8NcyxUyNxCB5m6UZrsDWs2U2v1qkNl2gBdJ3mDAlzLyFNXlBjuI59G
 QNApI8E5Y5iwm//3Cow92KKzpJVjhWWrSFshCw3iV6b6TviJx/Dz+3kR7
 hGbqSz+IRAXOcX3hBcvPf2lWLMUWKMx9Ipgwl89UL0XWHhL3VI9IsPXjy
 sCd1kvpoQkYFRYXpK+gkxtwQJAI22zCn4wPAS10dpy1jHg/dLOl8FKlbz g==;
X-CSE-ConnectionGUID: 4nWfjjVQROexb6CfOMOaag==
X-CSE-MsgGUID: FIhzvlZQQpWmJrjM1LUHCQ==
X-IronPort-AV: E=McAfee;i="6800,10657,11662"; a="69074113"
X-IronPort-AV: E=Sophos;i="6.21,204,1763452800"; d="scan'208";a="69074113"
Received: from fmviesa009.fm.intel.com ([10.60.135.149])
 by orvoesa110.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 05 Jan 2026 15:17:37 -0800
X-CSE-ConnectionGUID: KURhPfmiTuydVwH8BXUYTA==
X-CSE-MsgGUID: OGdeenbZRi+XVFczyBa46w==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.21,204,1763452800"; d="scan'208";a="202971642"
Received: from orsmsx902.amr.corp.intel.com ([10.22.229.24])
 by fmviesa009.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 05 Jan 2026 15:17:36 -0800
Received: from ORSMSX903.amr.corp.intel.com (10.22.229.25) by
 ORSMSX902.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.29; Mon, 5 Jan 2026 15:17:35 -0800
Received: from ORSEDG901.ED.cps.intel.com (10.7.248.11) by
 ORSMSX903.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.29 via Frontend Transport; Mon, 5 Jan 2026 15:17:35 -0800
Received: from BL0PR03CU003.outbound.protection.outlook.com (52.101.53.16) by
 edgegateway.intel.com (134.134.137.111) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.29; Mon, 5 Jan 2026 15:17:34 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=ezmCC8DfeMwszczuMJeaXr70WDs9wYhLRS1bwmWp7E9yclfJqj942Nvs82qrkhE6E6YMCtYrGP9KxY80kRgt6RCMPhDrUp+UYFhlTTCRPRFklQ+fSG/jqd+b8WNCtb24t5kSe3lHZYqfxY+TO0XWjudzxT7AZ1e56U6+aGRSQmPXnyAttfZrg1NJQ+mMfbRrf/WJfVOY9RBVXUC2aCD60seTw12+Wvla7Gd5kFhHwREVPHAU6lA9F2/ZKIqxQZYTeDlPcpt90YPDe1nOQZgyAP0yV3mZiYNZMdp4xzkPan44b5aszustIuyNq5JBtSiXYxfpHTwBGiYhRSrqrrBDOw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=l4I9w2mnNYRhQ/gTQZ/sKYglYbwb0KVyGHZFTSDud6g=;
 b=ORMt5nw6wFFcDjPrjQ9Zx5c8mt7xSAXp1M57hBC5JvtbPR8cxxEzAztR7y3ddWXVCKUXSVSQxNt3aaU2PH7RaJ3aFlMEsQ/r1pnBKC4qr9iG3G+neQ2RAOJ80fBkbM0Dbi3NPlpEmJqzn4liJqtulQO3kQYp3Dtzhl29Y9kV5aGVu3LV9oxmxowKQdacR0zfnEpdSkhwK6OhTZmIMplzmSZJUgBfxEQY38Flf6Z9kJX1+Pxfvm0ZcycSGdEaW9vfVix8qWcDPZWTScIvE8a89LP2AkXGC5Vo5GwKMWbrgCkwcVrvlo1p+ABrh/y+kaVN+4LbcuXMXZ1i/itFrzx0Rg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from PH8PR11MB8287.namprd11.prod.outlook.com (2603:10b6:510:1c7::14)
 by DM4PR11MB6477.namprd11.prod.outlook.com (2603:10b6:8:88::17) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9478.4; Mon, 5 Jan
 2026 23:17:20 +0000
Received: from PH8PR11MB8287.namprd11.prod.outlook.com
 ([fe80::7e8b:2e5:8ce4:2350]) by PH8PR11MB8287.namprd11.prod.outlook.com
 ([fe80::7e8b:2e5:8ce4:2350%3]) with mapi id 15.20.9478.004; Mon, 5 Jan 2026
 23:17:15 +0000
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: quoted-printable
In-Reply-To: <20251222-display-wa-13012396614-timing-of-mdclk-source-selection-v1-0-a2f7e9447f7a@intel.com>
References: <20251222-display-wa-13012396614-timing-of-mdclk-source-selection-v1-0-a2f7e9447f7a@intel.com>
Subject: Re: [PATCH 0/2] Implement Wa_13012396614 for Xe3_LPD
From: Gustavo Sousa <gustavo.sousa@intel.com>
To: <intel-gfx@lists.freedesktop.org>, <intel-xe@lists.freedesktop.org>
CC: Matt Roper <matthew.d.roper@intel.com>, Dnyaneshwar Bhadane
 <dnyaneshwar.bhadane@intel.com>
Date: Mon, 5 Jan 2026 20:17:11 -0300
Message-ID: <176765503156.9480.6066197288820519380@intel.com>
User-Agent: alot/0.12.dev22+g972188619
X-ClientProxiedBy: SJ0PR13CA0135.namprd13.prod.outlook.com
 (2603:10b6:a03:2c6::20) To PH8PR11MB8287.namprd11.prod.outlook.com
 (2603:10b6:510:1c7::14)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: PH8PR11MB8287:EE_|DM4PR11MB6477:EE_
X-MS-Office365-Filtering-Correlation-Id: 8fd1a867-5d02-4107-ba05-08de4cb09089
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|376014|1800799024|366016;
X-Microsoft-Antispam-Message-Info: =?utf-8?B?NE1iQWc0bkxGcFFKTGZDSXpUTHl6VitjTUlBZlh5b3RqSTMxUHI3Q29xaWRL?=
 =?utf-8?B?VUt3Y3Frb0lUQ3pybzhMUVVYcnlBOHB0bGdYYThuQWJqMmNCSEc3NGk0enVM?=
 =?utf-8?B?c0d2eWRkRmxOaVV6bGVCODZMSFgreVVmV2MyK2dOT2FSaEZqM0p1Q245eTFT?=
 =?utf-8?B?WFlqUkFsOVpwSGF5U3dyYXJ0ang0Z0EwcDVZKzcyNlJueVgzT1R3dlZBS0dO?=
 =?utf-8?B?OEt2V2JXZTJuWHV2dDZFWXNtcXM4Y2RDcmlNdWZpWXpkT0dvUmJLZEM4ZWlk?=
 =?utf-8?B?L0NSUGp4VnJVRkdzcXMyekVFQ0Y2VXNMSDlVRWlienExMHZHOC9aRTQwWkEy?=
 =?utf-8?B?ZmJXWTgrYkcybUgxL3dxdlI1allmc3pYdFVSQ1RlemFnd3hIZlJyRVBtMnJq?=
 =?utf-8?B?eVlJdWlISDdXSk9yQlRtODY5Q29ZblNwYjRENW5FbVlEbmRvMXZCSUtxOTZS?=
 =?utf-8?B?ZmVoeUkyQkxhTEVSaXRUMGZiRDV2a3VaMXZnajBOU092WTRoYmZubHhpblM0?=
 =?utf-8?B?cHVLL2xGcWpHVmpZdG1xOXRGVUNqV0pFSms4MGZadnEwTEQxdXVGRnFiZXQy?=
 =?utf-8?B?aTBQaXJnNUJYakdyZHk0MDJ6ekpwUENMWFAzN1RESW9ZbUZqWTVIZWFTUjZm?=
 =?utf-8?B?VjIzWm1QUitpc2VVSXVwTWxQdkpUNERsZXU4MlBuRXI1OGVDa3I3aXdrMUpu?=
 =?utf-8?B?emg2b3M4WWNXVFJpcS9WbFl2dnFVZ010R3VpUDladFp1bzhSdHkyNFBrUEhF?=
 =?utf-8?B?VU1qZnRKTDJ4Zk1rVVJTUUZ1NmNza1FzeVZEVjVKRUltUFE4dVNxYmpSdWVF?=
 =?utf-8?B?RDJZQUJMTlNFRlFIMFdzVDhWbWNRbTY0dkR4TGMyM2R5UTZmK1ZpWG5MRXQ2?=
 =?utf-8?B?bXphQko5eVJCYloyZUh2UW15anlOaXhkTFBLK2grcHBYUlVueE42Rk1McUFr?=
 =?utf-8?B?Qzg4Q1VwZTU0MkVlSFZFWUY2OGNESTBleTZoNkJ5TEdXbHkxQXkycFFUbTJZ?=
 =?utf-8?B?dXBWYi83S3RFdjhFRHFPUGZxRTQ1d1lCVVJOcGpPRFlSa1hldW5kbzJmblY4?=
 =?utf-8?B?R2g0M3lSbmM0ZjJVd0lydHg3djczQ0dCU05ucklvRHlMdVRMM2V0akJsZFJ2?=
 =?utf-8?B?WGp4WlpuMFYvNWtGVE5ZU2NzeWZzSTV6Q3dnb2NOc3psNzdmRThGOEVqMFV0?=
 =?utf-8?B?UEpNcXk5eUFZYVpwMU1yTTRMN0RxWmJQUGFESjZNQ09RenhsMEJqNFgvR2Nr?=
 =?utf-8?B?ajJIOTgwaWl1REVTa1o5YVVnQ0VnT1JZR01VaFBCQVUrOXI5MUtwbTdRT0Ev?=
 =?utf-8?B?S0NYK2pRRWhCcDA5Zm15SjBIakoyUGlPbTBKanZ0M3JmRngwTFg2d2xxWFB5?=
 =?utf-8?B?NDdQM1FycUxPVDMzcHlnUWNlTkp5VkViaERVK09LMldIWWRDZDBlOGVDOWlp?=
 =?utf-8?B?UUM0eUxOR1FzVEE0Wkk3QzI5cEVISmVod2YxenNJVnNWUDlOa1FQNmhkQXhr?=
 =?utf-8?B?Zkx6bm1GTVZZZEZrd1FxTytreTF4T2lFME15UHY2QU5mTDlvL2JidFdpMXZV?=
 =?utf-8?B?amh0dmNwQ1oweWRzeTM5cjZLZlhUb25TVFBCcWNpa3RHamUvb2x4S0RUQ1Bt?=
 =?utf-8?B?LzBnZWJhYTZ1S1pRd2w1TkFzSy9DU2tjQjNpOVZtWW9GYlFWSHVLMERhSlFT?=
 =?utf-8?B?MjdJdTg4WTNBWmY1SDNjZ1JSdFRQNkUrNUl2alRrQ1hyeWRlT3Y1RXJZQ0dm?=
 =?utf-8?B?ZXM3K3R6clVLNmY4SGtSdkFjQm1mZmFndVZWNjhNT29Gb2tmemRkNEYreElX?=
 =?utf-8?B?dEpMaHBqRUdvYndpOGdOekM0SWJjcEdwOWprQ0dsYjRFUVAwaEZtRkZLbTBq?=
 =?utf-8?B?TnFZMHpTM09FRGJNV2F2Q0J3UmJHck90c0dhVkk5WUdQRVY0RXhVdnJrVFhv?=
 =?utf-8?Q?EsbaFEVcCffAlEYrWvdcO18HsFnKKW5w?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:PH8PR11MB8287.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(376014)(1800799024)(366016); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?VkxMNUVXc3JwRmloZGROWnFhdE9RTVZNaWdjb1BQbzBZNHplREEveXk2dXpU?=
 =?utf-8?B?T2JZYkJPM0NMMEdIaldKVHkrbGl6blVIazJXOTNKQ0lhZnM0TWFWUFk0dERp?=
 =?utf-8?B?MEpTOGx2Y2gwNkQ3enJlTk1kM09rL3orWEJHbk5VanN4U29WK29Kam9zQThN?=
 =?utf-8?B?aEZwc0gxK1Y4SjBGbTVjS3JzNzNjUnFvbWgwUUY4NnlEOEJVN1ZrKzJwOG0r?=
 =?utf-8?B?RFNxWVJiUXRkZWhHVUFxS2NnQ0pCZGhTUTlYMzVrRjMrNEhWem5aZEQrODZG?=
 =?utf-8?B?Z09kbGI4K1ovUWx1cmV2cUZSSGxjTFlIYVRzaXF5UXM3Q0NvR2N0RStwUXA5?=
 =?utf-8?B?M29hdWdEZi8rV0t1QVZ5NjBWOW9NN2hCc3dRWE9WNXV5eHF4U1h2YUpnQmhS?=
 =?utf-8?B?ejRrc2VDa0txanFTVVBvWXdHZEZ2dmExUWRodGV5bjFibE1wLzA0U0x6bVRM?=
 =?utf-8?B?SmlmeXN1QUJUNGR6VmZia3BOWjhFaWVRS0hidUEzSjZxQWlqd2FDTEhDeFVi?=
 =?utf-8?B?bktWOS9pcUxjWHlvN3FuYU5aTkVZbUU2SENVOFFMZ1JFRUZHcit6OTFNeWoz?=
 =?utf-8?B?UHVQODFPOGFFa25DeEhtdGV1KzdzNHNaYlJhMnVyN1E5YW1pZXRFd1gzUk1H?=
 =?utf-8?B?cmNOejJaSEVWUjFRT3E4aURFUmdWVWxDQWhMaVdVSVA4dW50OTdEczJheTgy?=
 =?utf-8?B?am9PVGZnZmZZeHlTMUw4VHFSbm5mMEdOZEVzK2RWNWdMaDBLTDdLcmJxZ0ZJ?=
 =?utf-8?B?bDVLNHRsUm5BRkppdk9hR05LcXpQVXV1OTVyRllEQkN4em9lUkxmcFBnZ2VS?=
 =?utf-8?B?VjdDTDh2TWo3YUZ0eXJ1WkJ2VWFWZGlmVC8vL0lPZ3Y1dXlYMHMvYjRMcmdM?=
 =?utf-8?B?ajVXQmtjSEszOXF2Tm1hVDNyejl5eHBWS3REUzVSTS94eHhnTlM2SlRTRjRB?=
 =?utf-8?B?Um1YdWc5bVhteWZaK2pRUnJOU0dGWjJNVyt3dUorK3RrVXpKQ2ZhWThCeDNo?=
 =?utf-8?B?U09Gb08wdEV5ODY1SlQvNVJiNWF2b09Fem5yUFlnbjJ0S0JBY2p1MVVkWFpO?=
 =?utf-8?B?bXhENStMVzBUSmtSN0dIZStjUmVUUDFDbDJKOFh3OG1ha01hUHVkSm5TajZ2?=
 =?utf-8?B?TEtjL3NidWVMb0llQWdlMVVTN3prQTYrUUVxNVlvbEI3VUo5UDhxaDExOTZn?=
 =?utf-8?B?VU1zNDVEc2xnelErZ3Mwdmw3Y2lkNjZMRzRaU2twdWhNVEpnTGNnMFVyUGUx?=
 =?utf-8?B?UitMQmQ1T1cxUGFONkpsb2k1WEZEUnlpN2YxOVBGWGlqeG54enNobVoveEhI?=
 =?utf-8?B?c0c5NWhaMlZWSzdLS3hQd2UzOG5GN2p6WTRhTkhoQUxsUDFZZ1huSGlDYlN1?=
 =?utf-8?B?UEhvdkZuQlNGTlpaWHFaWUpYVFZ1SU5hNjQ5cVRSSFpoTFVkaDJwRXBaSzJa?=
 =?utf-8?B?elIyQVBsRG1jNGsreWY4MTZ2STdTWG0zR2RHVzh0Yi9FTGhIeU44WUJwNHdr?=
 =?utf-8?B?Ty9EZHdKTXBRdXJYbnBjOVUzQ0RGaG1XaEVlS25BZjh3LzZ4ZUhwbVEySWRj?=
 =?utf-8?B?YmErMmVCSGh3MU1XQnhLWkd5QnVwa1piOVFsT2NQazZmbE5ySSszWGY2NjBh?=
 =?utf-8?B?elY4MGM5eld3N2hoSFRuVHRXeUpjQldYcGZWcFlUcE80cURiVDdnOHlXamli?=
 =?utf-8?B?RWY1azNaWjNYKzFGVEpKdGRrYkVaOERMZG9IbzhkaDdYWkJUZ0FvSWtwa1lU?=
 =?utf-8?B?aHppZlo4VXY4OGRFVFFQQ2hYZE5HSnN3WU1Uc2ZhWElNUFIraU84cldCUmpl?=
 =?utf-8?B?OU11S0l5RGNDT3ZobFhhN0FKaTVPaWR6R1lVL21LQWVNT2psSytuMDNvMk5p?=
 =?utf-8?B?RnRsSEUwbGowRkVBcWtCZjhDcHlTU0wxTFR2bjZpbHpyd0wwREpKMEU5OFR2?=
 =?utf-8?B?cVNFNFdUaFVCZCtLVUEvS2FzTE1DbVVaQjBiM3JkMWdPQXNmaHJxZWQxSEpE?=
 =?utf-8?B?QWkrS1RGcDY1VnhJd050NzFEY080RkJWMlp3QWdPYWo2MXdlVHlDMDAxdmFl?=
 =?utf-8?B?YlQxMTE2TGdPY1pWeC9VZnZGaHV6ZnFuL05lWVY1MWl4UmZuSjJhU1lOQ05P?=
 =?utf-8?B?Q2hEZzhGZnJvZnRadWpORk9obEpicVpmZUNsK2ZwK0FKWm5QZUdRNkYxcU9t?=
 =?utf-8?B?cG9PU21CZlI5U0RVRTlRUERyWEhEYU9lN3BXOWtDZUV0ZUF6TW5JMFZjTjl1?=
 =?utf-8?B?elNmWFliVWFFbFkvWlZ1K3hGY0lTSmRqTWd5bkUrb0tOU08vQnZEN09UNm9t?=
 =?utf-8?B?NnZMT2I4aS9lcld4SnlSTjFZZ0dxMmZtQmJnZTMySVFyRDdjU3VvZz09?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 8fd1a867-5d02-4107-ba05-08de4cb09089
X-MS-Exchange-CrossTenant-AuthSource: PH8PR11MB8287.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 05 Jan 2026 23:17:15.7293 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: DhKV3kje0ma9VEW+hjvt5ykHFvovXLpETXjvrdR7d0M5WZl60FztDHLXGDUW318RRXVl2H0hQ3BJNAc82WFkgQ==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DM4PR11MB6477
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

Quoting Gustavo Sousa (2025-12-22 19:18:46-03:00)
>This series implements Wa_13012396614 for Xe3_LPD. The first patch is a
>non-function refactor to keep workaround enumeration sorted by lineage
>number; and the second patch contains the workaround implementation.
>
>Signed-off-by: Gustavo Sousa <gustavo.sousa@intel.com>
>---
>Gustavo Sousa (2):
>      drm/i915/display_wa: Keep enum intel_display_wa sorted
>      drm/i915/cdclk: Implement Wa_13012396614

Pushed to drm-intel-next. Thanks Matt and DN for the reviews!

--
Gustavo Sousa

>
> drivers/gpu/drm/i915/display/intel_cdclk.c      | 31 ++++++++++++++++++++=
++---
> drivers/gpu/drm/i915/display/intel_display_wa.c | 14 ++++++-----
> drivers/gpu/drm/i915/display/intel_display_wa.h | 12 +++++++---
> 3 files changed, 45 insertions(+), 12 deletions(-)
>---
>base-commit: f2a0e58c77845e1a5cb6c549dc02b2670042e588
>change-id: 20251222-display-wa-13012396614-timing-of-mdclk-source-selectio=
n-ea61772324bc
>
>Best regards,
>-- =20
>Gustavo Sousa <gustavo.sousa@intel.com>
>
