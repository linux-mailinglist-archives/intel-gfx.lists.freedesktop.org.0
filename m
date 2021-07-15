Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 1B28D3C95BF
	for <lists+intel-gfx@lfdr.de>; Thu, 15 Jul 2021 03:51:57 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 8AC546E517;
	Thu, 15 Jul 2021 01:51:50 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
 by gabe.freedesktop.org (Postfix) with ESMTPS id EAD876E43D;
 Thu, 15 Jul 2021 01:51:48 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6200,9189,10045"; a="197641512"
X-IronPort-AV: E=Sophos;i="5.84,240,1620716400"; d="scan'208";a="197641512"
Received: from fmsmga003.fm.intel.com ([10.253.24.29])
 by orsmga101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 14 Jul 2021 18:51:46 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.84,240,1620716400"; d="scan'208";a="494840205"
Received: from orsmsx604.amr.corp.intel.com ([10.22.229.17])
 by FMSMGA003.fm.intel.com with ESMTP; 14 Jul 2021 18:51:45 -0700
Received: from orsmsx609.amr.corp.intel.com (10.22.229.22) by
 ORSMSX604.amr.corp.intel.com (10.22.229.17) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2242.10; Wed, 14 Jul 2021 18:51:45 -0700
Received: from orsmsx603.amr.corp.intel.com (10.22.229.16) by
 ORSMSX609.amr.corp.intel.com (10.22.229.22) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2242.10; Wed, 14 Jul 2021 18:51:44 -0700
Received: from ORSEDG601.ED.cps.intel.com (10.7.248.6) by
 orsmsx603.amr.corp.intel.com (10.22.229.16) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2242.10 via Frontend Transport; Wed, 14 Jul 2021 18:51:44 -0700
Received: from NAM12-BN8-obe.outbound.protection.outlook.com (104.47.55.169)
 by edgegateway.intel.com (134.134.137.102) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2242.10; Wed, 14 Jul 2021 18:51:44 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=nOxuSJTMGdoeVu61BeCSe85Szz+aY0B5mtP7W/aLNYyPUXnIWVgqFffS7TXSnqQrfEnc1+fWWYNQ4132imHYoaQ1OyOctBFhm9njnINyKxCRvoPIdVwmg1HxDIUZVMLqrxn/wYbqD7tQuHYZygMXRVCtwUlfmlOE1FDdeTNhzelv+Q08WSiO8B4jskciQqUjv+6KbfK1beDC58F4xMFFH1gd8E+RCh+Aram4lQpl/gLD+p+tvPnoE46Ba/SWE9ZM49XQf5z0+6AoQl4saRHzVvpSRz8eUg4jTcgXcMcC6hzzNb+jSV+VrGiz9DgA6ulqR/MU4x6NhwFFri7AeLiCLA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=y+mDXpBkK6TTb7yAzOf7j78HwaEQ4Uzaicpmmc8RzCU=;
 b=d7QCpf+o8dX57bFZbOoWYLeCZQQp8M8pa2J+B/C0BSkteove/n9a4A2qU1dgj/wawtvncKWTKxECfn9fac5uWTK3Ln+gjtoLIt8UykIH7TEPppHWEP3vbTTDgb0yvDNiVfBZfo9r/G/Z2wr8iFsxd66iQYn3Blu4V5Y2cwgz/1Lwk/qxIzbSSy3r4AcC6UY+nPzv5pcBqKL6nqQtbYO90qNSkRN2uYDp56w2qa1oQcNU4cVWru2pgk3UP2o5YdTAB5KwiL/a1ZTORqhhWVeCFF7R2vnZFdUyVktYbisIWc1cfdUNj1Oimp8CbcL/ZLux/F3hHTX/rfnVbgQu8lOUXA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=intel.onmicrosoft.com; 
 s=selector2-intel-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=y+mDXpBkK6TTb7yAzOf7j78HwaEQ4Uzaicpmmc8RzCU=;
 b=PoMRCoGRb5kWFhfO0g21qeDCHLssTAizATexCCpI0uzVTvYY6nv1r9mZdFqNuE7tcylnrb9mRYXsHYvtnGRZmvIiBX+oTIjLJ4AQKTrIqgNE1rjPWYBT5MMs5D+y/W5pvXfaAseoOwRZXY9LA3miV4zBUds2oO1C5oHqNXEwYeg=
Authentication-Results: intel.com; dkim=none (message not signed)
 header.d=none;intel.com; dmarc=none action=none header.from=intel.com;
Received: from DM4PR11MB5488.namprd11.prod.outlook.com (2603:10b6:5:39d::5) by
 DM4PR11MB5359.namprd11.prod.outlook.com (2603:10b6:5:396::21) with
 Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.4331.21; Thu, 15 Jul 2021 01:51:43 +0000
Received: from DM4PR11MB5488.namprd11.prod.outlook.com
 ([fe80::4017:e7ce:ef66:48d7]) by DM4PR11MB5488.namprd11.prod.outlook.com
 ([fe80::4017:e7ce:ef66:48d7%9]) with mapi id 15.20.4331.022; Thu, 15 Jul 2021
 01:51:43 +0000
To: Matthew Brost <matthew.brost@intel.com>,
 <intel-gfx@lists.freedesktop.org>, <dri-devel@lists.freedesktop.org>
References: <20210624070516.21893-1-matthew.brost@intel.com>
 <20210624070516.21893-20-matthew.brost@intel.com>
From: Daniele Ceraolo Spurio <daniele.ceraolospurio@intel.com>
Message-ID: <0c7a3723-ff70-3c05-326c-1af13fa1bc57@intel.com>
Date: Wed, 14 Jul 2021 18:51:39 -0700
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:78.0) Gecko/20100101
 Firefox/78.0 Thunderbird/78.11.0
In-Reply-To: <20210624070516.21893-20-matthew.brost@intel.com>
Content-Language: en-US
X-ClientProxiedBy: CO2PR18CA0052.namprd18.prod.outlook.com
 (2603:10b6:104:2::20) To DM4PR11MB5488.namprd11.prod.outlook.com
 (2603:10b6:5:39d::5)
MIME-Version: 1.0
X-MS-Exchange-MessageSentRepresentingType: 1
Received: from [192.168.1.65] (99.72.232.53) by
 CO2PR18CA0052.namprd18.prod.outlook.com (2603:10b6:104:2::20) with Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.4331.21 via Frontend Transport; Thu, 15 Jul 2021 01:51:42 +0000
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: b69a33ba-d99f-403c-bd60-08d947331884
X-MS-TrafficTypeDiagnostic: DM4PR11MB5359:
X-LD-Processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
X-MS-Exchange-Transport-Forked: True
X-Microsoft-Antispam-PRVS: <DM4PR11MB5359DD4EF01E74A7053FCD89F4129@DM4PR11MB5359.namprd11.prod.outlook.com>
X-MS-Oob-TLC-OOBClassifiers: OLM:9508;
X-MS-Exchange-SenderADCheck: 1
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: 5ArQdasssvepJM6vi74mQ4kTeeyyshHT1qn90L6uJ+tKop3MhPwSRQgxGClbWA95e4QIZIP5yxU6pD7A6heIs63r9RAoc8gwV2MNccY9bX6evOiVwsAuBbCM7cfqjiOEwc8fBIGN0tSy2DEYyfxJplxuhHk5DBXnLxw2IX98MELslM/FIbTcicrHEicalI1pcsVh/qRjVhuqMSNwkp0HQhxyI/9qji8YcitsCec/8TAYUlv2YvoDxmTLBafgM4BP9HxC2kd7gy4CCXyQ6hKZZ4Yc1tpvXy/U7iLI/P78Kw1sKNerR5KMbgjirLtrBwyosB4tvFSSwbwS1RTliwlq4WvzHgXosYcyEEPdf6gHXjpbZYRjkIVBVXHxOpsoVVfd8Nvsi299Um8RApV6IBB+ogZ6O+08kkgVA3Vevq40ZzCYUw0kk7RtvgGQP3lmCtWi2Ln5gUmAydtpbNe741859L85CBjecfp37zEqkOfjo/XBSPD4wx8Aaox9sR8TT+8wcQ4qApVe61ZPl/WzV1ioV8ci64otaAqUjIzP0o2BAZm9GHf/IDECN5jrdSADcbf4vPwixELEyL692GKFtb6jro4qa4S9iFYTfZGPWPjfmFwk4GJ/3aqH24r/v00Ca62Ruq9Y/Iu6BThIwEtSE3JyhQM1oAOF0HYKX+16kX8vIpOn5mBc/lVcua5BEG98Vq5PM01mHF7Lw73CUkMZgFTvoHYImAA64nMvaXw5t6zNGCM=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM4PR11MB5488.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(4636009)(39860400002)(346002)(396003)(136003)(376002)(366004)(66556008)(6486002)(8676002)(26005)(2616005)(956004)(86362001)(6666004)(66946007)(4326008)(31696002)(66476007)(450100002)(478600001)(38100700002)(5660300002)(186003)(83380400001)(316002)(8936002)(36756003)(53546011)(2906002)(107886003)(31686004)(16576012)(45980500001)(43740500002);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?QXQ0VC9vcjNiM3dZdXZ6c3FmemxQY3ZpUVJoYlBkNXZPczA5dFRRd2hWU2Mv?=
 =?utf-8?B?ald4c0diY0FwcWFvRWtUV0lqZTkyOGFXZXhoWUhnTDd6WGYzeVFhV253aGJ3?=
 =?utf-8?B?K09sQkpYd0o5UlJodGEvVEY5MjlpbkYwMW9VL3l1NkMzU3hUUHFpclFzVkZE?=
 =?utf-8?B?b29iK1hIZUVUSk5KSjhoUUJ4NGYrdWg1Z0NhS1lYN0RpUWEwSFRpVzVBM1h2?=
 =?utf-8?B?VFlxU29TWlFjMWtFWFB3ak5UelJPWlFIQ0V1VW1BOXNYMHJSZldINUxjdVhr?=
 =?utf-8?B?Zi9lb0Fnd05ydWFrVWoxeU9FWDZEcnVqZVoySG9halVFUEZQNXR1cmZOaTk0?=
 =?utf-8?B?L0NvNWN2cnRhYUxEVWp2R2NtUit2VEhwZy8rMVI3T2pmam9yZGdXUGVsVnlh?=
 =?utf-8?B?UkdjKzBiNThwR2R0REpVdXo1bGwzMkdiRnhrYzd1eWNrR010bkNWV2luMmkv?=
 =?utf-8?B?OW9VOE01c1N2YWY5dlk0Z1UvR0ovOWlCY21mcXMxSWRlbXpLamh4VHJpN2Nw?=
 =?utf-8?B?S2hvWEIvOHFQT3IxQS90SVd5VlFaTzVVNkY1MmJwVEVCUDR3VEsrNVJpWk1O?=
 =?utf-8?B?RmxMQkh1ZjFLUHFZZjNGeU1EZEU1cjFYWnRsY0RNQXZrZnJyOUREczFTMTlT?=
 =?utf-8?B?dnFvZitWUEI0OTNVcWg3Ri8xbXZVSzZQNS9aNy9wV1lQZjBkOXBEcElWSGw4?=
 =?utf-8?B?UXdseHE1Q0Q3U0xRMktZellTTWdIWlJsWjZCNllHVDQzQzJLQVNEN0dpZjNr?=
 =?utf-8?B?ODhmUjZvRUZBOStTT2h4Y1lNWllQbDhva2lSWUZBdG9BNVg2N25CaUJkVG5T?=
 =?utf-8?B?K0dZS1djc3hOSFJCZmxiblVoNk9WTlB6MnQ5SzZRWlN6RHRLYVR6enhoeG1Q?=
 =?utf-8?B?SUlzUzkyOXJWNXJ5a0UvbVhaVmJrR0lQNHVTNDJLbFJZYk5YWndRUENDV0xy?=
 =?utf-8?B?UlJmNWt1Q0hGRmN5VHVVbG1nVzBPd3BvclFrRmUrRG9jT2RsMVBHRnJkeUVM?=
 =?utf-8?B?RXU5cjZaU3JTa3hGS1B4bWpwaktaS0ZnNk8zdFBWOUt5RHpUUDNaTEZic1hv?=
 =?utf-8?B?YnhHdUpuZUdiNStUUkNGQklXMlliZFhSdGlkeCtUSmdFUHIxUldXV1pkTXdT?=
 =?utf-8?B?bG5JbmJyZUFROENtV3lhUDFxNXJPWWM2Zm5iczVaaTZWRDNVMDVmMlNENkoy?=
 =?utf-8?B?K2d5SURFV3FJOFRHTUErN2QwcW96NTVVa1EvZVZnR1JLeTNnVmEzVlN1NzBx?=
 =?utf-8?B?N2NtNzFKeDdTWk1xQ2JXeWlkUUR3TlgyRTFHVkhBRGR4NEEyOGhIcGIxZzNZ?=
 =?utf-8?B?bm12WHpNZGZ4UmwvOUNMdEpXNnV5K0R1TGNucHRxekNtWVk5cGg3V2ZEUGtK?=
 =?utf-8?B?QUtQK1I2SG05TndYT2hmR3pkd21EU1NRUVVCcnp1SVY0ZWdCTEFHWXlvbjhr?=
 =?utf-8?B?bEM1c056bTREN2cxRmdQN08yR21wSExjVlJmVGdkL1FwUm9UYWNybjRqeDZT?=
 =?utf-8?B?MEV3WnlkMW9GRDMrWU80VWNGUmlVT2hlVnRXcy81TitCZFZQUGp2WkVnb2FP?=
 =?utf-8?B?cUtkdnBxcmVWVFBQc2JKcTdoOG0zcWUxVWVjNC93Mk1tRnhsNVFKT1NIL1F3?=
 =?utf-8?B?V0gxRDVrcXcrM0RySmhwdHcrYjFMSWRVMDV5akV3UnI5THhQaks2d2ZIWGRn?=
 =?utf-8?B?bWVxUGR2a2hYc203S0d6YThKYkp4blFrUktJeklNRnk5dDBsVWNqNGZMdVJo?=
 =?utf-8?Q?BGp9pfiGXn9YLLze/9idGcu4HJuKM38XLsQzc+F?=
X-MS-Exchange-CrossTenant-Network-Message-Id: b69a33ba-d99f-403c-bd60-08d947331884
X-MS-Exchange-CrossTenant-AuthSource: DM4PR11MB5488.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 15 Jul 2021 01:51:43.1385 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: Mbf2DqjZMTeO+Cl1yqaPWBEsmgkaCQQLZVoLlsBMWEGxHL4e/Xgv3vVByize1XXAPBHRs/d7K5lNseDDWCTb1kq4MBmbh34m5VNk6jcDsWc=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DM4PR11MB5359
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] [PATCH 19/47] drm/i915/guc: Ensure request ordering
 via completion fences
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
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

CgpPbiA2LzI0LzIwMjEgMTI6MDQgQU0sIE1hdHRoZXcgQnJvc3Qgd3JvdGU6Cj4gSWYgdHdvIHJl
cXVlc3RzIGFyZSBvbiB0aGUgc2FtZSByaW5nLCB0aGV5IGFyZSBleHBsaWNpdGx5IG9yZGVyZWQg
YnkgdGhlCj4gSFcuIFNvLCBhIHN1Ym1pc3Npb24gZmVuY2UgaXMgc3VmZmljaWVudCB0byBlbnN1
cmUgb3JkZXJpbmcgd2hlbiB1c2luZwo+IHRoZSBuZXcgR3VDIHN1Ym1pc3Npb24gaW50ZXJmYWNl
LiBDb252ZXJzZWx5LCBpZiB0d28gcmVxdWVzdHMgc2hhcmUgYQo+IHRpbWVsaW5lIGFuZCBhcmUg
b24gdGhlIHNhbWUgcGh5c2ljYWwgZW5naW5lIGJ1dCBkaWZmZXJlbnQgY29udGV4dCB0aGlzCj4g
ZG9lc24ndCBlbnN1cmUgb3JkZXJpbmcgb24gdGhlIG5ldyBHdUMgc3VibWlzc2lvbiBpbnRlcmZh
Y2UuIFNvLCBhCj4gY29tcGxldGlvbiBmZW5jZSBuZWVkcyB0byBiZSB1c2VkIHRvIGVuc3VyZSBv
cmRlcmluZy4KPgo+IFNpZ25lZC1vZmYtYnk6IEpvaG4gSGFycmlzb24gPEpvaG4uQy5IYXJyaXNv
bkBJbnRlbC5jb20+Cj4gU2lnbmVkLW9mZi1ieTogTWF0dGhldyBCcm9zdCA8bWF0dGhldy5icm9z
dEBpbnRlbC5jb20+Cj4gLS0tCj4gICAuLi4vZ3B1L2RybS9pOTE1L2d0L3VjL2ludGVsX2d1Y19z
dWJtaXNzaW9uLmMgICB8ICAxIC0KPiAgIGRyaXZlcnMvZ3B1L2RybS9pOTE1L2k5MTVfcmVxdWVz
dC5jICAgICAgICAgICAgIHwgMTcgKysrKysrKysrKysrKy0tLS0KPiAgIDIgZmlsZXMgY2hhbmdl
ZCwgMTMgaW5zZXJ0aW9ucygrKSwgNSBkZWxldGlvbnMoLSkKPgo+IGRpZmYgLS1naXQgYS9kcml2
ZXJzL2dwdS9kcm0vaTkxNS9ndC91Yy9pbnRlbF9ndWNfc3VibWlzc2lvbi5jIGIvZHJpdmVycy9n
cHUvZHJtL2k5MTUvZ3QvdWMvaW50ZWxfZ3VjX3N1Ym1pc3Npb24uYwo+IGluZGV4IDBhNmNjZGYz
MjMxNi4uMDEwZTQ2ZGQ2YjE2IDEwMDY0NAo+IC0tLSBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2d0
L3VjL2ludGVsX2d1Y19zdWJtaXNzaW9uLmMKPiArKysgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9n
dC91Yy9pbnRlbF9ndWNfc3VibWlzc2lvbi5jCj4gQEAgLTkyNiw3ICs5MjYsNiBAQCBzdGF0aWMg
dm9pZCBndWNfY29udGV4dF9zY2hlZF9kaXNhYmxlKHN0cnVjdCBpbnRlbF9jb250ZXh0ICpjZSkK
PiAgIAkgKiByZXF1ZXN0IGRvZXNuJ3Qgc2xpcCB0aHJvdWdoIHRoZSAnY29udGV4dF9wZW5kaW5n
X2Rpc2FibGUnIGZlbmNlLgo+ICAgCSAqLwo+ICAgCWlmICh1bmxpa2VseShhdG9taWNfYWRkX3Vu
bGVzcygmY2UtPnBpbl9jb3VudCwgLTIsIDIpKSkgewo+IC0JCXNwaW5fdW5sb2NrX2lycXJlc3Rv
cmUoJmNlLT5ndWNfc3RhdGUubG9jaywgZmxhZ3MpOwoKV2h5IGlzIHRoaXMgdW5sb2NrKCkgYmVp
bmcgZHJvcHBlZCBoZXJlPwoKPiAgIAkJcmV0dXJuOwo+ICAgCX0KPiAgIAlndWNfaWQgPSBwcmVw
X2NvbnRleHRfcGVuZGluZ19kaXNhYmxlKGNlKTsKPiBkaWZmIC0tZ2l0IGEvZHJpdmVycy9ncHUv
ZHJtL2k5MTUvaTkxNV9yZXF1ZXN0LmMgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9pOTE1X3JlcXVl
c3QuYwo+IGluZGV4IDlkYWQzZGY1ZWFmNy4uZDkyYzlmMjVjOWY0IDEwMDY0NAo+IC0tLSBhL2Ry
aXZlcnMvZ3B1L2RybS9pOTE1L2k5MTVfcmVxdWVzdC5jCj4gKysrIGIvZHJpdmVycy9ncHUvZHJt
L2k5MTUvaTkxNV9yZXF1ZXN0LmMKPiBAQCAtNDQ0LDYgKzQ0NCw3IEBAIHZvaWQgaTkxNV9yZXF1
ZXN0X3JldGlyZV91cHRvKHN0cnVjdCBpOTE1X3JlcXVlc3QgKnJxKQo+ICAgCj4gICAJZG8gewo+
ICAgCQl0bXAgPSBsaXN0X2ZpcnN0X2VudHJ5KCZ0bC0+cmVxdWVzdHMsIHR5cGVvZigqdG1wKSwg
bGluayk7Cj4gKwkJR0VNX0JVR19PTighaTkxNV9yZXF1ZXN0X2NvbXBsZXRlZCh0bXApKTsKClRo
aXMgY29uZGl0aW9uIGluIHRoZSBCVUdfT04gaXMgbm90IGEgbmV3IHJlcXVpcmVtZW50IGludHJv
ZHVjZWQgYnkgdGhlIApjaGFuZ2VzIGJlbG93LCByaWdodD8ganVzdCB3YW50IHRvIG1ha2Ugc3Vy
ZSBJJ20gbm90IG1pc3NpbmcgYW55dGhpbmcuCgo+ICAgCX0gd2hpbGUgKGk5MTVfcmVxdWVzdF9y
ZXRpcmUodG1wKSAmJiB0bXAgIT0gcnEpOwo+ICAgfQo+ICAgCj4gQEAgLTE0MDUsNiArMTQwNiw5
IEBAIGk5MTVfcmVxdWVzdF9hd2FpdF9leHRlcm5hbChzdHJ1Y3QgaTkxNV9yZXF1ZXN0ICpycSwg
c3RydWN0IGRtYV9mZW5jZSAqZmVuY2UpCj4gICAJcmV0dXJuIGVycjsKPiAgIH0KPiAgIAo+ICtz
dGF0aWMgaW50Cj4gK2k5MTVfcmVxdWVzdF9hd2FpdF9yZXF1ZXN0KHN0cnVjdCBpOTE1X3JlcXVl
c3QgKnRvLCBzdHJ1Y3QgaTkxNV9yZXF1ZXN0ICpmcm9tKTsKPiArCj4gICBpbnQKPiAgIGk5MTVf
cmVxdWVzdF9hd2FpdF9leGVjdXRpb24oc3RydWN0IGk5MTVfcmVxdWVzdCAqcnEsCj4gICAJCQkg
ICAgIHN0cnVjdCBkbWFfZmVuY2UgKmZlbmNlLAo+IEBAIC0xNDY0LDEyICsxNDY4LDEzIEBAIGF3
YWl0X3JlcXVlc3Rfc3VibWl0KHN0cnVjdCBpOTE1X3JlcXVlc3QgKnRvLCBzdHJ1Y3QgaTkxNV9y
ZXF1ZXN0ICpmcm9tKQo+ICAgCSAqIHRoZSB3YWl0ZXIgdG8gYmUgc3VibWl0dGVkIGltbWVkaWF0
ZWx5IHRvIHRoZSBwaHlzaWNhbCBlbmdpbmUKPiAgIAkgKiBhcyBpdCBtYXkgdGhlbiBieXBhc3Mg
dGhlIHZpcnR1YWwgcmVxdWVzdC4KPiAgIAkgKi8KPiAtCWlmICh0by0+ZW5naW5lID09IFJFQURf
T05DRShmcm9tLT5lbmdpbmUpKQo+ICsJaWYgKHRvLT5lbmdpbmUgPT0gUkVBRF9PTkNFKGZyb20t
PmVuZ2luZSkpIHsKPiAgIAkJcmV0dXJuIGk5MTVfc3dfZmVuY2VfYXdhaXRfc3dfZmVuY2VfZ2Zw
KCZ0by0+c3VibWl0LAo+ICAgCQkJCQkJCSZmcm9tLT5zdWJtaXQsCj4gICAJCQkJCQkJSTkxNV9G
RU5DRV9HRlApOwo+IC0JZWxzZQo+ICsJfSBlbHNlIHsKPiAgIAkJcmV0dXJuIF9faTkxNV9yZXF1
ZXN0X2F3YWl0X2V4ZWN1dGlvbih0bywgZnJvbSwgTlVMTCk7Cj4gKwl9Cgp7IH3CoCBhcmUgbm90
IG5lZWRlZCBoZXJlLiBJJ20gZ3Vlc3NpbmcgdGhleSdyZSBsZWZ0b3ZlciBmcm9tIGEgZHJvcHBl
ZCAKY2hhbmdlLgoKPiAgIH0KPiAgIAo+ICAgc3RhdGljIGludAo+IEBAIC0xNDkzLDcgKzE0OTgs
OCBAQCBpOTE1X3JlcXVlc3RfYXdhaXRfcmVxdWVzdChzdHJ1Y3QgaTkxNV9yZXF1ZXN0ICp0bywg
c3RydWN0IGk5MTVfcmVxdWVzdCAqZnJvbSkKPiAgIAkJCXJldHVybiByZXQ7Cj4gICAJfQo+ICAg
Cj4gLQlpZiAoaXNfcG93ZXJfb2ZfMih0by0+ZXhlY3V0aW9uX21hc2sgfCBSRUFEX09OQ0UoZnJv
bS0+ZXhlY3V0aW9uX21hc2spKSkKPiArCWlmICghaW50ZWxfZW5naW5lX3VzZXNfZ3VjKHRvLT5l
bmdpbmUpICYmCj4gKwkgICAgaXNfcG93ZXJfb2ZfMih0by0+ZXhlY3V0aW9uX21hc2sgfCBSRUFE
X09OQ0UoZnJvbS0+ZXhlY3V0aW9uX21hc2spKSkKPiAgIAkJcmV0ID0gYXdhaXRfcmVxdWVzdF9z
dWJtaXQodG8sIGZyb20pOwo+ICAgCWVsc2UKPiAgIAkJcmV0ID0gZW1pdF9zZW1hcGhvcmVfd2Fp
dCh0bywgZnJvbSwgSTkxNV9GRU5DRV9HRlApOwo+IEBAIC0xNjU0LDYgKzE2NjAsOCBAQCBfX2k5
MTVfcmVxdWVzdF9hZGRfdG9fdGltZWxpbmUoc3RydWN0IGk5MTVfcmVxdWVzdCAqcnEpCj4gICAJ
cHJldiA9IHRvX3JlcXVlc3QoX19pOTE1X2FjdGl2ZV9mZW5jZV9zZXQoJnRpbWVsaW5lLT5sYXN0
X3JlcXVlc3QsCj4gICAJCQkJCQkgICZycS0+ZmVuY2UpKTsKPiAgIAlpZiAocHJldiAmJiAhX19p
OTE1X3JlcXVlc3RfaXNfY29tcGxldGUocHJldikpIHsKPiArCQlib29sIHVzZXNfZ3VjID0gaW50
ZWxfZW5naW5lX3VzZXNfZ3VjKHJxLT5lbmdpbmUpOwo+ICsKPiAgIAkJLyoKPiAgIAkJICogVGhl
IHJlcXVlc3RzIGFyZSBzdXBwb3NlZCB0byBiZSBrZXB0IGluIG9yZGVyLiBIb3dldmVyLAo+ICAg
CQkgKiB3ZSBuZWVkIHRvIGJlIHdhcnkgaW4gY2FzZSB0aGUgdGltZWxpbmUtPmxhc3RfcmVxdWVz
dAo+IEBAIC0xNjY0LDcgKzE2NzIsOCBAQCBfX2k5MTVfcmVxdWVzdF9hZGRfdG9fdGltZWxpbmUo
c3RydWN0IGk5MTVfcmVxdWVzdCAqcnEpCj4gICAJCQkgICBpOTE1X3NlcW5vX3Bhc3NlZChwcmV2
LT5mZW5jZS5zZXFubywKPiAgIAkJCQkJICAgICBycS0+ZmVuY2Uuc2Vxbm8pKTsKPiAgIAo+IC0J
CWlmIChpc19wb3dlcl9vZl8yKFJFQURfT05DRShwcmV2LT5lbmdpbmUpLT5tYXNrIHwgcnEtPmVu
Z2luZS0+bWFzaykpCj4gKwkJaWYgKCghdXNlc19ndWMgJiYgaXNfcG93ZXJfb2ZfMihSRUFEX09O
Q0UocHJldi0+ZW5naW5lKS0+bWFzayB8IHJxLT5lbmdpbmUtPm1hc2spKSB8fAo+ICsJCSAgICAo
dXNlc19ndWMgJiYgcHJldi0+Y29udGV4dCA9PSBycS0+Y29udGV4dCkpCgpXb3VsZCBpdCBiZSB3
b3J0aCBhZGRpbmcgYW4gZW5naW5lIGZsYWcgaW5zdGVhZCBvZiBjaGVja2luZyB3aGljaCAKYmFj
ay1lbmQgaXMgaW4gdXNlPyBJOTE1X0VOR0lORV9JU19GSUZPIG9yIHNvbWV0aGluZy4gTm90IGEg
YmxvY2tlci4KCkRhbmllbGUKCj4gICAJCQlpOTE1X3N3X2ZlbmNlX2F3YWl0X3N3X2ZlbmNlKCZy
cS0+c3VibWl0LAo+ICAgCQkJCQkJICAgICAmcHJldi0+c3VibWl0LAo+ICAgCQkJCQkJICAgICAm
cnEtPnN1Ym1pdHEpOwoKCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fXwpJbnRlbC1nZnggbWFpbGluZyBsaXN0CkludGVsLWdmeEBsaXN0cy5mcmVlZGVza3Rv
cC5vcmcKaHR0cHM6Ly9saXN0cy5mcmVlZGVza3RvcC5vcmcvbWFpbG1hbi9saXN0aW5mby9pbnRl
bC1nZngK
