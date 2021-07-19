Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 305E03CCDD2
	for <lists+intel-gfx@lfdr.de>; Mon, 19 Jul 2021 08:18:10 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 2972B6E072;
	Mon, 19 Jul 2021 06:18:07 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga07.intel.com (mga07.intel.com [134.134.136.100])
 by gabe.freedesktop.org (Postfix) with ESMTPS id D81F26E072
 for <intel-gfx@lists.freedesktop.org>; Mon, 19 Jul 2021 06:18:05 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6200,9189,10049"; a="274825746"
X-IronPort-AV: E=Sophos;i="5.84,251,1620716400"; d="scan'208";a="274825746"
Received: from fmsmga008.fm.intel.com ([10.253.24.58])
 by orsmga105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 18 Jul 2021 23:18:05 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.84,251,1620716400"; d="scan'208";a="468291461"
Received: from fmsmsx603.amr.corp.intel.com ([10.18.126.83])
 by fmsmga008.fm.intel.com with ESMTP; 18 Jul 2021 23:18:04 -0700
Received: from fmsmsx602.amr.corp.intel.com (10.18.126.82) by
 fmsmsx603.amr.corp.intel.com (10.18.126.83) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2242.10; Sun, 18 Jul 2021 23:18:04 -0700
Received: from fmsedg601.ED.cps.intel.com (10.1.192.135) by
 fmsmsx602.amr.corp.intel.com (10.18.126.82) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2242.10 via Frontend Transport; Sun, 18 Jul 2021 23:18:04 -0700
Received: from NAM11-BN8-obe.outbound.protection.outlook.com (104.47.58.168)
 by edgegateway.intel.com (192.55.55.70) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2242.10; Sun, 18 Jul 2021 23:18:03 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=aVhryUJGeIpZSA9B1G9Po0BPUdxOJW+DhsJYh2F6T2TQnjFZ9vBd9QuqHXgyEYJXgiZfDjhzD4XJ6LPE9ooVaK3HXkaAHNv85c+Ygwzb87VyhKKIgIU1XeYCjQjgFxGmeOQfEmnT/DCaOyFz1FrwgTXrZ59cFMO4pVFAM1RlQBv6/oSNVCWWFofrL29LkhJPOwwa+o54S1XFfi5Esr0Emb7NhzyQXpIuKGnXgVmcJr/LJpV3SK032euaptwpzAl7kSv05h7m1W+sUMtjZmXQmTKtgGPKmwgohlkNeys7FcZhQV1k10fetUMHzgOhrhgwfS6Y9hXe58bShJimKTK1Mg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=kXP7MkgBUMXy9BJtKidUqlicrzAzoS6GczcNIqzXY2w=;
 b=dkpNZv7bSBgoWP6fvZYUXvXtyBQxqfNMsq7eUpOKl3im7hKYx4Eg1J/8KTmN7QUYgfNLvF5KTYIp6eMkeay9fhy/MruHjQhUa9C3JgcY1yIAl+rhrziIisQ1BNXmYl9z7n7aORLQHJIOJ693616t91zCmSr1DoTFnzoNLYU47UsUlm3Q81TfqruTV9lJxY1WmNzD8OgbywUlJZxf/w3RPBX/fls0RwytfoEW3BjhSaiQKYJ7fjhMPk+mADoiTcAUT7kaJbm6z3J8akGuMRIsHuGAn288i/EGFTmuV1XvxarVQVNs/yfM5XujIYRW9MRQD0E1d/eDer+gA/DZqXKqjQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=intel.onmicrosoft.com; 
 s=selector2-intel-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=kXP7MkgBUMXy9BJtKidUqlicrzAzoS6GczcNIqzXY2w=;
 b=e/pq7iW8RQcFDBwugbBRGSKTEIKSjwK67jPBfzz6k90odxLUqm1ovc3yoxspPEQB1wKKdXq/04Ve3/U7mEAb899zmBadRCylJlIwrVxYvlYbq97vZfeJx4KHAenjYZLnW65zCfTz7MyWQlNCWnJtV4mSZTcItjHP2jaKxwJ0DWE=
Authentication-Results: linux.intel.com; dkim=none (message not signed)
 header.d=none;linux.intel.com; dmarc=none action=none header.from=intel.com;
Received: from DM4PR11MB5501.namprd11.prod.outlook.com (2603:10b6:5:39d::23)
 by DM6PR11MB2587.namprd11.prod.outlook.com (2603:10b6:5:c3::16) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.4331.24; Mon, 19 Jul
 2021 06:18:00 +0000
Received: from DM4PR11MB5501.namprd11.prod.outlook.com
 ([fe80::5d0c:2e2e:b7e7:eb3b]) by DM4PR11MB5501.namprd11.prod.outlook.com
 ([fe80::5d0c:2e2e:b7e7:eb3b%8]) with mapi id 15.20.4331.032; Mon, 19 Jul 2021
 06:18:00 +0000
To: Manasi Navare <manasi.d.navare@intel.com>,
 <intel-gfx@lists.freedesktop.org>
References: <20210714223414.9849-1-manasi.d.navare@intel.com>
From: "Nautiyal, Ankit K" <ankit.k.nautiyal@intel.com>
Message-ID: <9fb23633-cbeb-b4c8-d548-95323c7a71b3@intel.com>
Date: Mon, 19 Jul 2021 11:47:51 +0530
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:78.0) Gecko/20100101
 Firefox/78.0 Thunderbird/78.11.0
In-Reply-To: <20210714223414.9849-1-manasi.d.navare@intel.com>
Content-Language: en-US
X-ClientProxiedBy: PN1PR01CA0103.INDPRD01.PROD.OUTLOOK.COM (2603:1096:c00::19)
 To DM4PR11MB5501.namprd11.prod.outlook.com
 (2603:10b6:5:39d::23)
MIME-Version: 1.0
X-MS-Exchange-MessageSentRepresentingType: 1
Received: from [192.168.0.107] (49.207.224.57) by
 PN1PR01CA0103.INDPRD01.PROD.OUTLOOK.COM (2603:1096:c00::19) with Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.4331.21 via Frontend Transport; Mon, 19 Jul 2021 06:17:58 +0000
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: 91e329da-a1d6-44f7-027b-08d94a7cf53b
X-MS-TrafficTypeDiagnostic: DM6PR11MB2587:
X-LD-Processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
X-MS-Exchange-Transport-Forked: True
X-Microsoft-Antispam-PRVS: <DM6PR11MB25877459D61F78829D2124FDCEE19@DM6PR11MB2587.namprd11.prod.outlook.com>
X-MS-Oob-TLC-OOBClassifiers: OLM:3968;
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: LDzDGyRrgDXVemzK99N9tuWBx9mtVtTCmaw/9vqpmdCKxcv7JCFdXkf1ieJ5j5yflzDrJ8XKl2Z8jc0+eKktC84+YvVC/1v5Vc1impuXatjL1nPiK8jweQ2vXozoegXIlYtT0M7f78EYpvFH2Se3loJSF+3MtjLE0mbNrTszzWuavgF39L50GFkz+cVDN5DbKMppy0A1EmNHFMTVRxwxrneCnHtFoTQwKJ9XTs81v32zUMVTsnM+kzl0NXl4SG4i+//DcOpMabZVMPVcmmWzoNsExOcy6CaBZLhtXx5zUgAU4tU0W5sJxcvopd4vNTThLoML/xL3AE5FhoDsBEQH+ZR3xJZlW/zrV3wMsLOaB0Lx+IcGT95bchCIUf6/LbGENvk53gDImAcn5RICTvtiz3/vPTdOwEJoEm75ej+82ScdLFXqm/VwQtDGhMN2WzflxjK9x/1IVGUnjDfIiwNrNcWBDFWXI6S+T1+9CCiUJzNE27K0MN9mpmN7KXRW521gGWeHQ6JGJQNRESuQBQRzo4fTW06SD3zLEOJ3NgArP9YQnfhq3PHpTwNu6IfeGMnn22Ul/hvQBGcOv6aTb5rqD+h6rXXjx5P7Ek3hgFfwy142WkN4p3lmvrRjQgH7Hw8WmrdBF0vhvWcYacZ9zgpCpZDYf4feu1ZNJaRljBf6PhJ8dhZ+yIveUv7VSCn10umcFRLCnUYuvbSLRpHG4LV/qv9KVSF2xPKWWQe5T0Q0WwQ=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM4PR11MB5501.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(4636009)(396003)(346002)(39860400002)(376002)(136003)(366004)(6486002)(53546011)(4326008)(83380400001)(55236004)(38100700002)(16576012)(36756003)(966005)(26005)(5660300002)(31696002)(186003)(8936002)(2906002)(956004)(2616005)(316002)(6666004)(66574015)(66946007)(478600001)(66476007)(1006002)(31686004)(66556008)(8676002)(86362001)(45980500001)(43740500002);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?ZE1oSVBtZFlLeHVUeGNwUVlTKzcyWEJjWW0zaUtBNEZoWHRJU3RiODhHTmVJ?=
 =?utf-8?B?Z3NTY0tQRTdEUFdiY2s1VXNNTzlWVmpGQ25kZm0zRjlnYjQ5b0hTd2FRRng2?=
 =?utf-8?B?UWNlSHRFMXRqWTFSeFhWNnpQYmxnSU1mVHpCUVp1ekRXN2l3MExmbXQ0cWlo?=
 =?utf-8?B?ampKSEVNblEyMkZCdllWb3NGeUUxNG4xcnBJMEMvemkyNjdnQktSZGF3MTZC?=
 =?utf-8?B?Y01TSkFnZlc0eEZlR2VPbytDQmtEUURKN00zN3VSWFQ4VjlxNERtSTlRTXJt?=
 =?utf-8?B?Slh6NlRIVmVLRU0rTHBwY0c0Yks1Sk1vamRCNTd1akFvM1AwYVlJbW1mOTk4?=
 =?utf-8?B?RlJKL0l2Z21wTnhPZEYzT3Jqc094a2dDdHJRb2thd1U3S3N6M2E1M2l0MFM1?=
 =?utf-8?B?Mmk5ejJ3dDZGdGd2OThqRlQ0WmZtVEZRR2UxaGpDWGpKQlJCbXZpYkYyNWhI?=
 =?utf-8?B?UzBQM1Y2KzJOM1E2TUxmR045SndPc0tURGh3d3JsMnhremN0Sk9zeHNFSk9D?=
 =?utf-8?B?d0ExWWJxM3dmMHBjM0tEMjFtL3VHWmtEczRFOGF2b2N4M2hJNFdCS3pvd1g5?=
 =?utf-8?B?MlZvQWdONjFnRmRjV3NjTFFMOFc3dkJLOEh2dHJiWXlwTFpWUkVhQnVKODhj?=
 =?utf-8?B?WjdlZE1FR0lxMytkRGE3UnphclF1czlWY3hwc1Rmd3NYUDlDYktDMWZnR0VE?=
 =?utf-8?B?WjNhRnZvVGwwZHM5blVzNm5WNmRJRVlOZEdYS1ZnR0tLRXpRTTBvTzFERkRX?=
 =?utf-8?B?STVhbVFSNUlNaDJjRkJCZThoOW5HL1BtZ0N2WEZvdmtId2tpRFBqSUpWbC9I?=
 =?utf-8?B?dzAyMVlTdnhIa1hKZkZUdHNnNkxBSFBFOVhWNjBDVXA1WXZsODZScHlUcHVv?=
 =?utf-8?B?a25aMUNyU0hCOVlIeUlibXBhbHg4cGxjSEY2TnpOVkRBSXpEZVFtU3R4cUZ2?=
 =?utf-8?B?VU1TZ0hORHMxcHV3aTJ6NyttV25xazE0NU1vbm01aXhGSFVzWHk2dW5FOGpE?=
 =?utf-8?B?S0xBVjg4WHR6bTdTM3VSaFNEdDRqd1Z6VjJRM2ZkTGNEdjVtbjdOUUs0dGxK?=
 =?utf-8?B?d2EwcmFIckhrYThSaVhyTEROelhhN1QvVGZKQ3k1U3NqM3NoRmFMcnJJaVpL?=
 =?utf-8?B?TUFaVnN1U0tJTVpsTENxOVhHNWlQUktZRGVCa2Z4cHo0RWZ3b1UvbS9iYmFW?=
 =?utf-8?B?bkdMVjdjM09XbHhvcUk5SFVsR1d4RlVWSUlUa1BjK0o5ZUhCWGliSjFWZk5E?=
 =?utf-8?B?NWZ3ZEM3MGVXRnlJNmR1dzRJajk4Sk5JZEt0K1NRV3RXNHFQbTFJU2dTWHox?=
 =?utf-8?B?WFZmMTR2VDlueUY5R3hjOWdLZTdmMXA0T2Q3OXRSYWlxdHQ5djVXSmlRdFVh?=
 =?utf-8?B?QVJNZGVKRjdkR0krdkVrUllwdUVOU2dSd1YrZWtrWmUwVE16MWpYczIxcys0?=
 =?utf-8?B?VWx1ZU5TMW45dlNQRTlPaHJpZExSejJhbmp5d3N0QktHcHZOMHZlZkIvQ0pB?=
 =?utf-8?B?SUUzU3JQYzBKVGgwb0R0L2cvMC9BL0NyZW81VlkyYjNYUEpRRkcvcWRqbWx1?=
 =?utf-8?B?eUNPSkxkenJCTUNnb2ord0Y4eDNRZm4wS084NlFDV3R3R002YTRSTFFWZ3lv?=
 =?utf-8?B?akhacnFXR0dNa1J2WUo5RE9xQURwNTRxRk5xUGJ3SnQ1T09YRUREanZRTXZI?=
 =?utf-8?B?SUdKc1RPTGFjczhpSTdNS1hzU3V3QkVIaXFVZm5MTW1QUWkwYnN1R0t1TjlQ?=
 =?utf-8?Q?c46GJyGNg62KbMVAALTs/V+CdgBnNGrEJPtj2SE?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 91e329da-a1d6-44f7-027b-08d94a7cf53b
X-MS-Exchange-CrossTenant-AuthSource: DM4PR11MB5501.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 19 Jul 2021 06:18:00.1505 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: 1QUvGETaaOGOMdEnTY0qP46cX3jT4AmOEdT4icxpvnBFuTgkr/76okFTDQJrFOTWoD5KYn9D6WGc2FDkHGTnhSC/z88V5QbGhcOoIQ+lXq4=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DM6PR11MB2587
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] [PATCH] drm/i915/display: Fix shared dpll mismatch
 for bigjoiner slave
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

UGF0Y2ggbG9va3MgZ29vZCB0byBtZS4KClBsZWFzZSBmaW5kIGJlbG93IHNvbWUgc3VnZ2VzdGlv
bnMKCk9uIDcvMTUvMjAyMSA0OjA0IEFNLCBNYW5hc2kgTmF2YXJlIHdyb3RlOgo+IEN1cnJlbnRs
eSB3aGVuIHdlIGRvIHRoZSBIVyBzdGF0ZSByZWFkb3V0LCB3ZSBkb250IHNldCB0aGUgc2hhcmVk
IGRwbGwgdG8gTlVMTAo+IGZvciB0aGUgYmlnam9pbmVyIHNsYXZlIHdoaWNoIHNob3VsZCBub3Qg
aGF2ZSBhIERQTEwgYXNzaWduZWQuIFNvIGl0IGhhcwo+IHNvbWUgZ2FyYmFnZSB3aGlsZSB0aGUg
SFcgc3RhdGUgcmVhZG91dCBpcyBOVUxMLiBTbyBleHBsaWNpdGx5IHJlc2V0Cj4gdGhlIHNoYXJl
ZCBkcGxsIGZvciBiaWdqb2luZXIgc2xhdmUgcGlwZS4KPgo+IEJ1ZzogaHR0cHM6Ly9naXRsYWIu
ZnJlZWRlc2t0b3Aub3JnL2RybS9pbnRlbC8tL2lzc3Vlcy8zNDY1Cj4gQ2M6IFZpbGxlIFN5cmrD
pGzDpCA8dmlsbGUuc3lyamFsYUBsaW51eC5pbnRlbC5jb20+Cj4gQ2M6IEFua2l0IE5hdXRpeWFs
IDxhbmtpdC5rLm5hdXRpeWFsQGludGVsLmNvbT4KPiBUZXN0ZWQtQnk6IFN3YXRpIFNoYXJtYSA8
c3dhdGkyLnNoYXJtYUBpbnRlbC5jb20+CmNoZWNrcGF0Y2ggd2FybmluZyBhYm91dCB0ZXN0ZWQt
YnkgdGFnLgo+IFNpZ25lZC1vZmYtYnk6IE1hbmFzaSBOYXZhcmUgPG1hbmFzaS5kLm5hdmFyZUBp
bnRlbC5jb20+Cj4gLS0tCj4gICBkcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2Rp
c3BsYXkuYyB8IDQgKysrKwo+ICAgMSBmaWxlIGNoYW5nZWQsIDQgaW5zZXJ0aW9ucygrKQo+Cj4g
ZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZGlzcGxheS5j
IGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kaXNwbGF5LmMKPiBpbmRleCA2
NWRkYjZjYTE2ZTYuLmMyNzRiZmI4ZTU0OSAxMDA2NDQKPiAtLS0gYS9kcml2ZXJzL2dwdS9kcm0v
aTkxNS9kaXNwbGF5L2ludGVsX2Rpc3BsYXkuYwo+ICsrKyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1
L2Rpc3BsYXkvaW50ZWxfZGlzcGxheS5jCj4gQEAgLTkwMDYsNiArOTAwNiwxMCBAQCB2ZXJpZnlf
Y3J0Y19zdGF0ZShzdHJ1Y3QgaW50ZWxfY3J0YyAqY3J0YywKPiAgIAlpZiAoIW5ld19jcnRjX3N0
YXRlLT5ody5hY3RpdmUpCj4gICAJCXJldHVybjsKPiAgIAo+ICsJaWYgKG5ld19jcnRjX3N0YXRl
LT5iaWdqb2luZXJfc2xhdmUpCj4gKwkJLyogTm8gUExMcyBzZXQgZm9yIHNsYXZlICovCj4gKwkJ
cGlwZV9jb25maWctPnNoYXJlZF9kcGxsID0gTlVMTDsKPiArCgp0aGVyZSBpcyBhIGNoZWNrIGZv
ciBiaWdqb2luZXJfc2xhdmUsIGNvdXBsZSBvZiBsaW5lcyBhYm92ZSB0aGlzOgoKaWYgKG5ld19j
cnRjX3N0YXRlLT5iaWdqb2luZXJfc2xhdmUpCiDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKg
wqAgbWFzdGVyID0gbmV3X2NydGNfc3RhdGUtPmJpZ2pvaW5lcl9saW5rZWRfY3J0YzsKClBlcmhh
cHMgaXQgd2lsbCBtYWtlIHNlbnNlIHRvIGNsdWIgdGhlIHNldCBzaGFyZWRfZHBsbCB0byBOVUxM
LCBhbG9uZyAKd2l0aCB0aGVzZSBsaW5lcy4KCkluIGFueSBjYXNlOgoKUmV2aWV3ZWQtYnk6IEFu
a2l0IE5hdXRpeWFsIDxhbmtpdC5rLm5hdXRpeWFsQGludGVsLmNvbT4KCj4gICAJaW50ZWxfcGlw
ZV9jb25maWdfc2FuaXR5X2NoZWNrKGRldl9wcml2LCBwaXBlX2NvbmZpZyk7Cj4gICAKPiAgIAlp
ZiAoIWludGVsX3BpcGVfY29uZmlnX2NvbXBhcmUobmV3X2NydGNfc3RhdGUsCl9fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkludGVsLWdmeCBtYWlsaW5nIGxp
c3QKSW50ZWwtZ2Z4QGxpc3RzLmZyZWVkZXNrdG9wLm9yZwpodHRwczovL2xpc3RzLmZyZWVkZXNr
dG9wLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2ludGVsLWdmeAo=
