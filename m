Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id BDA1773ABD3
	for <lists+intel-gfx@lfdr.de>; Thu, 22 Jun 2023 23:50:47 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 85C7810E5A4;
	Thu, 22 Jun 2023 21:50:44 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga18.intel.com (mga18.intel.com [134.134.136.126])
 by gabe.freedesktop.org (Postfix) with ESMTPS id D5EA210E5A4
 for <intel-gfx@lists.freedesktop.org>; Thu, 22 Jun 2023 21:50:41 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1687470641; x=1719006641;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=QRS4Q2SDSihDWSBOYqHUcg8muvJwVPyyE3bg0wptAVQ=;
 b=csRhufZvEILxYyGerFJiuRAtb8KQwaAyf+JgPsUABzyxsaybQ8y13++x
 yTaPXkTyp3yaNDPPlX1u91H7ZLWm10tu+cwWpLe6vvnnOtsNJ2Q2VcsPX
 +eTVbtIpIcK3wvZDPQmzavu+9OjBbNZu9rgaHBdQGi2ocNYcEW4MmVS2l
 7hat+owuB5w1VMlBYvYxGEJ7wue0aHugBgjq0vf08bvVji6zBgxUDyEiN
 oxDOtR1JvIZWw4x1LsprVK9ARudVXewPuYVisiP5WYhpmE8t+KvZ3asH3
 CoHYVcjJsv5/rsbWPtyKDGfDp+irRaZxlRDk7HVWuh3EY3dbnLXptUQA1 A==;
X-IronPort-AV: E=McAfee;i="6600,9927,10749"; a="345383621"
X-IronPort-AV: E=Sophos;i="6.01,150,1684825200"; d="scan'208";a="345383621"
Received: from orsmga004.jf.intel.com ([10.7.209.38])
 by orsmga106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 22 Jun 2023 14:50:40 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10749"; a="839223516"
X-IronPort-AV: E=Sophos;i="6.01,150,1684825200"; d="scan'208";a="839223516"
Received: from orsmsx603.amr.corp.intel.com ([10.22.229.16])
 by orsmga004.jf.intel.com with ESMTP; 22 Jun 2023 14:50:40 -0700
Received: from orsmsx610.amr.corp.intel.com (10.22.229.23) by
 ORSMSX603.amr.corp.intel.com (10.22.229.16) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.23; Thu, 22 Jun 2023 14:50:40 -0700
Received: from orsedg603.ED.cps.intel.com (10.7.248.4) by
 orsmsx610.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.23 via Frontend Transport; Thu, 22 Jun 2023 14:50:40 -0700
Received: from NAM04-DM6-obe.outbound.protection.outlook.com (104.47.73.49) by
 edgegateway.intel.com (134.134.137.100) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.23; Thu, 22 Jun 2023 14:50:39 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=Q0xdR6bxaUINBiravlTqzGLHgacj0qI4cm03EyFC8/9gP4V4c6zGUYcrUcE37CO1BGkUtEY1+5kwxFI37pXcHZS7gn4oc/GKbxWqvN+4lLb66E0iYI6HR/vtxDGxCZmHhcBB2647EcvcXy81Ous8Pc9LLNp29w6uwzXt5VDGabe+PAlMiT7e+SyqPjd0NKwmkMAogKr1oLgdis2bwMQtpvvspga2kTJRsA7SwCQ2lWHbX4/cer9SvOCjeDgoCa5r4LnGrietbEk6TjJ2hfOPusQUc8vd6dbF7n89rm+VcA2L0AECeQC4ikO7v12DLmbi8rliSVOPk6vbZwmlfS0Bpg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=QKq2JD0H7k7Rqus9teb9YAW+piCz69ph/nRR6wRP2M0=;
 b=kPDppBa9qhTpB8n0Tp2L6w9Qci3H0K8dzdbQ/6wA5ehF36xULlSxtAHUrNDgWZD1y4pC+7n/rdV5BrBlTdsFwtZbB93RU7PvJM6lT9zNabCpy0nzIjM9KPlwiqOujXd0KToFZ1+h6VRzgbK36yXjxbnUL9/GMCpSGhPCe8xT+wVNx4ztq7QbUCbyjyi93GauJTI1eyqbpqDkqDaUdfcLNup04AX2ym52k/Y+p5Xx1CHc/tSbIMsa3RKs3znVOtsGf2u+sHZ4AwSdmnFJLZoAJRTNZNWoBojSm6jVmEfBkX1YWEuv7/vIxl3bkvrgssG0/JxlBTwSZhrHuObKVqSMqA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from DM4PR11MB5971.namprd11.prod.outlook.com (2603:10b6:8:5e::7) by
 MN0PR11MB6112.namprd11.prod.outlook.com (2603:10b6:208:3cc::7) with
 Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.6521.23; Thu, 22 Jun 2023 21:50:37 +0000
Received: from DM4PR11MB5971.namprd11.prod.outlook.com
 ([fe80::df8c:4a33:f53a:9a2e]) by DM4PR11MB5971.namprd11.prod.outlook.com
 ([fe80::df8c:4a33:f53a:9a2e%5]) with mapi id 15.20.6521.024; Thu, 22 Jun 2023
 21:50:37 +0000
From: "Sripada, Radhakrishna" <radhakrishna.sripada@intel.com>
To: "De Marchi, Lucas" <lucas.demarchi@intel.com>
Thread-Topic: [Intel-gfx] [PATCH 3/4] drm/i915: Make
 intel_crtc_get_vblank_counter use no trace hw reads
Thread-Index: AQHZnkGY1F4AX1zHKU2mqzuvdtniS6+XRoEAgAABFvA=
Date: Thu, 22 Jun 2023 21:50:37 +0000
Message-ID: <DM4PR11MB59716C40C881D985C9959A528722A@DM4PR11MB5971.namprd11.prod.outlook.com>
References: <20230613215245.1551145-1-radhakrishna.sripada@intel.com>
 <20230613215245.1551145-4-radhakrishna.sripada@intel.com>
 <2ptiei3lil5peekrmbw7gkp4diwr4nw4g36yhp675yuekrdpd4@at2yysa6dgrb>
In-Reply-To: <2ptiei3lil5peekrmbw7gkp4diwr4nw4g36yhp675yuekrdpd4@at2yysa6dgrb>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: DM4PR11MB5971:EE_|MN0PR11MB6112:EE_
x-ms-office365-filtering-correlation-id: c1ec93ca-968d-4aee-b060-08db736ab6b8
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: +AiGMr2cUyiIlZNmzu9ih42nsn+9iXBmzkm67yk1o4yM1eOVZjK1mvVYv406nBTwVAI0Nd7oFELXqovD0hCsDu04sNYOyw8gaIeuraHTsh1UESeUqYgQHsj8N6vXMidx6CsNckeUkqwCsMhAIvDbK2N7kiBiNsVlXYXm2G86GVK01mpwqRiHPKX9k8IdlIUNwp1tkK9Y54HS+TIlUmNeQabQWBrgj4ZPpzbCR7PBwHD6/XOD50bSTucK11I8pUniWC5zyU9n2Wvf3jXqASZHceOTpCi4Pe4rCM/Yuwbk+geJb3AuA1ErJlbNEyqkPtgAdTyN2yt3YPMNOFFI/+rhX4lN1ejVElx5myWTru6WVPHaIcpxvRE4sdxypRkiK6Iqh1cLHwBQxgj9wuvGV6U8suB6nd67lSOj2GiZtzyuAI5v+LxrvIrI9rBfj9wA3wsjQ+ALMlxjV2OLTRO9cBDmOhIf2wRGU8kIms4NKPt8px2dRS89wQo9UWRlX85uODEe683+qRpuIzEE2j1hHQjWXF4dqDyY4v5ivjkKnGnn5RlL3l5AjN9/GbY9ELvDTZeHwfD5C5rPmIFLSw2G32c9ovpk079tTYxAFRmsBnvqgsbvURVLjyHp8yaReco1/4Aq
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM4PR11MB5971.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230028)(376002)(136003)(366004)(396003)(346002)(39860400002)(451199021)(38100700002)(7696005)(83380400001)(186003)(53546011)(6506007)(9686003)(55016003)(71200400001)(33656002)(122000001)(66446008)(66476007)(76116006)(316002)(4326008)(6636002)(66556008)(64756008)(38070700005)(66946007)(2906002)(8936002)(8676002)(26005)(6862004)(86362001)(52536014)(5660300002)(41300700001)(54906003)(82960400001)(478600001);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?vOP29+MQFzbC3w+06plOKcNhA7ydmvnJeZpSVW1aTCcVKTWrod1q28rpWSW8?=
 =?us-ascii?Q?AiGTWAlHTEp5Fq7t7J/U5BQzOKMAbnu66e37NoUITZTy2XyL21f4OfCqL2NJ?=
 =?us-ascii?Q?7RofprSrP94iw7KxYcu2TgrABcS8oo5ITpGE8L6YMcJhqBZTUXrbTPCsmwau?=
 =?us-ascii?Q?HXZzUSwDBum7TptxfmB+QKmx8BeX5W+Y0+Xv5Jf6ClzFDlSdM0Qrmc6O2GLs?=
 =?us-ascii?Q?PFNEKhyMAK2kbbr4yltShP1Vkcwpa7YiHEsj5PbnfJ2k/pvAkMt5A6LWjGfp?=
 =?us-ascii?Q?f+smdlmqQ+4YI0oQX0xlB08ESgmy9tq+TNkvHSYkXd8iPdyqwnvCo4Poma3G?=
 =?us-ascii?Q?/eyBXxHEQMaDdCZ8a5TI2ri6PA+u19FgMvbEgzPnZddUygjUML1gLbUYVBlr?=
 =?us-ascii?Q?/rl3aYQ36v78o83DHlaDnBuDc9PaFFusWwvx/2V/+ZynBagwRyIqapXNGgI6?=
 =?us-ascii?Q?XJfDnn5gkSCVe/piETnDGoInknSBWUla8u+Qevxq9t/hwR+1nUK3ITjpdoDw?=
 =?us-ascii?Q?tyqqcXFEDgcixiZ3cmBwCG9U7/rgfb4t5urf1HgNzux3SsRaBanfE/d5FbJS?=
 =?us-ascii?Q?wSt23prY4YX6H/GHkDsSYiVCycsLZh4VyxWSvac6FBbIhYGzUAkWNGnqm5RD?=
 =?us-ascii?Q?IQy1JW5UStvB0XHSLelyzcnJC2f1mWSnX+BZlO5nfLa580h4waZN4U4xk0kv?=
 =?us-ascii?Q?MudDBwu8mcpUAemOkK0oqAEBh+NxbXGF+TQNF/kIbOMG7VVxMSO049RbcFA5?=
 =?us-ascii?Q?g0ejdtbrHL1IrwNAW/erbcbpv9PhjjGA7OcONCqypeqGNSZpvV6qqw9bkQci?=
 =?us-ascii?Q?SVbbmoAwf3khUfxr41OjHZIrifgUZ7LZPIpp8ErdGogz9/to5lCn56rB/Voc?=
 =?us-ascii?Q?SJj942y5nhuKu5RdwWqEsm+MbOTXZjVwN9L7N6y4KeGXl3MzWGffZEBkuvpz?=
 =?us-ascii?Q?GWVSv6EbywAdFctbcnjtZysul/llmBGG6AwTt3dtfFdkN4xE+OO47lVybAx9?=
 =?us-ascii?Q?LERCI1m7d487i6GEqfwfCrs2TY8Jf3kYxhwg3qdu8VWz25tsZmnhIQnG/Kez?=
 =?us-ascii?Q?RHOfgaBqkcridmgA82WObccEFhNcLf+hn9KKi/MIVBm8GnUfF6SwuRVY/fDH?=
 =?us-ascii?Q?NH0PMe2uscKzM7E1nGPbD/ztcsE6LN59A8d/fxmP6Ky4Wy2hGjmhVMR+O+x5?=
 =?us-ascii?Q?PuWEePpeBp0LxHzGkn75WdBXaUrD+SR4hgBh48tgXMWf/FCgVTQMeRjsa9io?=
 =?us-ascii?Q?Eql9yaIrf6Px9qgrAh3GonXlAhb5ZeQu9SrgV4PCNQfzFeRd12DLaJOmJ/am?=
 =?us-ascii?Q?UimxyCzb6kBrczKD88iT+vO6jhfCyp1c53vlCCw7m5/kDGvZvWInai1fMNYo?=
 =?us-ascii?Q?lNqD13VEN7QciUOjpc6/Yp55gFpfy6UR2YRbpbEPNqvkyrEHm/57BXNFmDq6?=
 =?us-ascii?Q?ETMyxoJlF0Kw+GBLYE278ccg3Ew0xcIBWAH6SjbQixkemlE5ziyQX2NDJ/C+?=
 =?us-ascii?Q?emlNvSe19IPwwuh17DKWCsRfnECOwrD/XcCzj78BSh6mbFXAQulwrSsaou/6?=
 =?us-ascii?Q?3f7JDU9L+Rm7Z5kuHOkg+RCBh+HiNTBpBqJMDufxPZny5lu7G+jutjIGFao/?=
 =?us-ascii?Q?XA=3D=3D?=
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: DM4PR11MB5971.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: c1ec93ca-968d-4aee-b060-08db736ab6b8
X-MS-Exchange-CrossTenant-originalarrivaltime: 22 Jun 2023 21:50:37.1894 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: D80VotNzguACdmmOsmHC4mFV8yFR1PqQbBAAzk9x4EGSsXMNVSmzzoC3eQIDqM5l90bdgR1oG4GhOpFn1k+KVkcDc/SrAcRWak84UIoRwP0=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MN0PR11MB6112
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] [PATCH 3/4] drm/i915: Make
 intel_crtc_get_vblank_counter use no trace hw reads
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
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Hi Lucas,

> -----Original Message-----
> From: De Marchi, Lucas <lucas.demarchi@intel.com>
> Sent: Thursday, June 22, 2023 12:41 PM
> To: Sripada, Radhakrishna <radhakrishna.sripada@intel.com>
> Cc: intel-gfx@lists.freedesktop.org; Maarten Lankhorst
> <maarten.lankhorst@linux.intel.com>
> Subject: Re: [Intel-gfx] [PATCH 3/4] drm/i915: Make
> intel_crtc_get_vblank_counter use no trace hw reads
>=20
> On Tue, Jun 13, 2023 at 02:52:44PM -0700, Radhakrishna Sripada wrote:
> >intel_crtc_get_vblank_counter is used in many places in the display
> >tracing infrastructure. For a clean execution of the tracing assignment,
> >ensure that any necessary HW reads would not further trigger another tra=
ce,
> >to prevent nesting of trace events.
>=20
>=20
> it's not clear what "nesting" means in this patch series. For me
> "nesting" would be if in the middle of a trace event it triggered
> another trace event. Given our current infra, I don't see how that
> would be possible.

Intel_crtc_get_vblank_counter/intel_get_crtc_scanline is used at many of th=
e
trace events defined in intel_display_trace.h like intel_pipe_{en,dis}able,=
 intel_pipe_crc
during the assign phase to capture the current vblank and scanline values. =
However those
functions indeed use traceable versions of register reads making a nested t=
race call.

<snip>
   kworker/u29:0-153   [007]   402.314951: kernel_stack:                =3D=
> trace_event_raw_event_i915_reg_rw
        =3D> __intel_get_crtc_scanline
        =3D> intel_get_crtc_scanline
        =3D> trace_event_raw_event_intel_plane_update_noarm
        =3D> intel_plane_update_noarm
        =3D> intel_crtc_planes_update_noarm
        =3D> intel_update_crtc
        =3D> skl_commit_modeset_enables
</snip>

>=20
> Do you mean that certain register accesses are being reported twice
> since they are being recorded in 2 different layers like intel_de and
> intel_uncore? If so, can you add in the commit message what is the call
> chain you're seeing? The indirections in intel_de_read_fw() are not so
> easy to follow, but from a quick look I don't see that happening here.

I haven't observed those style of reporting twice.

--Radhakrishna(RK) Sripada
>=20
> intel_de_read_fw()
>    intel_uncore_read_fw()
>      __raw_uncore_read32() <-- no trace here
>    trace_i915_reg_rw()
>=20
> What makes intel_de_read_fw() call special in this intel_vblank.c that
> is not the case in all the hundred other places this function is called?
>=20
> The trace_i915_reg_rw() in intel_de_read_fw() was added exactly because
> __raw_uncore_read32() doesn't trace.
>=20
> In xe, we should probably override the intel_de_read_fw() with a
> xe-specific function that just leaves the trace out, delegated to
> xe_mmio().
>=20
>=20
> Btw, see the comment on top of intel_uncore_read_fw() that nobody reads
> and calls to those "raw" accessors are added, making the i915_reg_rw
> trace almost useless.
>=20
> 	$ git grep intel_uncore_read_fw | wc -l
> 	65
>=20
> The _fw() suffix was meant as: you first take the forcewake, then
> you access a bunch of registers, then release the forcewake. The
> non-trace is a bad side effect with no clue on the name of the function,
> just a comment on top of it.
>=20
> Lucas De Marchi
>=20
>=20
> >
> >Suggested-by: Maarten Lankhorst <maarten.lankhorst@linux.intel.com>
> >Signed-off-by: Radhakrishna Sripada <radhakrishna.sripada@intel.com>
> >---
> > drivers/gpu/drm/i915/display/intel_vblank.c | 7 ++++---
> > 1 file changed, 4 insertions(+), 3 deletions(-)
> >
> >diff --git a/drivers/gpu/drm/i915/display/intel_vblank.c
> b/drivers/gpu/drm/i915/display/intel_vblank.c
> >index f5659ebd08eb..55f3389fa220 100644
> >--- a/drivers/gpu/drm/i915/display/intel_vblank.c
> >+++ b/drivers/gpu/drm/i915/display/intel_vblank.c
> >@@ -103,7 +103,7 @@ u32 i915_get_vblank_counter(struct drm_crtc *crtc)
> > 	 * we get a low value that's stable across two reads of the high
> > 	 * register.
> > 	 */
> >-	frame =3D intel_de_read64_2x32(dev_priv, PIPEFRAMEPIXEL(pipe),
> PIPEFRAME(pipe));
> >+	frame =3D intel_de_read64_2x32_notrace(dev_priv,
> PIPEFRAMEPIXEL(pipe), PIPEFRAME(pipe));
> >
> > 	pixel =3D frame & PIPE_PIXEL_MASK;
> > 	frame =3D (frame >> PIPE_FRAME_LOW_SHIFT) & 0xffffff;
> >@@ -125,7 +125,7 @@ u32 g4x_get_vblank_counter(struct drm_crtc *crtc)
> > 	if (!vblank->max_vblank_count)
> > 		return 0;
> >
> >-	return intel_de_read(dev_priv, PIPE_FRMCOUNT_G4X(pipe));
> >+	return intel_de_read_notrace(dev_priv, PIPE_FRMCOUNT_G4X(pipe));
> > }
> >
> > static u32 intel_crtc_scanlines_since_frame_timestamp(struct intel_crtc=
 *crtc)
> >@@ -324,7 +324,8 @@ static bool i915_get_crtc_scanoutpos(struct drm_crtc
> *_crtc,
> > 		 * We can split this into vertical and horizontal
> > 		 * scanout position.
> > 		 */
> >-		position =3D (intel_de_read_fw(dev_priv, PIPEFRAMEPIXEL(pipe))
> & PIPE_PIXEL_MASK) >> PIPE_PIXEL_SHIFT;
> >+		position =3D (intel_de_read_fw_notrace(dev_priv,
> PIPEFRAMEPIXEL(pipe)) &
> >+			    PIPE_PIXEL_MASK) >> PIPE_PIXEL_SHIFT;
> >
> > 		/* convert to pixel counts */
> > 		vbl_start *=3D htotal;
> >--
> >2.34.1
> >
