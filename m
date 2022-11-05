Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 0DCF761A670
	for <lists+intel-gfx@lfdr.de>; Sat,  5 Nov 2022 01:38:57 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id D5A8D10E8EF;
	Sat,  5 Nov 2022 00:38:52 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
 by gabe.freedesktop.org (Postfix) with ESMTPS id BC27710E8EF
 for <intel-gfx@lists.freedesktop.org>; Sat,  5 Nov 2022 00:38:49 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1667608729; x=1699144729;
 h=message-id:date:subject:to:cc:references:from:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=ZPw7YRNnjqYLc0sSa2y/0Mguo7+kygKIpuv67+r4nEc=;
 b=L1EGXStMnVMqX/nKk3o9BQcCWDLCfy415oiDgUriN5Rmm+tyHj3sn1Xh
 iho5AK6U8Zrp/UjpfdHYMy1lg+FH93J6jLW0Muaou2EkV6K3vFAj606Gx
 JTLhX5xk1yasAgg5guQTFd3/ee382SKXuPdlp2/0pMrQS4sYhj8jNftW4
 K5ABTZILYK7i366jeGjEZKRWjc1N2HCv0nVJU/0fTKWO8ukGJ685Vsrdk
 m8UI8+DgPJ4BInVMConVWlruqytpddq4AKX9Ml3bshxM9Fvk/Tp3duBN0
 RnOmK/vq74gSQl+SUw7wz/0O5pm06FnYDtNQh2jb+TF0ylno611yV2YB0 g==;
X-IronPort-AV: E=McAfee;i="6500,9779,10521"; a="307728394"
X-IronPort-AV: E=Sophos;i="5.96,139,1665471600"; d="scan'208";a="307728394"
Received: from orsmga004.jf.intel.com ([10.7.209.38])
 by fmsmga102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 04 Nov 2022 17:38:48 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10521"; a="760507653"
X-IronPort-AV: E=Sophos;i="5.96,139,1665471600"; d="scan'208";a="760507653"
Received: from orsmsx602.amr.corp.intel.com ([10.22.229.15])
 by orsmga004.jf.intel.com with ESMTP; 04 Nov 2022 17:38:48 -0700
Received: from orsmsx603.amr.corp.intel.com (10.22.229.16) by
 ORSMSX602.amr.corp.intel.com (10.22.229.15) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2375.31; Fri, 4 Nov 2022 17:38:48 -0700
Received: from ORSEDG602.ED.cps.intel.com (10.7.248.7) by
 orsmsx603.amr.corp.intel.com (10.22.229.16) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2375.31 via Frontend Transport; Fri, 4 Nov 2022 17:38:48 -0700
Received: from NAM11-DM6-obe.outbound.protection.outlook.com (104.47.57.173)
 by edgegateway.intel.com (134.134.137.103) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2375.31; Fri, 4 Nov 2022 17:38:47 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=YJ9MlIpd7hToFLVq/ehAObObMoT171mNJMT9CVyZZn2KO7KeTJElJF/fU3JAJRcYq9AsrLj4mDaL/eFchq03JWvG2bWd/gXp19lFjUTHkz838iCE+NOAb7h+dQ+Wqfm/MQxBOEC+CIyRe+slqdlwPMGrMuD3sTlBosJ2sOJ98Y7RP7Fswf4TIF5yVYJJyLlRhPZksIeNftoKTSu9lrA7mLqEuFW5yw7m45BpmCEY5flMFg19gGYO2s6IlmzKNRAfkBZYfzSr7afvu3B6gcfB4pshR5+vpcD3/UH2nfI4mw0Pwlf5eDd4kaF3FqhF25STrWu0n85DbMxm0mI6wSzvvQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=ZPw7YRNnjqYLc0sSa2y/0Mguo7+kygKIpuv67+r4nEc=;
 b=gPwd7tODKB56N7KsSKUZEyWOzfB20rJElvQwTi5dYDl+QtkcotGLAoc4u/vAOhTRB5YYUThVoMWKk22/BO1sBhzAVauMkB3hM84EyoR7ww7sUbdAhxEXMVYQScc8wwRKio85HXi2PrWVhtQdD6uVjl4/YI8yOQkKOHbPHZ4bEo2l1xLtZdz8KeDn4G6jsTrTUKegFqUT5S0x91z50uvuP3nlKmxP/TPywV35gzBjddwST6D6KDwV0mu2bCAV7zi22xzh5QHnuMHslXHbXnIFgu+GA4bkDPiUb8Yqbv1JJ/w8XLHENtZtbiQovakYsKsiDPHEKzSp4NWvLP2oUlU5yQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from DM4PR11MB5488.namprd11.prod.outlook.com (2603:10b6:5:39d::5) by
 IA1PR11MB6537.namprd11.prod.outlook.com (2603:10b6:208:3a3::14) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.5791.20; Sat, 5 Nov
 2022 00:38:46 +0000
Received: from DM4PR11MB5488.namprd11.prod.outlook.com
 ([fe80::bff2:8e4f:a657:6095]) by DM4PR11MB5488.namprd11.prod.outlook.com
 ([fe80::bff2:8e4f:a657:6095%6]) with mapi id 15.20.5791.022; Sat, 5 Nov 2022
 00:38:46 +0000
Message-ID: <301a2ee5-db5a-ff79-f94a-ef6014ca3a10@intel.com>
Date: Fri, 4 Nov 2022 17:38:44 -0700
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:102.0) Gecko/20100101
 Thunderbird/102.4.1
Content-Language: en-US
To: Brian Norris <briannorris@chromium.org>, Tvrtko Ursulin
 <tvrtko.ursulin@linux.intel.com>
References: <20220928004145.745803-1-daniele.ceraolospurio@intel.com>
 <20220928004145.745803-12-daniele.ceraolospurio@intel.com>
 <5589d713-c371-1121-ef74-58be63057ac4@linux.intel.com>
 <Y2WfpLbX1SeDtk+7@google.com>
From: "Ceraolo Spurio, Daniele" <daniele.ceraolospurio@intel.com>
In-Reply-To: <Y2WfpLbX1SeDtk+7@google.com>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: base64
X-ClientProxiedBy: SJ0PR13CA0138.namprd13.prod.outlook.com
 (2603:10b6:a03:2c6::23) To DM4PR11MB5488.namprd11.prod.outlook.com
 (2603:10b6:5:39d::5)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DM4PR11MB5488:EE_|IA1PR11MB6537:EE_
X-MS-Office365-Filtering-Correlation-Id: e77686fd-c731-40c5-3e3d-08dabec61915
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: un56Z3sxfziZ9283nEnaxOn2laEeAKDa6yrq+/yJa1Z4/ZZAl52SZLbCCcNRfyEhiV8mFEDiZ0AXtntq4PJ78Y1B07TZUGzsIkZfNo+wVuEBml0GnlAyxFnGiMILPNqdfpTJhYbeYI6wQ4s18k83RDYwASkG4zzbavhcALtvZPuKuityRxsJpl+GG7EGUwjIUwT3rQqWauUfDoM8j2kHxt5xkTDqvyH7/ygkFtShPe9fOoolllrgw5F7mMqwAL8YPSt+zfvRl1I7hmtSVSk9sQ9L+hEHjhnicGFgu3FmtACQussuRH2wqDhE1Jet7EtHeml82NyoH1/20uSd4AvgRw/ehq83IMYIz8Stnqjhr9HQvqFxvZuZAk2a6Ayti79+e8U0Veyb3mlIeYWsrn8iARjshQF0BqiHzVpFukO9eLQUcW5eK+2ugBKeBO+EEjMaGupTczi3IT2crqN/kgjNnpvNaOiwIfLUAO9QDKGwUpbbX3itisTX9IBhEWz4a8yUwlzigru5m9dVh3L3xnmDpBQ51fZcNKoHEMh7BFvXtTJs9cmrWUg8V4KlzDm2xBDXO1TY8NhEa8vKcnhsjPwDuCUDFWRY848VA5KyNxBd3UYJeGmyKZCW4oIOjP0X1r82OTXluOMsiDcGWQSz/8xMT/A8qqDzfOCQ3pftrZBdgpsIqVEoXLn92cbif5CSAXzmxgreYZvRUPbx82kqjspDQ8mWHj0kmf6tmsoJBtWQK9hm8CFoPL2+mGKUOWTooM2qYFoQd1Bcs+f37peAid8doE062TNmiLchj//VEtj4K10=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM4PR11MB5488.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230022)(136003)(366004)(346002)(396003)(376002)(39860400002)(451199015)(186003)(31686004)(478600001)(38100700002)(6486002)(316002)(86362001)(6506007)(45080400002)(83380400001)(82960400001)(8936002)(5660300002)(66476007)(2906002)(36756003)(110136005)(2616005)(31696002)(6512007)(66946007)(8676002)(66556008)(53546011)(41300700001)(26005)(4326008)(43740500002)(45980500001);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?d3dUVnRySGdtVkxIZkZDQXJPL05YS1VTOTJVT0phM2JMWHNnSXBOSjJ3V0Zm?=
 =?utf-8?B?ZDhvbE1Ca0phWFAxcklIVTJvL01RYUNIY2RDMUlkL2VYdkJQSmljdngvLytG?=
 =?utf-8?B?K2hsTFFxdnpxQUZ4ZjR1NWEwS2dkdFQzZVIra0s4ZENtc01WV1RPVVk5akRU?=
 =?utf-8?B?cHRNaEorZ0NxZlJkTFJaWTZDKzBBdkxEa1R2ZlpUSFIrUU1yZ1lxZ2Y0dDQw?=
 =?utf-8?B?cWFoMzN4eU1mcGF1QldIN2ZnOGVOUFB4RW5zazFzWmZGZFNrZ25BcllueTA5?=
 =?utf-8?B?M2hVZWYxb0lBYWtQS2RaK2pqZkdlQzFJODQrMHduQlBxckpWWEhuejFXTWI5?=
 =?utf-8?B?dHRzWUhIcWVMYVhndDhtWDNQSHVrRGRLOWNwQ2REdUVNZE52dGZ1WHpnTTd2?=
 =?utf-8?B?T2lXRU11WURmcC9sakU4ZVh1NEszRjZ3eEtVRUl5eDNHZXgvazBaVVFvNmVP?=
 =?utf-8?B?Y2tiRzRrb0RLRExpRFVUUElhWGZqQW9ISW1BM3VQdFdUYUhFc1EwZGdkRXZ1?=
 =?utf-8?B?YlRzTE1NWnBnWHlrakpOTlJzK0x6RzZ4Sk5KRi9QL3VSUVZOVVhucC9FcGNV?=
 =?utf-8?B?T3E1R0p4REc4ZVI3YW9vOGo4M2F5OGFzTGJhVXBYbXI0a29kSUJoR0phVlcw?=
 =?utf-8?B?OWg1TDdjQVEwYWpWUnpFNTMzS0xBVnRlZkQvYjRsYlVwaTdiZkRIZ0toOEEy?=
 =?utf-8?B?QStSeksrT1hGQzNZU3dBOEpYK3NsVHdpY0tGNk1jUlpFMVlJM1NLM1hpWjM2?=
 =?utf-8?B?bGMyWXdqMXNEZy95V2U3YzB6UVlUZXIyNDZHbmR0eXAvMWVxS1NCTXJ2ZkZH?=
 =?utf-8?B?djVUN3RKMnpiZnpWZmZib2MvTzBhdUQ4YVgvajQrVW41SkxleUZLcThFeklp?=
 =?utf-8?B?aTJyRGZieXY2a3Yrd08wUEgyLytZV1FCdFB0R2JTcm9uTXppTGdQMUFTMGdV?=
 =?utf-8?B?YkhRbTRDSDN3UVFTNVh5OGVOYkZOSW90YWpjcWtYQjZXaXUzK2dzejFXRFc0?=
 =?utf-8?B?TDRNNkZ0dFRpK2dMdjQ1MnNEcER4MGNpSzIzTTg4VXR1NUdpN1VLdk1LRW5C?=
 =?utf-8?B?RFZoSXNzZUZFWHpTU05QK1RTRnBvNFV4QUN5K2U1QTFzQi9lZER1U1NDOXF2?=
 =?utf-8?B?OGc2NldVNzBESk5qdktYa1N6cEN3OWhFZmxxdmo1T2pYZ2JPenNJc0tQUFMw?=
 =?utf-8?B?eVNQemVESVJ3WFRwYzBYQ25HRXdVWGlORHIyRlFQQTFDQWE4cTlkdlZhbERS?=
 =?utf-8?B?MUtDM1JjczdJNk5YYTBFSlhEY1VqQlBUWkMyR25yK3pJb0FBMkd5RHVxTmNN?=
 =?utf-8?B?cStGKzdJQVBTNXcyeS9Ebk15NThNVTkzaDdNRG1DWHJtdlAxYVFmazhzOXdV?=
 =?utf-8?B?V2VxbjZocjQ3T0tIV0xZeXJzMWgyV3ZCVVBCWllTNkVvK3g0MllmelIyTzJ5?=
 =?utf-8?B?L1J4U1hFS1E4ZmpzTzNKK1kxaHVVMWttSTkxYkVZc0N2cDJrSlVhSkNVWXVy?=
 =?utf-8?B?dW15OU56TXFyR2xPelp3YkltamNqQW0wLzVjQ0lUU0RoV2dCVlRRT1ZMU2N1?=
 =?utf-8?B?bTRtMGM0UzN1NFFYTHRJUS9zdHJLb2dCSVRqaDlWaitXMUJvY0lxK01LbStF?=
 =?utf-8?B?VHJzVVpoZ1Zjd1VFRTJTUGR2WGFDM3FNRStrcGl2M1BZZVY4cDBzaVFkQ3RD?=
 =?utf-8?B?b3VjTzg4cy81WWw1VUZpZlJiU1FvMEdyZGtDSHZtcCt0US9kNzhRVnVSSURL?=
 =?utf-8?B?OTkxc3ZURDNvcDY4SlBrOEtFRTRuYnhmMzBrbmZTVzFpY1N6RUdFdW83Wkpo?=
 =?utf-8?B?Z2dSQzBoY3ZUMTJvdFlZODZBRlQrWVptUkwyYi9UT3ZjSW1uUGNxcHh0L2FD?=
 =?utf-8?B?MEt0Y1Z6SjNjZ3E3UkdaWTU5VDRBb0ZuK1ovdWxoT296TkxTL3A1cWMwNFB4?=
 =?utf-8?B?S0d0Z1VPL3Y4TmtYcGoydWU3ZFZHQ0RibmRIT050UWNLY3ozaFg4Qmo2VnVo?=
 =?utf-8?B?TURFSDdYaHZkMGwwdG01Sktqd1VNRlhZWHVjZFU4dllyTWhra2llYXljd0M4?=
 =?utf-8?B?cG9WSnZ3aVJwbTRXd20xZG1ra1dmSnd5SmdnWkdsd0I1bC9GUzlaQW5zRURw?=
 =?utf-8?B?Z0Vnc1BqbWZSWlVOenAxYnJOVmY5UDBVMTlRWExDU0J6TVQxUVhPYllOQUhX?=
 =?utf-8?Q?l7O4PDhXkOcXqseQ64XL8GY=3D?=
X-MS-Exchange-CrossTenant-Network-Message-Id: e77686fd-c731-40c5-3e3d-08dabec61915
X-MS-Exchange-CrossTenant-AuthSource: DM4PR11MB5488.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 05 Nov 2022 00:38:46.1533 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: vmg5W2Vtvh8NnKLN41YWiG296GRV673jHa0ie/KDNDUddwJkzzEFWUBJdFEFgO9gXyPWnVKS5Z8FHm89m0uo+va+SHNP0QkoCGxZYTzw10c=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: IA1PR11MB6537
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] [CI 11/15] drm/i915/huc: track delayed HuC load
 with a fence
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
Cc: intel-gfx@lists.freedesktop.org
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

DQoNCk9uIDExLzQvMjAyMiA0OjI2IFBNLCBCcmlhbiBOb3JyaXMgd3JvdGU6DQo+IEhpLA0KPg0K
PiBPbiBXZWQsIE9jdCAxOSwgMjAyMiBhdCAxMDo1NDozNEFNICswMTAwLCBUdnJ0a28gVXJzdWxp
biB3cm90ZToNCj4+IERvbid0IGtub3cgaWYgdGhpcyBpcyByZWFsIG9yIG5vdCB5ZXQsIGhpdCBp
dCB3aGlsZSBydW5uaW5nIHNlbGZ0ZXN0cyBhIGJpdC4gU29tZXRoaW5nIHRvIGtlZXAgYW4gZXll
IG9uLg0KPj4NCj4+IFsgMjkyOC4zNzA1NzddIE9ERUJVRzogaW5pdCBkZXN0cm95ZWQgKGFjdGl2
ZSBzdGF0ZSAwKSBvYmplY3QgdHlwZTogaTkxNV9zd19mZW5jZSBoaW50OiBzd19mZW5jZV9kdW1t
eV9ub3RpZnkrMHgwLzB4MTAgW2k5MTVdDQo+PiBbIDI5MjguMzcwOTAzXSBXQVJOSU5HOiBDUFU6
IDIgUElEOiAxMTEzIGF0IGxpYi9kZWJ1Z29iamVjdHMuYzo1MDIgZGVidWdfcHJpbnRfb2JqZWN0
KzB4NmIvMHg5MA0KPj4gWyAyOTI4LjM3MDk4NF0gTW9kdWxlcyBsaW5rZWQgaW46IGk5MTUoKykg
ZHJtX2Rpc3BsYXlfaGVscGVyIGRybV9rbXNfaGVscGVyIG5ldGNvbnNvbGUgY21hYyBhbGdpZl9o
YXNoIGFsZ2lmX3NrY2lwaGVyIGFmX2FsZyBibmVwIG5sc19pc284ODU5XzEgc25kX2hkYV9jb2Rl
Y19oZG1pIHNuZF9oZGFfY29kZWNfcmVhbHRlayBzbmRfaGRhX2NvZGVjX2dlbmVyaWMgbGVkdHJp
Z19hdWRpbyBzbmRfaW50ZWxfZHNwY2ZnIHNuZF9oZGFfY29kZWMgc25kX2h3ZGVwIHNuZF9oZGFf
Y29yZSBzbmRfcGNtIGludGVsX3RjY19jb29saW5nIHg4Nl9wa2dfdGVtcF90aGVybWFsIGludGVs
X3Bvd2VyY2xhbXAgc25kX3NlcV9taWRpIHNuZF9zZXFfbWlkaV9ldmVudCBjb3JldGVtcCBzbmRf
cmF3bWlkaSBidHVzYiBidHJ0bCBidGJjbSBrdm1faW50ZWwgYnRtdGsgYnRpbnRlbCBhdGgxMGtf
cGNpIHNuZF9zZXEga3ZtIGF0aDEwa19jb3JlIGJsdWV0b290aCBzbmRfdGltZXIgcmFwbCBpbnRl
bF9jc3RhdGUgc25kX3NlcV9kZXZpY2UgaW5wdXRfbGVkcyBtYWM4MDIxMSBlY2RoX2dlbmVyaWMg
bGliYXJjNCBhdGggc25kIGVjYyBzZXJpb19yYXcgaW50ZWxfd21pX3RodW5kZXJib2x0IGF0MjQg
c291bmRjb3JlIGNmZzgwMjExIG1laV9tZSBpbnRlbF94aGNpX3VzYl9yb2xlX3N3aXRjaCBtZWkg
aWRlYXBhZF9sYXB0b3AgaW50ZWxfcGNoX3RoZXJtYWwgcGxhdGZvcm1fcHJvZmlsZSBzcGFyc2Vf
a2V5bWFwIGFjcGlfcGFkIHNjaF9mcV9jb2RlbCBtc3IgZWZpX3BzdG9yZSBpcF90YWJsZXMgeF90
YWJsZXMgYXV0b2ZzNCBjcmN0MTBkaWZfcGNsbXVsIGNyYzMyX3BjbG11bCBnaGFzaF9jbG11bG5p
X2ludGVsIHNoYTUxMl9zc3NlMyBhZXNuaV9pbnRlbCBwcmltZV9udW1iZXJzIGNyeXB0b19zaW1k
IGF0a2JkIGRybV9idWRkeSBjcnlwdGQgdml2YWxkaV9mbWFwIHI4MTY5IHR0bSBpMmNfaTgwMSBp
MmNfc21idXMgY2VjIHJlYWx0ZWsgeGhjaV9wY2kgc3lzY29weWFyZWEgYWhjaQ0KPj4gWyAyOTI4
LjM3MTE0NV0gIHhoY2lfcGNpX3JlbmVzYXMgc3lzZmlsbHJlY3Qgc3lzaW1nYmx0IGxpYmFoY2kg
ZmJfc3lzX2ZvcHMgdmlkZW8gd21pIFtsYXN0IHVubG9hZGVkOiBkcm1fa21zX2hlbHBlcl0NCj4+
IFsgMjkyOC4zNzE0ODldIENQVTogMiBQSUQ6IDExMTMgQ29tbTogbW9kcHJvYmUgVGFpbnRlZDog
RyAgICAgVSAgVyAgICAgICAgICA2LjEuMC1yYzEgIzE5Ng0KPj4gWyAyOTI4LjM3MTU1MF0gSGFy
ZHdhcmUgbmFtZTogTEVOT1ZPIDgwTVgvTGVub3ZvIEUzMS04MCwgQklPUyBEQ0NOMzRXVyhWMi4w
MykgMTIvMDEvMjAxNQ0KPj4gWyAyOTI4LjM3MTYxNV0gUklQOiAwMDEwOmRlYnVnX3ByaW50X29i
amVjdCsweDZiLzB4OTANCj4+IFsgMjkyOC4zNzE2NjRdIENvZGU6IDQ5IDg5IGMxIDhiIDQzIDEw
IDgzIGMyIDAxIDQ4IGM3IGM3IGU4IGJlIGQ2IGJiIDhiIDRiIDE0IDg5IDE1IGNhIGJlIGI0IDAy
IDRjIDhiIDQ1IDAwIDQ4IDhiIDE0IGM1IDQwIDU2IGE4IGJiIGU4IGVjIDViIDYwIDAwIDwwZj4g
MGIgODMgMDUgMjggNWEgM2UgMDEgMDEgNDggODMgYzQgMDggNWIgNWQgYzMgODMgMDUgMWEgNWEg
M2UgMDENCj4+IFsgMjkyOC4zNzE3ODJdIFJTUDogMDAxODpmZmZmOWVkODQxNjA3YTE4IEVGTEFH
UzogMDAwMTAyODYNCj4+IFsgMjkyOC4zNzE4NDFdIFJBWDogMDAwMDAwMDAwMDAwMDAwMCBSQlg6
IGZmZmY5MjA4MTE2YTFkNDggUkNYOiAwMDAwMDAwMDAwMDAwMDAwDQo+PiBbIDI5MjguMzcxOTA5
XSBSRFg6IDAwMDAwMDAwMDAwMDAwMDEgUlNJOiBmZmZmZmZmZmJiZDI3N2QyIFJESTogMDAwMDAw
MDBmZmZmZmZmZg0KPj4gWyAyOTI4LjM3MjAyNF0gUkJQOiBmZmZmZmZmZmMxNzZhNTQwIFIwODog
MDAwMDAwMDAwMDAwMDAwMCBSMDk6IGZmZmZmZmZmYmMwN2ExZTANCj4+IFsgMjkyOC4zNzIxMjhd
IFIxMDogMDAwMDAwMDAwMDAwMDAwMSBSMTE6IDAwMDAwMDAwMDAwMDAwMDEgUjEyOiBmZmZmOTIw
ODEyMmRhODMwDQo+PiBbIDI5MjguMzcyMTkyXSBSMTM6IGZmZmY5MjA4MDA4OWIwMDAgUjE0OiBm
ZmZmOTIwODEyMmRhNzcwIFIxNTogMDAwMDAwMDAwMDAwMDAwMA0KPj4gWyAyOTI4LjM3MjI1OV0g
RlM6ICAwMDAwN2Y1M2U3NjE3YzQwKDAwMDApIEdTOmZmZmY5MjA4NmU1MDAwMDAoMDAwMCkga25s
R1M6MDAwMDAwMDAwMDAwMDAwMA0KPj4gWyAyOTI4LjM3MjM2NV0gQ1M6ICAwMDEwIERTOiAwMDAw
IEVTOiAwMDAwIENSMDogMDAwMDAwMDA4MDA1MDAzMw0KPj4gWyAyOTI4LjM3MjQyNV0gQ1IyOiAw
MDAwNTVjZDI4YjMzMDcwIENSMzogMDAwMDAwMDExMGRiZDAwNiBDUjQ6IDAwMDAwMDAwMDAzNzA2
ZTANCj4+IFsgMjkyOC4zNzI1MjZdIENhbGwgVHJhY2U6DQo+PiBbIDI5MjguMzcyNTY4XSAgPFRB
U0s+DQo+PiBbIDI5MjguMzcyNjE0XSAgPyBpbnRlbF9ndWNfaGFuZ19jaGVjaysweGIwLzB4YjAg
W2k5MTVdDQo+PiBbIDI5MjguMzczMDAxXSAgX19pOTE1X3N3X2ZlbmNlX2luaXQrMHgyYi8weDUw
IFtpOTE1XQ0KPj4gWyAyOTI4LjM3MzM3NF0gIGludGVsX2h1Y19pbml0X2Vhcmx5KzB4NzUvMHhi
MCBbaTkxNV0NCj4+IFsgMjkyOC4zNzM4NjhdICBpbnRlbF91Y19pbml0X2Vhcmx5KzB4NGUvMHgy
MTAgW2k5MTVdDQo+PiBbIDI5MjguMzc0MjQxXSAgaW50ZWxfZ3RfY29tbW9uX2luaXRfZWFybHkr
MHgxNmYvMHgxODAgW2k5MTVdDQo+PiBbIDI5MjguMzc0NzE4XSAgaW50ZWxfcm9vdF9ndF9pbml0
X2Vhcmx5KzB4NDkvMHg2MCBbaTkxNV0NCj4+IFsgMjkyOC4zNzUwNzRdICBpOTE1X2RyaXZlcl9w
cm9iZSsweDkxNy8weGVkMCBbaTkxNV0NCj4gLi4uDQo+DQo+IERpZCB5b3UgdHJhY2sgdGhpcyBk
b3duPyBPciBjb25zaWRlciByZXZlcnRpbmc/IFRoaXMgaXMgdHJpcHBpbmcgbWUgdXANCg0KTm8u
IEkgZGlkbid0IG1hbmFnZSB0byByZXBybyBsb2NhbGx5IGFmdGVyIFR2cnRrbyByZXBvcnRlZCBp
dCAoSSBydW4gdGhlIA0KZnVsbCBzZWxmdGVzdCBzdWl0ZSB0d2ljZSBvbiBib3RoIEFETC1TIGFu
ZCBERzIgd2l0aCB0aGUgZGVidWcgY29uZmlnIA0KZW5hYmxlZCksIHNvIEkgd2FzIGtlZXBpbmcg
YW4gZXllIG91dCBhcyBzdWdnZXN0ZWQgdG8gc2VlIGlmIGl0IHBvcHBlZCANCm91dCBhZ2Fpbi4g
SWYgeW91IGNhbiByZXBybyB0aGlzIGNvbnNpc3RlbnRseSwgY2FuIHlvdSBzaGFyZSB5b3VyIHNl
dHVwIA0KaW5mbz8gV2hhdCBwbGF0Zm9ybSB5b3UncmUgcnVubmluZyBvbiwgaWYgeW91J3JlIHVz
aW5nIHRoZSBsYXRlc3QgDQpkcm0tdGlwLCBhbnkgbm9uLWRlZmF1bHQgcGFyYW1zIHlvdSdyZSB1
c2luZywgZXRjLiBEbWVzZyB3b3VsZCBhbHNvIGJlIA0KdXNlZnVsIHRvIHNlZSBpZiB0aGVyZSBh
cmUgb3RoZXIgZXJyb3JzIGJlZm9yZSB0aGlzIG9uZS4NCg0KVGhhbmtzLA0KRGFuaWVsZQ0KDQo+
IG9uIGRybS10aXAgbm93IHdoZW4gcnVubmluZyBzZWxmdGVzdHMgd2l0aCBDT05GSUdfREVCVUdf
T0JKRUNUUz15IC8NCj4gQ09ORklHX0RSTV9JOTE1X1NXX0ZFTkNFX0RFQlVHX09CSkVDVFM9eS4g
SXQgbWVhbnMgSSBjYW4ndCBhY3R1YWxseSBydW4NCj4gYW55IHN1YnNlcXVlbnQgdGVzdHMsIGJl
Y2F1c2Ugb2YgdGhlIGtlcm5lbCB0YWludC4NCj4NCj4gQnJpYW4NCg0K
