Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 935A3204A0F
	for <lists+intel-gfx@lfdr.de>; Tue, 23 Jun 2020 08:41:26 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id E16376E1F5;
	Tue, 23 Jun 2020 06:41:22 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga03.intel.com (mga03.intel.com [134.134.136.65])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 64F476E1F5
 for <intel-gfx@lists.freedesktop.org>; Tue, 23 Jun 2020 06:41:22 +0000 (UTC)
IronPort-SDR: edKxemxG0b38qW1HhT7HmTOexvI92b9TnhD/5VKB1guYlZhjxRH9+Kh5MptsFkIHo9XM97f5qS
 3y91N4fGlyfg==
X-IronPort-AV: E=McAfee;i="6000,8403,9660"; a="143972916"
X-IronPort-AV: E=Sophos;i="5.75,270,1589266800"; d="scan'208";a="143972916"
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga007.fm.intel.com ([10.253.24.52])
 by orsmga103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 22 Jun 2020 23:41:21 -0700
IronPort-SDR: RePhTaczoZf+RZLT9hlhXZoQyd8JpFNuhNC5l9vKec3J1herQ6pk2UE6wuex6sFMoQMdjRUOmU
 v+phkR5I8weA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.75,270,1589266800"; d="scan'208";a="263213162"
Received: from fmsmsx107.amr.corp.intel.com ([10.18.124.205])
 by fmsmga007.fm.intel.com with ESMTP; 22 Jun 2020 23:41:21 -0700
Received: from fmsmsx603.amr.corp.intel.com (10.18.126.83) by
 fmsmsx107.amr.corp.intel.com (10.18.124.205) with Microsoft SMTP Server (TLS)
 id 14.3.439.0; Mon, 22 Jun 2020 23:41:21 -0700
Received: from fmsmsx610.amr.corp.intel.com (10.18.126.90) by
 fmsmsx603.amr.corp.intel.com (10.18.126.83) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.1713.5; Mon, 22 Jun 2020 23:41:07 -0700
Received: from FMSEDG001.ED.cps.intel.com (10.1.192.133) by
 fmsmsx610.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256) id 15.1.1713.5
 via Frontend Transport; Mon, 22 Jun 2020 23:41:07 -0700
Received: from NAM11-BN8-obe.outbound.protection.outlook.com (104.47.58.177)
 by edgegateway.intel.com (192.55.55.68) with Microsoft SMTP Server (TLS) id
 14.3.439.0; Mon, 22 Jun 2020 23:41:05 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=An+Z7LbUVQI+qAWqhjCmOVCeJf3jWCwnuh92qPykchoLVUmc38GjHVLIhmQHe+K5UMaPmlggGoWry9gWbPBjk+Jen9BXGa+Fe9cP5nIkcWHKJuND7mrRsS7ec8gXESAFkZEOGcVUC+zdFgrSDKeUAuxLgt3xycFfc1kAnnogt6BsQ5NCmZO9RG8St5cl8KGOTJzriwN3OwKU79SbutP2O1kalFWn8QzIKxfCTTUcwKr1fXOzBH7XJTwD4PNUJZp85PGjS49iWKgdLr0+2rNZvzmxQdMOXrNzMxEwUnIC3g8/mZuKEJL0vNIHp2PsjqRFNB1Ls2Z9J2lYcCjxszS9bg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=+oLaLXrvEqh0CJdC09R8QE6hyqv1mt2itl5nWlNz2vI=;
 b=HGafwt4jrV/VW3kmQRVJm2B5kn1/ilq4sp4q2MIDui6UmteV/6z/7mbkuOrRlp8di7HL74s5Z2fNNyFLcV+GUPfZEk4YP3Tu5aeW791aPCsTVpL/6y1tTBWM3NZBORhz5TXNIRdMhO6AJVnCd2U2QscgDHgkt8P/CeMe82xYwBLTBeo3oBGuaFNvt4M8Gm1bHON5CC2/IaRUTzs4F5M+htEbkhESAKldErORBV7EVOP2hJLLDicxARlSj0saQVGnwyq3Di488kBsV9JbK7CeBnzIw901qHAJLfrY+yr0Lkf0jlNTMKBsA8akwhUxLtZngOUwbeG7o9qZovzxBUiFuQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=intel.onmicrosoft.com; 
 s=selector2-intel-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=+oLaLXrvEqh0CJdC09R8QE6hyqv1mt2itl5nWlNz2vI=;
 b=Tz4Mc7xF553MximFijjlB1GWJ3+LsXc4XzI7gm3owgCvPlu6w17US4QP850inNiNmUoh7wBwRpzCRDwdNogl7IaO4F1ArD3D8YXOhr1gLpF7CRUJnja2FYxj2ksbIxA4GPzz726cy4vPAlQQcAu8MfrFcSXwCGjK1yNASqTtN+E=
Received: from SN6PR11MB2558.namprd11.prod.outlook.com (2603:10b6:805:5d::19)
 by SA0PR11MB4671.namprd11.prod.outlook.com (2603:10b6:806:9f::17)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.3131.20; Tue, 23 Jun
 2020 06:41:03 +0000
Received: from SN6PR11MB2558.namprd11.prod.outlook.com
 ([fe80::4552:95cc:c5aa:72fd]) by SN6PR11MB2558.namprd11.prod.outlook.com
 ([fe80::4552:95cc:c5aa:72fd%6]) with mapi id 15.20.3109.027; Tue, 23 Jun 2020
 06:41:03 +0000
From: "Tang, Shaofeng" <shaofeng.tang@intel.com>
To: Zhenyu Wang <zhenyuw@linux.intel.com>, "Lv, Zhiyuan" <zhiyuan.lv@intel.com>
Thread-Topic: [Intel-gfx] [PATCH] drm/i915/gvt: query if vgpu is active via
 GETPARAM IOCTL
Thread-Index: AQHWQ7dw7e5coFNvfkyF1n1UEpSr+qjblbIAgAi/pICAATxEMIAACDgAgAArcmA=
Date: Tue, 23 Jun 2020 06:41:03 +0000
Message-ID: <SN6PR11MB25580A9739F070F64E60437DE2940@SN6PR11MB2558.namprd11.prod.outlook.com>
References: <1592296160-3784-1-git-send-email-shaofeng.tang@intel.com>
 <159233324036.19488.6385709597388673560@build.alporthouse.com>
 <20200622082319.GZ5687@zhen-hp.sh.intel.com>
 <SN6PR11MB255859A6CB9B6BB51C1FB578E2940@SN6PR11MB2558.namprd11.prod.outlook.com>
 <20200623034442.GB5687@zhen-hp.sh.intel.com>
In-Reply-To: <20200623034442.GB5687@zhen-hp.sh.intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
dlp-version: 11.2.0.6
dlp-product: dlpe-windows
dlp-reaction: no-action
authentication-results: linux.intel.com; dkim=none (message not signed)
 header.d=none;linux.intel.com; dmarc=none action=none header.from=intel.com;
x-originating-ip: [192.102.204.45]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 5d6231b6-b35c-449e-65cd-08d81740666f
x-ms-traffictypediagnostic: SA0PR11MB4671:
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <SA0PR11MB46716776480435079E58552AE2940@SA0PR11MB4671.namprd11.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:9508;
x-forefront-prvs: 04433051BF
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: N+bPvKx+w5dHqJGXEhRVxSSKiTJOGrdeA+k/8vco3O4q3R8TjHaZ3mB02KNVANtab6YpIHKALJwYnsVwdp9D8ykgxwHUn9/ydDUUnvhRcXY1o1gOEPiVGGb/5jR4YHlhTEms4rrqtNkpoTJoFJ750BStR4IR/13828gdnAnpQv1ysgbyPK3C89DDtGu6kGCk3DJ5261xpK5xcvHSkU60IwwUCsH7UyXfo3Bh3d14R0dXkGCAEuOR2XJC/B9KQ00qMd1TW/mfg4Q+zqzWFYTe9vax1iI9pje3rg38YtmN2e7pP9aNX2uz3+ApxXTwYlUcsBa/jcKEbae/O5pugFS7zA==
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:SN6PR11MB2558.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFTY:;
 SFS:(4636009)(366004)(396003)(376002)(346002)(136003)(39860400002)(478600001)(316002)(55016002)(110136005)(26005)(52536014)(5660300002)(9686003)(71200400001)(6506007)(83380400001)(4326008)(186003)(54906003)(53546011)(7696005)(76116006)(66556008)(8936002)(8676002)(64756008)(66476007)(66946007)(66446008)(2906002)(33656002)(6636002)(86362001);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata: +D0mPn2pqdV3ot70pnVEumy+J3hRq7fNnZgjiJoQ5AMPBcritvabNNkIidRZJ99oBqwcOennsEVSVJfM0Wob1v7fCxevNAe064I8N5Aa4CyqXbRDN2DMSkULZvCDZ74B/nqCJ4fRPecWhPm/p3RA8KTqD7xn9s/b9qbQYwBxK73rCS4jbJEMPpO0B+j9/rifgvu2do9lBICzscQS/1VsuwX3NVj1A4DfJElX0r4f4pWLedxh68Aa0N0ehkgE/sId1OAjXtOTl6eby7turUDqYEmtdW42yIFncS30zUrXsrTm7GvYzCzxmyVYRjTbVJqG6B5+76wGvtgdQ0a7q0RTxUg9JJiyQ5Mqum4BngHhT8aWPVmcsQBmqHhaL8wkxwliN0E1i16zfdYB4hHVZdUFcfDEBwK5BmKB+Ta9AQ2nyAfn2sQ8UaZyFYWj4y/GtWSNI9AceB1Tv7L5ctHHeH5xcm9sueocAGDPg+A4PSnqgRTC8sHFQoFD9z1ND/yX22RE
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: SN6PR11MB2558.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 5d6231b6-b35c-449e-65cd-08d81740666f
X-MS-Exchange-CrossTenant-originalarrivaltime: 23 Jun 2020 06:41:03.6028 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: RIAVsp+ELki2QJyBSoRSd672hV/kS/FUoKt2UDOksZmlPLiBkdvYkj+CiajDp7VGWXQRH+i8HYlKp5rWo/Wc3w==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SA0PR11MB4671
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] [PATCH] drm/i915/gvt: query if vgpu is active via
 GETPARAM IOCTL
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
Cc: "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>, "Huang,
 Yuanjun" <yuanjun.huang@intel.com>, Chris Wilson <chris@chris-wilson.co.uk>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Hi Zhenyu, and Zhiyuan

Thanks a lot for your comments. and glad to know it is in the TODO list.
We really need this feature to make our released image workable on both GVT-g and GVT-d/native.
Multiple plane/overlay are important to us for meeting the Graphics performance target.
Do you have an estimate when the feature will be available?
and what version of this kernel will provide it, or do you have a back-porting plan for Kernel 5.4?

BR, Shaofeng

-----Original Message-----
From: Zhenyu Wang <zhenyuw@linux.intel.com> 
Sent: Tuesday, June 23, 2020 11:45 AM
To: Tang, Shaofeng <shaofeng.tang@intel.com>
Cc: Chris Wilson <chris@chris-wilson.co.uk>; intel-gfx@lists.freedesktop.org; Lv, Zhiyuan <zhiyuan.lv@intel.com>
Subject: Re: [Intel-gfx] [PATCH] drm/i915/gvt: query if vgpu is active via GETPARAM IOCTL

On 2020.06.23 03:46:55 +0000, Tang, Shaofeng wrote:
> Hi Zhenyu and Chris,
> 
> Yes, I agree with you.
> It must be better if only the workable planes/overlays are returned from KMS.
> but currently, KMS still return all planes. and User did not know if 
> it is a virtual GPU or a native GPU. Do you know if there is a plan to fix or implement it? or any roadmap for sharing.

We should expose this info via PV to let guest expose correct config from KMS.
I've asked Zhiyuan to add todo for the fix. Better include you to be clear on the issue and requirement.

> If KMS does not work in this way,  we have to customized our image for this issue. 
> 2 possible solutions,
> first, provide 2 customized image, 1 for VM, and 1 for Native or bare-metal.
> and hard-code to only use 1 plane in the VM image.
> Second, only provide 1 image, and  hard-code to only use 1 plane for both VM and native.
> None of them looks good to us.
> We don't hope to hardcode the plane usage in user-space either, so this API is really helpful before KMS work as expected.
> 
> As you mentioned there is a potentially good reason to let the user 
> know if it is a virtual GPU or not. it is not a hardcoding api limits.
> I suppose it is a ability to support developer for optimizing the 
> performance on VM Including choose an appropriate renderer for better performance on VM.
>

But simply expose virtual GPU flag doesn't give you reliable indicator for performance e.g it doesn't tell you what's rendering is preferred.

Or either you do some runtime profiling or try to detect either it's passthrough or mediated device e.g from gpu resource size, etc. That's your guest application's choice.

> BR, Shaofeng
> 
> -----Original Message-----
> From: Zhenyu Wang <zhenyuw@linux.intel.com>
> Sent: Monday, June 22, 2020 4:23 PM
> To: Chris Wilson <chris@chris-wilson.co.uk>
> Cc: Tang, Shaofeng <shaofeng.tang@intel.com>; 
> intel-gfx@lists.freedesktop.org
> Subject: Re: [Intel-gfx] [PATCH] drm/i915/gvt: query if vgpu is active 
> via GETPARAM IOCTL
> 
> On 2020.06.16 19:47:20 +0100, Chris Wilson wrote:
> > Quoting Shaofeng Tang (2020-06-16 09:29:20)
> > > [Why]
> > > Query if vgpu is active, it is useful to the user.
> > > Currently, only the primary plane is usable when vgpu is active.
> > > The value of vgpu active is useful for user to determine how many 
> > > planes can be used. also useful for user to determine different 
> > > behaviors according to vgpu is active or not.
> > 
> > The number of planes must be queried via kms, and all such kernel 
> > capabilities should be declared via the appropriate interface.
> > 
> > I am not saying that there is not potentially good reason to let the 
> > user to know it's a virtual gpu, but hardcoding api limits in the 
> > client based on the parameter is a bad idea.
> 
> Yeah, as I replied for internal before, guest shouldn't detect via this kind of interface, which also doesn't reflect any gvt host capability change. For any current gap, let's fix gvt or vgpu handling instead.
> 
> Thanks.

--
Open Source Technology Center, Intel ltd.

$gpg --keyserver wwwkeys.pgp.net --recv-keys 4D781827
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
