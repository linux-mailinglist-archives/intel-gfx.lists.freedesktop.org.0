Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 12A9620480D
	for <lists+intel-gfx@lfdr.de>; Tue, 23 Jun 2020 05:47:03 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id E5E4B6E348;
	Tue, 23 Jun 2020 03:46:59 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga17.intel.com (mga17.intel.com [192.55.52.151])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 2FD816E348
 for <intel-gfx@lists.freedesktop.org>; Tue, 23 Jun 2020 03:46:58 +0000 (UTC)
IronPort-SDR: H3QzjVSswVI161d8RIFz/kEck2d2QdjTZ08o7mtDO98x8O5tSSQ+FMz8B3Dq8X/Yp9jmFI9D6U
 zTrHqENoAhHw==
X-IronPort-AV: E=McAfee;i="6000,8403,9660"; a="124217081"
X-IronPort-AV: E=Sophos;i="5.75,269,1589266800"; d="scan'208";a="124217081"
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga007.fm.intel.com ([10.253.24.52])
 by fmsmga107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 22 Jun 2020 20:46:57 -0700
IronPort-SDR: CbLQyxRMnq+UEwDqjAoMLogp+uMgmpgq9eQ1ZHN0MFrYkznPB5dcu3pV86xw5ZgTKXUhmBoweF
 NUG4EqR0J+Gw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.75,269,1589266800"; d="scan'208";a="263180781"
Received: from fmsmsx107.amr.corp.intel.com ([10.18.124.205])
 by fmsmga007.fm.intel.com with ESMTP; 22 Jun 2020 20:46:57 -0700
Received: from fmsmsx114.amr.corp.intel.com (10.18.116.8) by
 fmsmsx107.amr.corp.intel.com (10.18.124.205) with Microsoft SMTP Server (TLS)
 id 14.3.439.0; Mon, 22 Jun 2020 20:46:57 -0700
Received: from FMSEDG001.ED.cps.intel.com (10.1.192.133) by
 FMSMSX114.amr.corp.intel.com (10.18.116.8) with Microsoft SMTP Server (TLS)
 id 14.3.439.0; Mon, 22 Jun 2020 20:46:57 -0700
Received: from NAM10-MW2-obe.outbound.protection.outlook.com (104.47.55.107)
 by edgegateway.intel.com (192.55.55.68) with Microsoft SMTP Server (TLS) id
 14.3.439.0; Mon, 22 Jun 2020 20:46:57 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=O1YVG169WFSGN0PR0Aw4bKfeWTAaGwjUWCgrnjAuS+DjdFxu/2ESIFX9xlZjg+lTr/uU/2w8vBO9KySAW2gOusFoo2CkYWceq+rUvJpNTRcad7UWkFE//aYeHf6UXug8Ff2OxyCP36ntssmx51CDrJlDxrI9Z8L0MKTfCa+UrWDATDJH13FzfVYs7SGg2lm/kihM/wYJO5Mf/NgL6mFC8IP9RMtngdoygsuT0n8Q4mSP6nEU7lXDsQhGA1ht6ZhLt8+M8M+pd8J93Ew3ySGexZOFqSafXHl7Eui/B/LsV0vLxNHbNQ2BVhId5ZyDvTRl4+Yw0/9RYxB6PAaS2hR0MA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=Qt3GSacSHHoQhK4unGRNrqb4uYQxvPvvY+oIt1vU4KQ=;
 b=YN+XDftsOyQPhuZAYSh0PBPFJEvrUWlos/ETtbe19gpSTzp1AcYfEHuKMVgwA/GEIa8Ih6yAnhx3BDNX/2dzg3lDoUG8SsCFt7qIlde5zlifJD/vRcvEafI/4j2Je38JR0vUYO3yQP1OB53YMNUTieTc+4AXxbWj1GVCCEdKc0OxZBSC0Xe2EA/Dn9pgeAbqVoHTOLZHKqvBCO6jIBHjKNNRDmF6QZbvZNgPiVdWI6GVfrNIYpHetyirWhlZBNbrkgWFVHh2xT+XQdRPAiMQTvDpPxuAbUnX/U68MaoBw3hZHr34hrQLg2ATxIHriC3JBd4NWOchYu3G3yYCyKuLEw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=intel.onmicrosoft.com; 
 s=selector2-intel-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=Qt3GSacSHHoQhK4unGRNrqb4uYQxvPvvY+oIt1vU4KQ=;
 b=XRgA0OSrIwxprgbp7lKE4hTggLy0hkFmVUk8TtkbxyiHID9epQbrUO0HAge1wtxW9mgtW029ERsCRGc3MkPTZzB8isuFUpfB/ufk3wTuzG/tnp672JMCpnKn/xneF+I/y5rdmB38wZfRy8/3y4P+XlzNMGZkDof/X63G7GLdeHI=
Received: from SN6PR11MB2558.namprd11.prod.outlook.com (2603:10b6:805:5d::19)
 by SN6PR11MB3215.namprd11.prod.outlook.com (2603:10b6:805:b8::31)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.3109.21; Tue, 23 Jun
 2020 03:46:55 +0000
Received: from SN6PR11MB2558.namprd11.prod.outlook.com
 ([fe80::4552:95cc:c5aa:72fd]) by SN6PR11MB2558.namprd11.prod.outlook.com
 ([fe80::4552:95cc:c5aa:72fd%6]) with mapi id 15.20.3109.027; Tue, 23 Jun 2020
 03:46:55 +0000
From: "Tang, Shaofeng" <shaofeng.tang@intel.com>
To: Zhenyu Wang <zhenyuw@linux.intel.com>, Chris Wilson
 <chris@chris-wilson.co.uk>
Thread-Topic: [Intel-gfx] [PATCH] drm/i915/gvt: query if vgpu is active via
 GETPARAM IOCTL
Thread-Index: AQHWQ7dw7e5coFNvfkyF1n1UEpSr+qjblbIAgAi/pICAATxEMA==
Date: Tue, 23 Jun 2020 03:46:55 +0000
Message-ID: <SN6PR11MB255859A6CB9B6BB51C1FB578E2940@SN6PR11MB2558.namprd11.prod.outlook.com>
References: <1592296160-3784-1-git-send-email-shaofeng.tang@intel.com>
 <159233324036.19488.6385709597388673560@build.alporthouse.com>
 <20200622082319.GZ5687@zhen-hp.sh.intel.com>
In-Reply-To: <20200622082319.GZ5687@zhen-hp.sh.intel.com>
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
x-ms-office365-filtering-correlation-id: 014cb52c-6cc4-4d2a-2c0c-08d8172812dc
x-ms-traffictypediagnostic: SN6PR11MB3215:
x-microsoft-antispam-prvs: <SN6PR11MB3215EB9CC3D390354D5FE748E2940@SN6PR11MB3215.namprd11.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:10000;
x-forefront-prvs: 04433051BF
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: 9bYt4LI1z75kMhh4usq6F3vISUw+k01WDCjFLeWpRYPv3i2QS/USKk9+N32gGrX8Gl5FKKppqZiXkstj0HcHLkUmBgQDVTMfnvYOmZ0r9wj6C75KnArCi+u8Pt4GZr5p2FqPCfS162jeyi9LvFEgBdq43FDrbxoueB9bbx2Nn3aZ7lGdNctNolr1820xAMADlnbP8ttM9v/G5L/rm6dDz4H7nq3BqEFGCKP//zoEs7qbCoN7kC3F8FRT5DTqoXoHIgNbkmIfwsC4V72299P+82o5g5YXe6QTc/CzhJU0/YhdOre+y85f0T/lHee4CgfdCaNByf3lAg7wZWDPzxJlNw==
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:SN6PR11MB2558.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFTY:;
 SFS:(4636009)(346002)(396003)(39860400002)(376002)(366004)(136003)(316002)(7696005)(53546011)(6506007)(66946007)(66476007)(66556008)(64756008)(66446008)(110136005)(55016002)(9686003)(8676002)(8936002)(478600001)(76116006)(83380400001)(4326008)(33656002)(71200400001)(2906002)(86362001)(5660300002)(52536014)(186003)(26005);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata: bAlEMpzfRTfr+DHWMWnimsd+KamBZH1XmYpYEFlUPZ63TMXpLBXMnh7oP66iKr9B8w1BGo0bVpHEiGXyAYD5ufrkBobYBzhLO7xh7PAhQjonW9sO5aY+t6JCJqneCn+iJHs6L0njFN9Iwt53LcDRrbU5O8XP1BR2XSA3u/xor4fWpm8h7kCtoNnjCbyUrQu+SF2EcyMp843kMSsrrcu56u/ICCqhJ2ltZu0ki8ar0ge+v5Fe3oc8BrYorxn4GwJCEWC9gkAX12awXKCmb3rzDEOtDBCQM+8pOqIbQCnT+V4hluJPYgRBx/jShliihGQi/D0ljcNaARrah9/ndqBeLuSI6G9RKfhPz20/eMRHRq+oUgz95nz5vmsIvDkDlq/SvFo/p+bOiuokMRjiO/zEtdnzRo9E/OW0XJ3LhXtxcHE137dPsHaAWDGdSevqcNSUIBkpbOMHxxTqLN4nKYwhPbYC0tXUbhaS5Q9oDhRoQthaQz5XeU4ggsPjtvZjtGlI
x-ms-exchange-transport-forked: True
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-Network-Message-Id: 014cb52c-6cc4-4d2a-2c0c-08d8172812dc
X-MS-Exchange-CrossTenant-originalarrivaltime: 23 Jun 2020 03:46:55.3945 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: EFZkWBlwC2BeWCSaDXspUFxBUttQSa/v3IZZa0XX8HXJcUAMl6m823Yd5bsoQZc6rXe46B6fsprHeHqGabFRSg==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SN6PR11MB3215
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
Cc: "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Hi Zhenyu and Chris,

Yes, I agree with you.
It must be better if only the workable planes/overlays are returned from KMS.
but currently, KMS still return all planes. and User did not know if it is a virtual GPU
or a native GPU. Do you know if there is a plan to fix or implement it? or any roadmap for sharing.
If KMS does not work in this way,  we have to customized our image for this issue. 
2 possible solutions, 
first, provide 2 customized image, 1 for VM, and 1 for Native or bare-metal.
and hard-code to only use 1 plane in the VM image.
Second, only provide 1 image, and  hard-code to only use 1 plane for both VM and native.
None of them looks good to us.
We don't hope to hardcode the plane usage in user-space either, so this API is really helpful before KMS work as expected.

As you mentioned there is a potentially good reason to let the user 
know if it is a virtual GPU or not. it is not a hardcoding api limits. 
I suppose it is a ability to support developer for optimizing the performance on VM
Including choose an appropriate renderer for better performance on VM.

BR, Shaofeng

-----Original Message-----
From: Zhenyu Wang <zhenyuw@linux.intel.com> 
Sent: Monday, June 22, 2020 4:23 PM
To: Chris Wilson <chris@chris-wilson.co.uk>
Cc: Tang, Shaofeng <shaofeng.tang@intel.com>; intel-gfx@lists.freedesktop.org
Subject: Re: [Intel-gfx] [PATCH] drm/i915/gvt: query if vgpu is active via GETPARAM IOCTL

On 2020.06.16 19:47:20 +0100, Chris Wilson wrote:
> Quoting Shaofeng Tang (2020-06-16 09:29:20)
> > [Why]
> > Query if vgpu is active, it is useful to the user.
> > Currently, only the primary plane is usable when vgpu is active.
> > The value of vgpu active is useful for user to determine how many 
> > planes can be used. also useful for user to determine different 
> > behaviors according to vgpu is active or not.
> 
> The number of planes must be queried via kms, and all such kernel 
> capabilities should be declared via the appropriate interface.
> 
> I am not saying that there is not potentially good reason to let the 
> user to know it's a virtual gpu, but hardcoding api limits in the 
> client based on the parameter is a bad idea.

Yeah, as I replied for internal before, guest shouldn't detect via this kind of interface, which also doesn't reflect any gvt host capability change. For any current gap, let's fix gvt or vgpu handling instead.

Thanks.
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
