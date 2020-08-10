Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 5BEA32404A7
	for <lists+intel-gfx@lfdr.de>; Mon, 10 Aug 2020 12:23:17 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 202346E094;
	Mon, 10 Aug 2020 10:23:14 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga18.intel.com (mga18.intel.com [134.134.136.126])
 by gabe.freedesktop.org (Postfix) with ESMTPS id EDFF56E094
 for <intel-gfx@lists.freedesktop.org>; Mon, 10 Aug 2020 10:23:12 +0000 (UTC)
IronPort-SDR: 1Fwpbf/XqmcmiNw7Iy2XAV+P4TTVd7G5+s2hKQlR6pwusXmtzADJ1eUp909nunUBdF1Jb/PVg7
 hfIjBLRi0RPQ==
X-IronPort-AV: E=McAfee;i="6000,8403,9708"; a="141112913"
X-IronPort-AV: E=Sophos;i="5.75,457,1589266800"; d="scan'208";a="141112913"
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga004.jf.intel.com ([10.7.209.38])
 by orsmga106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 10 Aug 2020 03:23:11 -0700
IronPort-SDR: /5Gt9KuDgufYOsty2bAjfAPCeIj1XeDSuB45Q0azw95ZhrScqta3bP/Fgwr62qJjORnwJiinXY
 CrWKY4X+0AnA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.75,457,1589266800"; d="scan'208";a="438639548"
Received: from fmsmsx603-2.cps.intel.com (HELO fmsmsx603.amr.corp.intel.com)
 ([10.18.84.213])
 by orsmga004.jf.intel.com with ESMTP; 10 Aug 2020 03:23:11 -0700
Received: from fmsmsx612.amr.corp.intel.com (10.18.126.92) by
 fmsmsx603.amr.corp.intel.com (10.18.126.83) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.1713.5; Mon, 10 Aug 2020 03:23:10 -0700
Received: from fmsmsx612.amr.corp.intel.com (10.18.126.92) by
 fmsmsx612.amr.corp.intel.com (10.18.126.92) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.1713.5; Mon, 10 Aug 2020 03:23:10 -0700
Received: from FMSEDG001.ED.cps.intel.com (10.1.192.133) by
 fmsmsx612.amr.corp.intel.com (10.18.126.92) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256) id 15.1.1713.5
 via Frontend Transport; Mon, 10 Aug 2020 03:23:10 -0700
Received: from NAM10-DM6-obe.outbound.protection.outlook.com (104.47.58.107)
 by edgegateway.intel.com (192.55.55.68) with Microsoft SMTP Server (TLS) id
 14.3.439.0; Mon, 10 Aug 2020 03:23:10 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=B8Q5yuum9i/mSgYhoWewnVmOgoz+k7CQzIxumG1i9Ad+sD41+ltQMXJo04W3L9evvGseRfiV0UuU7BnasJ9/LptDhkYk9BrP01fhGMh9S0CJ6CBQhgaaz1q+wij8tiSi9RifWOMxfzcfqoaLA/8B5znQ+cV3goy9PdzK+FPiu0H4Smf0xMG1ssmZJ6pequmNF9S1P4qUz5/MIVy2TOUND2clpi13QWXgiK1t9ZhrXL7Z0vApFcqs1VMTohZVAsebBT3U+qozq0v1EJIsnaW2Y93vsHN5s9ZcpzyFWUzGvCUdZcFizxrIwaIjkY4t0FanakpyJWVOeirjxpLtdWNTLQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=DbBWIfH7quqagW0Y3RWCvrBNXh9R3zP3aHC4kHuDpHc=;
 b=iWUPThMccbo3U5sV1pjE0EDvj8XRgdZBrJ/gHc4kGsd2H8LNIu6z4RMLIFh8ABdn9cuUMeCoJC+i7KMfmLhILUyyTCRHMvmtixNAONIV/l3uiZiM9Q1LUZb3y7f0TpiJ7EZNAvUlJDAAs6+apu/EQdOl7G8V9OCFf1hr9SQJwE2QpZfaOQDtLZ8Ym8EVsnXxbzlJAKCMmoGUYrK+q6K0Q/gprsl2BLrORiwCcA51y8HVXk+dkL+hpvtTFGTbkzwxZmi9GtL9OGzDBAXlRZxQP/4r10L8v4o0IOVa+RFDAxazAlO54uu+nDetemYPURT9/qOFFj9vL8/U7dN9CF728Q==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=intel.onmicrosoft.com; 
 s=selector2-intel-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=DbBWIfH7quqagW0Y3RWCvrBNXh9R3zP3aHC4kHuDpHc=;
 b=PMOJdZH37M3lBPx4/dujMCs+5JIlsfcut/H3WpxXoMOHqGJeTwBDUkRdAl5BgXHVE59aHr+zBOYfeda8sWOuGXwKhLbgP/ATo7yYdmYyF2reatQiFMX2uIbDI0+z+XwztAys0cPzGEiLnLPCwgpSDZXUIUVbKTpivGhN7HIhIaY=
Received: from BYAPR11MB3352.namprd11.prod.outlook.com (2603:10b6:a03:1d::26)
 by BY5PR11MB4323.namprd11.prod.outlook.com (2603:10b6:a03:1c2::23)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.3261.18; Mon, 10 Aug
 2020 10:23:09 +0000
Received: from BYAPR11MB3352.namprd11.prod.outlook.com
 ([fe80::f4b4:bfac:9201:eba6]) by BYAPR11MB3352.namprd11.prod.outlook.com
 ([fe80::f4b4:bfac:9201:eba6%3]) with mapi id 15.20.3261.024; Mon, 10 Aug 2020
 10:23:09 +0000
From: "Singh, Gaurav K" <gaurav.k.singh@intel.com>
To: Chris Wilson <chris@chris-wilson.co.uk>, "intel-gfx@lists.freedesktop.org"
 <intel-gfx@lists.freedesktop.org>
Thread-Topic: [Intel-gfx] [PATCH] i915/gem: Force HW tracking to exit PSR
Thread-Index: AQHWbLFGAFkEg1MN+kCO50emM3buq6ksizEAgASZuFA=
Date: Mon, 10 Aug 2020 10:23:08 +0000
Message-ID: <BYAPR11MB335279F722A013EFEE2F2069C9440@BYAPR11MB3352.namprd11.prod.outlook.com>
References: <20200807115633.16328-1-gaurav.k.singh@intel.com>
 <159680160634.9674.17164057449268997767@build.alporthouse.com>
In-Reply-To: <159680160634.9674.17164057449268997767@build.alporthouse.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
dlp-reaction: no-action
dlp-version: 11.5.1.3
dlp-product: dlpe-windows
authentication-results: chris-wilson.co.uk; dkim=none (message not signed)
 header.d=none;chris-wilson.co.uk; dmarc=none action=none
 header.from=intel.com;
x-originating-ip: [103.195.203.233]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: c34169d7-0955-4e68-ea70-08d83d1760c8
x-ms-traffictypediagnostic: BY5PR11MB4323:
x-microsoft-antispam-prvs: <BY5PR11MB432392DDD9EB0E459252B822C9440@BY5PR11MB4323.namprd11.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:9508;
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: 8wYm8cKBk0BvUgrXSjj/AD2zRubGW8OqDNemhrB/la3mU9o5j1lF+aL6/2nDSk/u8CZ1dTvo7G32Vg7QJyxM+SX5f8NMmR3uJ9keSssVGvDU7Dh7qDHapKXW79eYqB0IqLcYz/TVCvhl6uGnngSGubXpH6tBk4vSK4wK2mp9CGNaR2QNjEBH1EOwDmnVR8Sr9qcvITAMXkJcs4JUMRjSUiQsEHv4Lpn3a5fVPPniPABlMW0jg/BGCVc9PrOBL5VujBpU/2N8XEt998pDEr5CYDi6aZhlZaUHtj5kx5Gd43JoZAQKULLoprr/lNCv+mcsSMQa1n6T9QHFKF+LyGppcA==
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:BYAPR11MB3352.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFTY:;
 SFS:(4636009)(376002)(396003)(39860400002)(346002)(366004)(136003)(33656002)(2906002)(83380400001)(8936002)(86362001)(8676002)(316002)(110136005)(186003)(7696005)(71200400001)(52536014)(26005)(53546011)(6506007)(55016002)(76116006)(64756008)(66556008)(66476007)(66946007)(478600001)(9686003)(66446008)(5660300002);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata: JT+lCMEKa0Egkp6lMfLNl9Yg/HoPLVHJ9jTG+g/W6Qr1uEv+7wq0wsykEusRg5R1H27HO2CFsqGMj31WolJqfn2gRmYqWdv4zWjNLuWC4R6hyaXHrmAWVKj6I221qUvVwzKF1Us87wd+jcBVFL3z1DxrssOSp8sHVrTDjKm5F7Nnn3M/6qU9AJvYhiQwNXKJRi9eveUZC67RwBDedEDqBzhOCWwwi2GJKOU0B8vj61Do5lLIKUTBX7n7flNoZ41+l5m4+eZEIJ/tsyq3t4G1RvtGokrxqioUABp3DjRTI1QufemlKqChuwhh1HaL/PvI7BhEW/gBOkYnyZZxSqNq5PCAcdBAMPJCUO8W50AQs8Z8ko0LAQGFhanMIUEEFo8qVabucul9dR7KttR7mst8tlLoi+6qXjsu5EwuNzSqXVKHDWXOQng56NfY2M23B/C+sdenJE9JkmOXebzvQdoA58wJb+f7E0OYUDGHox9SKxP/TLipHw3W10Au3bgTdokWZmc/RWkO9sUDgnPhvmgKwxQlcaazbrpkeDdCjUMuHHkjr0Q7f1qCsjX9Mcli8xqFx8acEiCcHK9Et11FruWLzdlT8GQVzrKuEf+lUxH6iFkiGKs3oB97v7JsdCLZ0KTdp+NLhqg8dMReaJj9wBCYvQ==
x-ms-exchange-transport-forked: True
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: BYAPR11MB3352.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: c34169d7-0955-4e68-ea70-08d83d1760c8
X-MS-Exchange-CrossTenant-originalarrivaltime: 10 Aug 2020 10:23:08.8628 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: 63nbSAY0+vtTcmsrS9bw8XDdRVT2xzH+TGy8m2ZIUw/bw09aPJX6AXfm82NgTNLLFPC9FN97xLec3BAgaFNBKo1yzFNnVxk2GVR+IZ4oygQ=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BY5PR11MB4323
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] [PATCH] i915/gem: Force HW tracking to exit PSR
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>



-----Original Message-----
From: Chris Wilson <chris@chris-wilson.co.uk> 
Sent: Friday, August 7, 2020 5:30 PM
To: Singh, Gaurav K <gaurav.k.singh@intel.com>; intel-gfx@lists.freedesktop.org
Subject: Re: [Intel-gfx] [PATCH] i915/gem: Force HW tracking to exit PSR

Quoting Gaurav K Singh (2020-08-07 12:56:33)
> Instead of calling i915_gem_object_invalidate_frontbuffer(),
> call i915_gem_object_flush_frontbuffer() which will eventually call 
> psr_force_hw_tracking_exit(). This will force HW tracking to exit PSR 
> instead of disabling and re-enabling.

set-domain is before the frontbuffer is dirtied. This is meant to be followed by either sw_finish (primarily for direct CPU access to the
frontbuffer) or the more modern approach of marking the framebuffer as dirty (DRM_IOCTL_MODE_DIRTYFB).

If you following the API, then we have a problem. But it sounds like it could be circumventing an important step.
-Chris

Hi Chris,

Thanks for your comments.  I was following the API and this issue is seen on various kind of PSR1 & PSR2 panels on older Gen and as well as on new Gen with older and latest drm-tip kernel. 
With this patch, the issue was resolved on all kinds of PSR panels across platforms.  
Can you please suggest a way to do it in kernel, not sure whether I have access to Application code.

With regards,
Gaurav
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
