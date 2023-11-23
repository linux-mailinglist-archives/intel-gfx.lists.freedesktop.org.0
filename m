Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 05B567F58FF
	for <lists+intel-gfx@lfdr.de>; Thu, 23 Nov 2023 08:18:31 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 3F8DE10E0D8;
	Thu, 23 Nov 2023 07:18:29 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.55.52.136])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 0049B10E0D8
 for <intel-gfx@lists.freedesktop.org>; Thu, 23 Nov 2023 07:18:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1700723907; x=1732259907;
 h=from:to:subject:date:message-id:references:in-reply-to:
 content-id:content-transfer-encoding:mime-version;
 bh=XogAYNnbilndVl9vRA9OqXlT+2p1W/yP/0aXDdmNYPk=;
 b=D+97xkoUEGetGGpKbZdCROU+wNh5rlTQYVKKIqRuVuR/5vT3nnAYpA3f
 yAMLJUeMWHwHFiNGpGkwqWZ1yqOw6wWrjEZ4QA/Ryymb+NCntTVtrMZBv
 01DxBaJAvSGgy81KezNpWr+w775sb/8gyFvDLsO0g/TRhCVMt1qsAdARp
 fayopeHcuv5pSrFHThFHjKcGoL2RBJ8vQrOAbSU91cGrIE1t+9pjYS5SA
 8ezt1mDnF1m2ZEe5YEXxo6kT8Ggj9DUl0W5EtaPY9JG01LSF1gTdpSbTO
 yNjeVyaT8O1KuL5hd951KEvr3ynDs+1ZVtRx5ymmSPze2wjgUOAvx+QLF w==;
X-IronPort-AV: E=McAfee;i="6600,9927,10902"; a="371563622"
X-IronPort-AV: E=Sophos;i="6.04,220,1695711600"; d="scan'208";a="371563622"
Received: from orviesa001.jf.intel.com ([10.64.159.141])
 by fmsmga106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 22 Nov 2023 23:18:27 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.04,220,1695711600"; d="scan'208";a="15249077"
Received: from fmsmsx603.amr.corp.intel.com ([10.18.126.83])
 by orviesa001.jf.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 22 Nov 2023 23:18:27 -0800
Received: from fmsmsx603.amr.corp.intel.com (10.18.126.83) by
 fmsmsx603.amr.corp.intel.com (10.18.126.83) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.34; Wed, 22 Nov 2023 23:18:26 -0800
Received: from fmsedg601.ED.cps.intel.com (10.1.192.135) by
 fmsmsx603.amr.corp.intel.com (10.18.126.83) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.34 via Frontend Transport; Wed, 22 Nov 2023 23:18:26 -0800
Received: from NAM10-BN7-obe.outbound.protection.outlook.com (104.47.70.100)
 by edgegateway.intel.com (192.55.55.70) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.34; Wed, 22 Nov 2023 23:18:26 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=gfXb7ty86RFgxSXED9hsIOlkOKjhSJFD/NvxSob+ELdItiOPUSBFYbu4w73K+iHVXvvcBNIz03e5XoaBr5XX7b66weL4sKatKKizy0gDYBvV5QW1ykWMXwRNXu2/vo7o0Il8QvNyglsCSUb1P4zwHf4j5D7oosL2kl/0pNiEpg+wE2MPGVzkrp9n5oVyMQ3lkiCREcfkSo4sa0+kaRd4ye/EO5FN1p75bEZ7CE5UsaPydAYaw619iBBKYDZjeS5d06u2WCII1A7rZ/VKF+k14NAXeWgmZ9s0XSl+xDOmWgwJkfn8LYHWt6g2lQ5ubyuBuc/7In0ZsYExFm/MmPBOog==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=XogAYNnbilndVl9vRA9OqXlT+2p1W/yP/0aXDdmNYPk=;
 b=kMCI8F0szVPjOtDlqMRLDnVSqDupnVeT2wRWjQL+K+yv5Cyh5aNsWYK5jzQabIxjUDxhGaRx/reWVO8rgnSUOqXIOErO/InnM27F/Qu9p86RklaFER52ubFhaVlZdgamuq3etbWZWSHjlm29JwG54dfOpvJDpJ/0U+0K+cgTskTkpHA0Q4Nz0D8EP9j/Ic+XR0brSSIUwGNfguzEfAu4Q8Pn5ecVluIBuMn3SBcbqBkh+z1L3G0MMkPqyV94SDHmOPI0eXgTVQ+uz1ETrnqfe/Tf2kGsH+VjMVakRoJTtqtQczLnyWDYfrB4NuJB2OV9mWak/qJnCzQhF7HhUdW2jw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from DM4PR11MB6019.namprd11.prod.outlook.com (2603:10b6:8:60::5) by
 IA0PR11MB7401.namprd11.prod.outlook.com (2603:10b6:208:433::18) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7025.20; Thu, 23 Nov
 2023 07:18:24 +0000
Received: from DM4PR11MB6019.namprd11.prod.outlook.com
 ([fe80::ea97:f0a2:fffc:b892]) by DM4PR11MB6019.namprd11.prod.outlook.com
 ([fe80::ea97:f0a2:fffc:b892%3]) with mapi id 15.20.7025.019; Thu, 23 Nov 2023
 07:18:24 +0000
From: "Hogander, Jouni" <jouni.hogander@intel.com>
To: "ville.syrjala@linux.intel.com" <ville.syrjala@linux.intel.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
Thread-Topic: [Intel-gfx] [PATCH 4/4] drm/i915: Move the SDP split debug spew
 to the correct place
Thread-Index: AQHaHXXPUI4QUsUMSkq8NIs/19GD6LCHf5CA
Date: Thu, 23 Nov 2023 07:18:24 +0000
Message-ID: <7e753904f2ab0bbb5375123558c3a0887ea3fbf1.camel@intel.com>
References: <20231122093137.1509-1-ville.syrjala@linux.intel.com>
 <20231122093137.1509-4-ville.syrjala@linux.intel.com>
In-Reply-To: <20231122093137.1509-4-ville.syrjala@linux.intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: DM4PR11MB6019:EE_|IA0PR11MB7401:EE_
x-ms-office365-filtering-correlation-id: e2deff4b-2053-4cdd-a062-08dbebf4615e
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: Ztolyou7qQD64+xBym4cQs3y9rNJ+ww8QQzKkrL/24dImZUdUEnVlD88fEkI2P6cEfGBoaR5gCmdC+Gzef92Qr3aaBljQEe2FGWcMhMJa6QLMaP5XC92wU5FTn1e7m4YBoancEWFygLM/1wF3Lcb6Gu0rRl9dELTTA2T+SwTBuA1EYfb/UkUOosp0emxDZHe7EPPAhAVuGEcfsxJCguFS8+WrhYOIv1lCoxESesEJwCaWNN0URDf2A+uaElnrPm6pDoK7/V9B2wHASmhbvAOzdhdyIf2Q9Ctn+jJl6clzYPNhlxPTCyFre4mywRxFMZHis4Rb+1fTzzSLQROe+aD6ict3jbZ8CgQ4gbZ5QEK5g007ZWDCiFUk2WyJQvXtKUt0TU+SSIec7TQW0f58m+lrYMOic8jq0mwIZpsQHrhraDGiJT58lWNqK/FSS8xNeswGVrqhLRLskOwBRdm+8nTmRueVeMT/DqVR+GpIbDMNJp7i/zKfKJxuMLbrK09VEKd8wpC+bso4a5yYYkMQ72akrjSeC1prVfDOFVOi6Zvp69x/GQXGMdb6r2Xqi4bIRf3nX4FZB+FIkrP889dVBmAnry3+RDIzeZEtUyAmNW0g+02FEKQPCTHF4t3ZZMXsCLg
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM4PR11MB6019.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230031)(136003)(346002)(39860400002)(376002)(396003)(366004)(230922051799003)(451199024)(186009)(64100799003)(1800799012)(26005)(2616005)(66574015)(6512007)(6506007)(478600001)(71200400001)(122000001)(38100700002)(82960400001)(36756003)(86362001)(38070700009)(4001150100001)(5660300002)(2906002)(8936002)(8676002)(66946007)(110136005)(41300700001)(66556008)(66476007)(91956017)(83380400001)(64756008)(6486002)(66446008)(76116006)(316002);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?QThQSzY1SHNuODJMNDFvVU9hYnN6RG5JRmtKM2RuZWJjN1JFS0diZjhBdmJ1?=
 =?utf-8?B?LzIrWXRnUU94c1BWenVBeDRab2Y3UmpLam9nMkIxZXdQM21qd00vWDZBbC96?=
 =?utf-8?B?MHh0eGdobGE1V3cwdFdJdmorYTVnalpPemlyR2JpV2YyM01WZllmSU8zdEky?=
 =?utf-8?B?cjR2by9vOHlBdmk4Z08rc2N6V3kxR3VXL0lPTmI2MFpISUlpTmJkdngrOExs?=
 =?utf-8?B?YmZ1R2FYZWwzWXpuNWpqdXQ2QzM3L0ZxWFJqV2dtMW8vVnkwWG5BRDkyTXlC?=
 =?utf-8?B?SnV2eExkdXgyclFzZFRTME9SRU5mY1dmNTFXY2Q0Wk43dEJySWxaMDlWSWhu?=
 =?utf-8?B?d1lEakVUVjY0Vk5yMEVTVWF5N1poOXdGa0haSStyRzgyaGVHSFNtR3kzUzJ5?=
 =?utf-8?B?M0tHZWdnNDVMUHV4Q3NnYUxpcVRtTWtJVFZMT0FYc2xOa2RQVlh1TC9QUHll?=
 =?utf-8?B?eEZXSmN4UWFRZEtwMnpRUjVCcWFHZkNpRFhpYmJIclFKK1RCNlFscHhIMDBo?=
 =?utf-8?B?Y3g2YkdQdVphTlMrWXZSdFdRbzFXWmxiRUpPMFRBekxNMTNhUDNjOWxuY2tC?=
 =?utf-8?B?NlU5c3Z1Y2dXUExDcHFCcnlGMHN3QXJlenRkcUFYci9aSHA0VTJ2NExaKzlU?=
 =?utf-8?B?Y1JtM1o4ZHVLNEhFMHJGaStVSGRIZ2ZkS09NaGNmWnRVcUFxeGxWMHEwTWhs?=
 =?utf-8?B?SlM3YWFJcGprZzdDOVVkSUNEbXd5U3NabHg3ZDU0L1FkWWNVWUxsd2NrVXJF?=
 =?utf-8?B?SjBsY0VCK1JLa2QraFhUTDUySXZCeVloRENxUFdodDFUK1ZBeGdXTVgyTThZ?=
 =?utf-8?B?YUhQc044dlh0S1lYQXE3RndDTzFoN0FjVWpFLy9BSlhYL1ZrV3BvY3UzZTNK?=
 =?utf-8?B?RS96elVVK2lOeDhhc1lqbkl4dmtzbXM4My84cnh3Q0IzekRRTnQ2MnlYK0tE?=
 =?utf-8?B?eDZtb3ZhTWZaejE5R0ZUd2VQWU93M3JxbEVwOVRaQ3Q5blJidkhGampKWFVi?=
 =?utf-8?B?V2lmT25SYkVUQ2tjVmgxYXRienR1elFlWmR1M084Szdoc3NaWkdIcEpMSlZh?=
 =?utf-8?B?K1puWGJDUFkzZlhOYm9MeXd2WmUrMG1MT0wvcEduZklOWHgwdUlhbloxeHdZ?=
 =?utf-8?B?VGZMUDluQ01pS1Z1TFIzK0Rhdk9tdGRIY2tmemhwTnNXOGQ5MktlcGdSRTRP?=
 =?utf-8?B?c0UxYVkwZFA0RWkwTkdHUVBoc1VSOVJZUHF0VGZkSlRlVmp4VVV4bU5POFpo?=
 =?utf-8?B?ZmhPdHZZaXBKUWx1c21CQVJ5RC9mV3p0VjlMZFJGQlVJUmdKbm1hVHVYd2E1?=
 =?utf-8?B?ZEtBZHpoK0NPRjFMWWt2c3JoeGVvVkcrcko1Z1o2T3E4UWk3ZXEvTnFjUjlu?=
 =?utf-8?B?Y3FYc2l2ZEFPU0pHL1hhQ0lwc2pJRnR0S1UxQ1BieFV1anhnSUErRElXa1kw?=
 =?utf-8?B?eVJtaHhnUUlKWFI0K3pBeFdKQWpRSmR2bndOWkdHNWJwTnk4bGx2bTBrajgx?=
 =?utf-8?B?SmdoMUtsak9XRGQrMVFjMUdwclJEM3hlZ25rd0hKUU5nb3JUSnVad3hkZld1?=
 =?utf-8?B?Q3FYdkVFbjdRcG9BcnJvTzBrZlBsRGtrZFkzRGFYM1UvdE1wQ2V4aVIrdzh6?=
 =?utf-8?B?Y1pzbEdDRlV5V3ArdVZmb3BDTHZmM2FsSWI2S2JLN25YUDJwZzZrU2FEU0p2?=
 =?utf-8?B?cC9DdW1CWlpSU0dsbnlJV1JRTzZVRm8vN3hjWHhZM1A5a0VjSHpyaGp5Q0dv?=
 =?utf-8?B?dXRSdzVxOTBEYzNpSStOSXp5MjNZTHBoUTJFVnhGTjFTdm56ZkF5RDBzeXpL?=
 =?utf-8?B?d3FWcE5yYVFNWXdTa2t2WXRWYnAxTW15azc5NlFtbU1FU1hSZ0VqNldpSm8w?=
 =?utf-8?B?dVhvL3Z4M3ZlOEs5WFBnWTBEcFkzZTJIYVBzTXZkbnZMQ3ErSHRMR3VRL290?=
 =?utf-8?B?RjVxOFo2YUdxb0Z4aE5zdkV3VGVUMmtZV3MwYThEYy9LVEkrdENLVlp4Zjlu?=
 =?utf-8?B?aVBVNFVHdlF0SGxYMDVWS1JMVFpzVWMwN0VHOXRrNC9vYXFQODBsL21LUHAr?=
 =?utf-8?B?MDJSTmErdjVtMnFPeHdJM1R3a2J6bUJraGY4Y1hHQ2orSXhUQWErRDNnUGJX?=
 =?utf-8?B?RDJQR0t5NGlDcklTTWppZnJQVjl3Vk5TY3EyY0RlREFaMjJIM1dSSVVucVcz?=
 =?utf-8?B?akE9PQ==?=
Content-Type: text/plain; charset="utf-8"
Content-ID: <19787C254F2249419835A39FCB075880@namprd11.prod.outlook.com>
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: DM4PR11MB6019.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: e2deff4b-2053-4cdd-a062-08dbebf4615e
X-MS-Exchange-CrossTenant-originalarrivaltime: 23 Nov 2023 07:18:24.1056 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: 8TivjWQnqb5+7VhnqKeXuj8HXMoY5hqsbLwhsi1ms58Up+yEbSqVxoTORB1fGwPtIzFeWTtxHypNw9zfWcPxJSIscTqcV9I2zUil0kPGWlQ=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: IA0PR11MB7401
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] [PATCH 4/4] drm/i915: Move the SDP split debug spew
 to the correct place
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

T24gV2VkLCAyMDIzLTExLTIyIGF0IDExOjMxICswMjAwLCBWaWxsZSBTeXJqYWxhIHdyb3RlOgo+
IEZyb206IFZpbGxlIFN5cmrDpGzDpCA8dmlsbGUuc3lyamFsYUBsaW51eC5pbnRlbC5jb20+Cj4g
Cj4gQWRkaW5nIGFkLWhvYyBkZWJ1ZyBwcmludHMgYWxsIG92ZXIgdGhlIHBsYWNlIGlzIG5vdCBn
b29kLgo+IE1vdmUgdGhlIFNEUCBzcGxpdCBkZWJ1ZyBzcGV3IGludG8gdGhlIHByb3BlciBwbGFj
ZSAoc3RhdGUKPiBkdW1wZXIpLgo+IAo+IFNpZ25lZC1vZmYtYnk6IFZpbGxlIFN5cmrDpGzDpCA8
dmlsbGUuc3lyamFsYUBsaW51eC5pbnRlbC5jb20+CgpSZXZpZXdlZC1ieTogSm91bmkgSMO2Z2Fu
ZGVyIDxqb3VuaS5ob2dhbmRlckBpbnRlbC5jb20+Cj4gLS0tCj4gwqBkcml2ZXJzL2dwdS9kcm0v
aTkxNS9kaXNwbGF5L2ludGVsX2NydGNfc3RhdGVfZHVtcC5jIHwgMyArKysKPiDCoGRyaXZlcnMv
Z3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZHAuY8KgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKg
IHwgNyAtLS0tLS0tCj4gwqAyIGZpbGVzIGNoYW5nZWQsIDMgaW5zZXJ0aW9ucygrKSwgNyBkZWxl
dGlvbnMoLSkKPiAKPiBkaWZmIC0tZ2l0IGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9p
bnRlbF9jcnRjX3N0YXRlX2R1bXAuYwo+IGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9p
bnRlbF9jcnRjX3N0YXRlX2R1bXAuYwo+IGluZGV4IDViY2RiZjA4MzI4MS4uZTYyYWZkMjk4MTkx
IDEwMDY0NAo+IC0tLSBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfY3J0Y19z
dGF0ZV9kdW1wLmMKPiArKysgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2Ny
dGNfc3RhdGVfZHVtcC5jCj4gQEAgLTI2Myw2ICsyNjMsOSBAQCB2b2lkIGludGVsX2NydGNfc3Rh
dGVfZHVtcChjb25zdCBzdHJ1Y3QKPiBpbnRlbF9jcnRjX3N0YXRlICpwaXBlX2NvbmZpZywKPiDC
oMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqAgc3Ry
X2VuYWJsZWRfZGlzYWJsZWQocGlwZV9jb25maWctCj4gPmZlY19lbmFibGUpLAo+IMKgwqDCoMKg
wqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoCBzdHJfZW5hYmxl
ZF9kaXNhYmxlZChwaXBlX2NvbmZpZy0KPiA+ZW5oYW5jZWRfZnJhbWluZykpOwo+IMKgCj4gK8Kg
wqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoGRybV9kYmdfa21zKCZpOTE1LT5kcm0sICJzZHAg
c3BsaXQ6ICVzXG4iLAo+ICvCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKg
wqDCoMKgwqDCoMKgIHN0cl9lbmFibGVkX2Rpc2FibGVkKHBpcGVfY29uZmlnLQo+ID5zZHBfc3Bs
aXRfZW5hYmxlKSk7Cj4gKwo+IMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgZHJtX2Ri
Z19rbXMoJmk5MTUtPmRybSwgInBzcjogJXMsIHBzcjI6ICVzLCBzZWxlY3RpdmUKPiBmZXRjaDog
JXNcbiIsCj4gwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKg
wqDCoMKgIHN0cl9lbmFibGVkX2Rpc2FibGVkKHBpcGVfY29uZmlnLQo+ID5oYXNfcHNyKSwKPiDC
oMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqAgc3Ry
X2VuYWJsZWRfZGlzYWJsZWQocGlwZV9jb25maWctCj4gPmhhc19wc3IyKSwKPiBkaWZmIC0tZ2l0
IGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kcC5jCj4gYi9kcml2ZXJzL2dw
dS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2RwLmMKPiBpbmRleCAxNDIyYzIzNzAyNjkuLmM2ZTNm
ZThiNzVkMyAxMDA2NDQKPiAtLS0gYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVs
X2RwLmMKPiArKysgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2RwLmMKPiBA
QCAtMjg0NCwxOSArMjg0NCwxMiBAQCBpbnRlbF9kcF9hdWRpb19jb21wdXRlX2NvbmZpZyhzdHJ1
Y3QKPiBpbnRlbF9lbmNvZGVyICplbmNvZGVyLAo+IMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKg
wqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqAgc3RydWN0IGludGVsX2NydGNfc3RhdGUg
KnBpcGVfY29uZmlnLAo+IMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDC
oMKgwqDCoMKgwqDCoMKgwqAgc3RydWN0IGRybV9jb25uZWN0b3Jfc3RhdGUgKmNvbm5fc3RhdGUp
Cj4gwqB7Cj4gLcKgwqDCoMKgwqDCoMKgc3RydWN0IGRybV9pOTE1X3ByaXZhdGUgKmk5MTUgPSB0
b19pOTE1KGVuY29kZXItPmJhc2UuZGV2KTsKPiAtwqDCoMKgwqDCoMKgwqBzdHJ1Y3QgZHJtX2Nv
bm5lY3RvciAqY29ubmVjdG9yID0gY29ubl9zdGF0ZS0+Y29ubmVjdG9yOwo+IC0KPiDCoMKgwqDC
oMKgwqDCoMKgcGlwZV9jb25maWctPmhhc19hdWRpbyA9Cj4gwqDCoMKgwqDCoMKgwqDCoMKgwqDC
oMKgwqDCoMKgwqBpbnRlbF9kcF9oYXNfYXVkaW8oZW5jb2RlciwgcGlwZV9jb25maWcsIGNvbm5f
c3RhdGUpCj4gJiYKPiDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoGludGVsX2F1ZGlv
X2NvbXB1dGVfY29uZmlnKGVuY29kZXIsIHBpcGVfY29uZmlnLAo+IGNvbm5fc3RhdGUpOwo+IMKg
Cj4gwqDCoMKgwqDCoMKgwqDCoHBpcGVfY29uZmlnLT5zZHBfc3BsaXRfZW5hYmxlID0gcGlwZV9j
b25maWctPmhhc19hdWRpbyAmJgo+IMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDC
oMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgaW50ZWxfZHBfaXNf
dWhicihwaXBlX2NvbmZpZykKPiA7Cj4gLQo+IC3CoMKgwqDCoMKgwqDCoGRybV9kYmdfa21zKCZp
OTE1LT5kcm0sICJbQ09OTkVDVE9SOiVkOiVzXSBTRFAgc3BsaXQgZW5hYmxlOgo+ICVzXG4iLAo+
IC3CoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqAgY29ubmVjdG9yLT5iYXNlLmlk
LCBjb25uZWN0b3ItPm5hbWUsCj4gLcKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDC
oCBzdHJfeWVzX25vKHBpcGVfY29uZmlnLT5zZHBfc3BsaXRfZW5hYmxlKSk7Cj4gwqB9Cj4gwqAK
PiDCoGludAoK
