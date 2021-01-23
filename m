Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id B98FB30189D
	for <lists+intel-gfx@lfdr.de>; Sat, 23 Jan 2021 22:47:52 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 8CA0E6E08E;
	Sat, 23 Jan 2021 21:47:49 +0000 (UTC)
X-Original-To: Intel-gfx@lists.freedesktop.org
Delivered-To: Intel-gfx@lists.freedesktop.org
Received: from mga04.intel.com (mga04.intel.com [192.55.52.120])
 by gabe.freedesktop.org (Postfix) with ESMTPS id C78A96E08E
 for <Intel-gfx@lists.freedesktop.org>; Sat, 23 Jan 2021 21:47:48 +0000 (UTC)
IronPort-SDR: mvsZvBz4HnVDzCYL9sHKGHU21rhstFRL3IsaZNo2AqlsouyCF5X3sO/yZ8u0HMiglsdAaVJ5ya
 RpdP4/Vf6FIg==
X-IronPort-AV: E=McAfee;i="6000,8403,9873"; a="177011979"
X-IronPort-AV: E=Sophos;i="5.79,369,1602572400"; d="scan'208";a="177011979"
Received: from fmsmga006.fm.intel.com ([10.253.24.20])
 by fmsmga104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 23 Jan 2021 13:47:44 -0800
IronPort-SDR: WiHWJh1pMOwXx87UEi9XGPxJhGdFSg2hsvyTCiveUYKGXCdcK2LUkjkorfCncDaBegzzMl13GS
 6XXySl+zk39w==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.79,369,1602572400"; d="scan'208";a="572857534"
Received: from orsmsx606.amr.corp.intel.com ([10.22.229.19])
 by fmsmga006.fm.intel.com with ESMTP; 23 Jan 2021 13:47:44 -0800
Received: from orsmsx607.amr.corp.intel.com (10.22.229.20) by
 ORSMSX606.amr.corp.intel.com (10.22.229.19) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.1713.5; Sat, 23 Jan 2021 13:47:44 -0800
Received: from orsedg603.ED.cps.intel.com (10.7.248.4) by
 orsmsx607.amr.corp.intel.com (10.22.229.20) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id 15.1.1713.5
 via Frontend Transport; Sat, 23 Jan 2021 13:47:44 -0800
Received: from NAM11-BN8-obe.outbound.protection.outlook.com (104.47.58.171)
 by edgegateway.intel.com (134.134.137.100) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.1713.5; Sat, 23 Jan 2021 13:47:44 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=JnJtUPR76cP/LYTvbAFutmiU3sCaxPU4M1B8zv9iKpQkXxNUNZbwQ54AQIRW/bJ5C62rM2Oroiaw8B5vBUxRarCRqLqDPOIoBGVgwn40vBHsooEbasLlCkcpQWKPiQS4v/eboRIUcVnzo7N/utWbKSQRgGcapH+VYR0MUA+5mwVgQ4mzkFmSNDGxCWC3jE8icL/cAlYlbDNb2ByPjQ8FPh46Z/srHlFuOyTqbe8MXiR4G4lNYQWmv8sWe4bwIaYGTmzJfzT2hXKZyv0s6YxVI6byDZW8/dbP3VEpc+jMIwL4D0o2yk/e4OOYtC44No8ZQhX5C9Zz/MN7n8hZpO73JQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=GfipIpPhtfyyFJJb3wTqQHDjDEmscTKYvYdx7XkDf4A=;
 b=HDULVXNjovRX0/UDq0TfQkH49NP/muH7AodRtq1ZJaKI4p9HZf6PTBUURmoSkI7HY2qIGjS6tvdUpIe8KKWjupF1h/jZVdUD2mw903lG+UFHIihRdKJC6OdmY0sNS3E8Ru4IquLPAKh6Kh2i1MA8bTj1NMzEGG7RvrMdh3uEYW3WkJFKPAZ/lDOs1jJinwsKtNbUGc2dsoOij/QoABZ+6Fiyn0GNI02EwVS8S+5WBYbzUWWZB/pfbnn73/HOXEX4faGqVp057MqTFEXWnkoqKrxeUP414Id0E7Df7a3j/KHPcTERshckvuCzrz+nuUbLuWB3cM3nuc2capbVqO9+LQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=intel.onmicrosoft.com; 
 s=selector2-intel-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=GfipIpPhtfyyFJJb3wTqQHDjDEmscTKYvYdx7XkDf4A=;
 b=sAEQUHpLhzHfhQfB9LfKivOOuetAnIeS2TZEpDgg5kmAdT7krE7GxJe6zAXhPVSbQC8PXOE33eXizALUGikGWwqfx8JJBvhTDYBkASoBgF+1dZ6lv/dP0xln+tasfKE0aZzC4udVNDbK+DayImMn+frGfVAsZKyxH9eIqQK9j7k=
Received: from DM6PR11MB2683.namprd11.prod.outlook.com (2603:10b6:5:c6::13) by
 DM5PR1101MB2346.namprd11.prod.outlook.com (2603:10b6:3:a6::14) with
 Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.3784.13; Sat, 23 Jan 2021 21:47:40 +0000
Received: from DM6PR11MB2683.namprd11.prod.outlook.com
 ([fe80::29b9:554:9ed:83b2]) by DM6PR11MB2683.namprd11.prod.outlook.com
 ([fe80::29b9:554:9ed:83b2%6]) with mapi id 15.20.3784.016; Sat, 23 Jan 2021
 21:47:40 +0000
From: "Gaurav, Kumar" <kumar.gaurav@intel.com>
To: "Landwerlin, Lionel G" <lionel.g.landwerlin@intel.com>, "Huang, Sean Z"
 <sean.z.huang@intel.com>, "Intel-gfx@lists.freedesktop.org"
 <Intel-gfx@lists.freedesktop.org>
Thread-Topic: [Intel-gfx] [RFC-v23 00/13] Introduce Intel PXP component - Mesa
 single session
Thread-Index: AQHW7jbI6IEpJJ186UqvrtKnj+CEZqo1SOOAgAB8nlA=
Date: Sat, 23 Jan 2021 21:47:39 +0000
Message-ID: <DM6PR11MB2683FB8AEBC4F5626114729997BF9@DM6PR11MB2683.namprd11.prod.outlook.com>
References: <20210119074320.28768-1-sean.z.huang@intel.com>
 <afa3b62b-a625-21a4-6f28-66087b7283dd@intel.com>
In-Reply-To: <afa3b62b-a625-21a4-6f28-66087b7283dd@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
dlp-version: 11.5.1.3
dlp-product: dlpe-windows
dlp-reaction: no-action
authentication-results: intel.com; dkim=none (message not signed)
 header.d=none;intel.com; dmarc=none action=none header.from=intel.com;
x-originating-ip: [98.208.38.76]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 868facdc-c6ae-46e6-7151-08d8bfe8819f
x-ms-traffictypediagnostic: DM5PR1101MB2346:
x-ld-processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <DM5PR1101MB2346E295E2A16C2B4F0CB44497BF9@DM5PR1101MB2346.namprd11.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:2201;
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: KxNFilNyNYO4rkQmcFPMF9/qG2S9mNMAbLQvLapiflxD35NcSCZds6kzHbulstNFlYcuIzHwx0kOu3XbP70AT9c7NOLMmTU3iydKGUAERTuWKW5kKYJ5C9JA2llugBSorPuVspwQ5DNgbnYG0oM9KVd+r1i94ibuqJrPYPUlW8UwRpqsXQMfuBhnVhkE+i7WoV6bRW3jD9n2BwLaulpdCLgIi9LQZR5tCq6T5t5tF8K0AKBo7mSOXEEeuy7DwMXTWNZCB1AciPrpFl1zAT9CoQLROSO6lVdyx5cTaFpjHiWTYTpqvmBIjoNyIffMF/KTwFN9Rnwoj3q/8VXPfWLCfR/Uu1GrrqkJadgOTRby7bZVX3NNxCBxhbFMqiezdgA5WxH7FKnD7C5o2YSO5HpJmtXCkqRVKaxyRd+bBS1APV/ymsWBsajBUcTzSRiY1isAHGf9TU1o6QsPGiJOWegS570qQfdI4L/UQMO5pSO6y9IxAt35UgP5q03FoHjyfX8a8Lrw4CfePgLisrwJemZsl5/XT2kZAqqw3lXJJW5oYtBNp6ns24/erdBQlC/C/8fA
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM6PR11MB2683.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(4636009)(366004)(39860400002)(396003)(136003)(376002)(346002)(64756008)(66446008)(66556008)(66476007)(9686003)(4326008)(66946007)(8936002)(76116006)(8676002)(52536014)(26005)(86362001)(186003)(7696005)(2906002)(55016002)(5660300002)(966005)(53546011)(33656002)(6506007)(478600001)(83380400001)(110136005)(54906003)(316002)(71200400001);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata: =?utf-8?B?K3U5SVYrT1ppbkFVMHQ4SmxqcWJpNktUeU9LU3JlV0RhNUM1Zmw1amZLb01s?=
 =?utf-8?B?YUZuRGF0MVJpaDhUN0Mvb2Ezd3pmbXFzdkxqVjlIR1k2VDVxcUQ2U0tzNmI4?=
 =?utf-8?B?VUZYVVM4TUhEcFBxQUxwOFRhbWtrTFc4UnE1dk11NnJ2cTUzbTQ2STgySHdI?=
 =?utf-8?B?bXNpSHU0alVPRTJyUXJ6a0FsVVhGSytXSjRqRWtPemZPajBWb1ZvT0kwN2Yw?=
 =?utf-8?B?ZmdtK1dzSGF4bE1oaWZKNzV0aGthVDE1ei9iZVBHdzBUOWJpbFpCdmtQblp2?=
 =?utf-8?B?OEsxbUtPMWpvenpwVFdNa1FmRzVrV20xUXpldlljcmEvazRjRm9CaEZnMHFr?=
 =?utf-8?B?SUZsbGtvbVhhOExyL0M2dllLUXdVQ3NEaGRteE1MMm5LRi93RU9SWmpiaERE?=
 =?utf-8?B?ZG9PZ3pqeFI1MXFOaEhMaVY2alF4cEtYcE5JU2x6QURkZG9yNFNhN2RETGtt?=
 =?utf-8?B?WkZnanFjWlU0NHNHV21XUjNleWJVRHRELzZzYUw1YWRwOEx6U29ZVUd4cXdp?=
 =?utf-8?B?RGZGYjdMMVZMYzl1M0poU0tsZVFvY1BEZURDcTJtbWVxS0ZCdHREajdmVURK?=
 =?utf-8?B?OVFPZ1h4SlhQV3dqRldkRDJITTg2QkNMWGkrNEh3VW44cEppYkNWd3ZjWkpZ?=
 =?utf-8?B?SE5TUTNuenRXL21xaUhneUFlVzNoaWlmZ2xiZ0g4RmFLYWZBbmZoV3lKeUVs?=
 =?utf-8?B?SEJPZ1dJVDZQRVRyaDhFRFBMWFJJSStnbmd2ZUR6YmZONEhWUU9Ba2xNaTdY?=
 =?utf-8?B?b0c2REtCYU9hREdxUTdjWXJFSHJwVGh4QWVUVEZrVXV3QWN6SHV3WGNnSDhG?=
 =?utf-8?B?anRGL3NTb293WDBiclUvSW5mdFppTkRNeG9tQkZOSTJOeVJtY3pOVTNEYXBM?=
 =?utf-8?B?VnBwQjB6K3ljZStHdytrVXg0SmRxZnJNNk9DVjZTQlRnVGZoVHg0ZmMvUGNr?=
 =?utf-8?B?dWVEQjN5dEdOTXM1ZTlkWTdQcjEzVWh5L3pVTURGNnRuQi9zMHMzS3ZWemtw?=
 =?utf-8?B?ZE9FZ3B3MmU3eU15dkxGUjM0Um5TMmhVYkRaMzV1RDh0VG1sN0hxSTFJUWs4?=
 =?utf-8?B?YjVSamoxdk5uazJsU01RK1pQbFRBTGtjQmFqaFRkMzJWMG8vZjVzcUcwSkJT?=
 =?utf-8?B?T0cvNmJMMjRuMTRIZzZiQy9OR2w5bW5tSStIZlQ4Q0I4eHplZnpCWitiL215?=
 =?utf-8?B?UjdUdjE3UDluZXNkdnJxWlFMNWZ6M0lTN0pyczJDRkVFZzRxVFV3alorQ2NS?=
 =?utf-8?B?TTZ3ZEhmVGQzVFd2UEVMSXFoWXJFdUdpNDFkY0Y0VU9nZUwxczdCbGpKaHFw?=
 =?utf-8?Q?/YH1q8hsSgPWI=3D?=
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: DM6PR11MB2683.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 868facdc-c6ae-46e6-7151-08d8bfe8819f
X-MS-Exchange-CrossTenant-originalarrivaltime: 23 Jan 2021 21:47:39.9324 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: 5T+VMRiT+GTz6ddDEZOffUJdk3EiS/x/XliE/cP2DmYpkCghVDyhKPSMGDiY/CVvcPDIMOHhHs9wslZYTd9IoA==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DM5PR1101MB2346
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] [RFC-v23 00/13] Introduce Intel PXP component -
 Mesa single session
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
Cc: "Ekstrand, Jason" <jason.ekstrand@intel.com>, "Lahtinen,
 Joonas" <joonas.lahtinen@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Yes, this should not be problem since MESA is already using MI_SET_APPID with app_id 0xf.

I proposed this earlier but I was told that MESA team will not be comfortable in querying app_id or session_states.
Although check for proper session_state should be part of context robustness check.

-----Original Message-----
From: Lionel Landwerlin <lionel.g.landwerlin@intel.com> 
Sent: Saturday, January 23, 2021 6:19 AM
To: Huang, Sean Z <sean.z.huang@intel.com>; Intel-gfx@lists.freedesktop.org
Cc: Gaurav, Kumar <kumar.gaurav@intel.com>; Lahtinen, Joonas <joonas.lahtinen@intel.com>; Joonas Lahtinen <joonas.lahtinen@linux.intel.com>; Ekstrand, Jason <jason.ekstrand@intel.com>
Subject: Re: [Intel-gfx] [RFC-v23 00/13] Introduce Intel PXP component - Mesa single session

Hi,

One of the thing that came up during UMD review is that the default session ID is actually uAPI : 
https://gitlab.freedesktop.org/mesa/mesa/-/merge_requests/8064#note_776201
Could we expose it through a get_param on the context?

Thanks,

-Lionel

On 19/01/2021 09:43, Huang, Sean Z wrote:
> PXP (Protected Xe Path) is an i915 component, available on
> GEN12+ that helps to establish the hardware protected session
> and manage the status of the alive software session, as well as its 
> life cycle.
>
> This patch series is to allow the kernel space to create and manage a 
> single hardware session (a.k.a. default session or arbitrary session). 
> So user can allocate the protected buffer, which is encrypted with the 
> leverage of the arbitrary hardware session.
>
>
> rev23:
>      #09, #12
>      - Require user space to explicitly set recoverable flag to
>        false for protected context creation.
>
>      #13
>      - Add Cc of reviewers in commit message.
>
>
> Anshuman Gupta (1):
>    drm/i915/pxp: Add plane decryption support
>
> Bommu Krishnaiah (2):
>    drm/i915/uapi: introduce drm_i915_gem_create_ext
>    drm/i915/pxp: User interface for Protected buffer
>
> Huang, Sean Z (9):
>    drm/i915/pxp: Introduce Intel PXP component
>    drm/i915/pxp: set KCR reg init during the boot time
>    drm/i915/pxp: Implement funcs to create the TEE channel
>    drm/i915/pxp: Create the arbitrary session after boot
>    drm/i915/pxp: Func to send hardware session termination
>    drm/i915/pxp: Enable PXP irq worker and callback stub
>    drm/i915/pxp: Destroy arb session upon teardown
>    drm/i915/pxp: Enable PXP power management
>    drm/i915/pxp: Expose session state for display protection flip
>
> Vitaly Lubart (1):
>    mei: pxp: export pavp client to me client bus
>
>   drivers/gpu/drm/i915/Kconfig                  |  21 ++
>   drivers/gpu/drm/i915/Makefile                 |   9 +
>   drivers/gpu/drm/i915/display/intel_sprite.c   |  21 +-
>   drivers/gpu/drm/i915/gem/i915_gem_context.c   |  13 +
>   drivers/gpu/drm/i915/gem/i915_gem_context.h   |   5 +
>   .../gpu/drm/i915/gem/i915_gem_context_types.h |   2 +
>   drivers/gpu/drm/i915/gem/i915_gem_create.c    |  68 +++++-
>   .../gpu/drm/i915/gem/i915_gem_object_types.h  |   5 +
>   drivers/gpu/drm/i915/gt/intel_gt.c            |   5 +
>   drivers/gpu/drm/i915/gt/intel_gt_irq.c        |  14 ++
>   drivers/gpu/drm/i915/gt/intel_gt_pm.c         |   4 +
>   drivers/gpu/drm/i915/gt/intel_gt_types.h      |   3 +
>   drivers/gpu/drm/i915/i915_drv.c               |   7 +-
>   drivers/gpu/drm/i915/i915_drv.h               |   6 +
>   drivers/gpu/drm/i915/i915_reg.h               |   2 +
>   drivers/gpu/drm/i915/pxp/intel_pxp.c          | 193 +++++++++++++++
>   drivers/gpu/drm/i915/pxp/intel_pxp.h          |  70 ++++++
>   drivers/gpu/drm/i915/pxp/intel_pxp_arb.c      | 208 ++++++++++++++++
>   drivers/gpu/drm/i915/pxp/intel_pxp_arb.h      |  17 ++
>   drivers/gpu/drm/i915/pxp/intel_pxp_cmd.c      | 223 +++++++++++++++++
>   drivers/gpu/drm/i915/pxp/intel_pxp_cmd.h      |  19 ++
>   drivers/gpu/drm/i915/pxp/intel_pxp_context.c  |  28 +++
>   drivers/gpu/drm/i915/pxp/intel_pxp_context.h  |  15 ++
>   drivers/gpu/drm/i915/pxp/intel_pxp_pm.c       |  65 +++++
>   drivers/gpu/drm/i915/pxp/intel_pxp_pm.h       |  31 +++
>   drivers/gpu/drm/i915/pxp/intel_pxp_tee.c      | 202 +++++++++++++++
>   drivers/gpu/drm/i915/pxp/intel_pxp_tee.h      |  17 ++
>   drivers/gpu/drm/i915/pxp/intel_pxp_types.h    |  38 +++
>   drivers/misc/mei/Kconfig                      |   2 +
>   drivers/misc/mei/Makefile                     |   1 +
>   drivers/misc/mei/pxp/Kconfig                  |  13 +
>   drivers/misc/mei/pxp/Makefile                 |   7 +
>   drivers/misc/mei/pxp/mei_pxp.c                | 230 ++++++++++++++++++
>   drivers/misc/mei/pxp/mei_pxp.h                |  18 ++
>   include/drm/i915_component.h                  |   1 +
>   include/drm/i915_pxp_tee_interface.h          |  45 ++++
>   include/uapi/drm/i915_drm.h                   |  66 +++++
>   37 files changed, 1686 insertions(+), 8 deletions(-)
>   create mode 100644 drivers/gpu/drm/i915/pxp/intel_pxp.c
>   create mode 100644 drivers/gpu/drm/i915/pxp/intel_pxp.h
>   create mode 100644 drivers/gpu/drm/i915/pxp/intel_pxp_arb.c
>   create mode 100644 drivers/gpu/drm/i915/pxp/intel_pxp_arb.h
>   create mode 100644 drivers/gpu/drm/i915/pxp/intel_pxp_cmd.c
>   create mode 100644 drivers/gpu/drm/i915/pxp/intel_pxp_cmd.h
>   create mode 100644 drivers/gpu/drm/i915/pxp/intel_pxp_context.c
>   create mode 100644 drivers/gpu/drm/i915/pxp/intel_pxp_context.h
>   create mode 100644 drivers/gpu/drm/i915/pxp/intel_pxp_pm.c
>   create mode 100644 drivers/gpu/drm/i915/pxp/intel_pxp_pm.h
>   create mode 100644 drivers/gpu/drm/i915/pxp/intel_pxp_tee.c
>   create mode 100644 drivers/gpu/drm/i915/pxp/intel_pxp_tee.h
>   create mode 100644 drivers/gpu/drm/i915/pxp/intel_pxp_types.h
>   create mode 100644 drivers/misc/mei/pxp/Kconfig
>   create mode 100644 drivers/misc/mei/pxp/Makefile
>   create mode 100644 drivers/misc/mei/pxp/mei_pxp.c
>   create mode 100644 drivers/misc/mei/pxp/mei_pxp.h
>   create mode 100644 include/drm/i915_pxp_tee_interface.h
>

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
