Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 4A56C2FB540
	for <lists+intel-gfx@lfdr.de>; Tue, 19 Jan 2021 11:21:31 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 1F3436E845;
	Tue, 19 Jan 2021 10:21:29 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga05.intel.com (mga05.intel.com [192.55.52.43])
 by gabe.freedesktop.org (Postfix) with ESMTPS id DDECE6E0EF
 for <intel-gfx@lists.freedesktop.org>; Tue, 19 Jan 2021 10:21:27 +0000 (UTC)
IronPort-SDR: KlC+iCHkxe51KnmXGxXJK4C84GQOEHx7WvQ762rexa2dCrpJbLCn2yy6QXvNOwCNhllmdqFv59
 koIZgtC1NHjw==
X-IronPort-AV: E=McAfee;i="6000,8403,9868"; a="263714568"
X-IronPort-AV: E=Sophos;i="5.79,358,1602572400"; d="scan'208";a="263714568"
Received: from fmsmga006.fm.intel.com ([10.253.24.20])
 by fmsmga105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 19 Jan 2021 02:21:24 -0800
IronPort-SDR: UaGCN7B7i4vodP8Kf5u9I7yo5af2YVmYenFqB5dysw33J+Ao74uzdbUlSczIX+W02Iy/LVma/v
 G9d2N5tql4xQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.79,358,1602572400"; d="scan'208";a="570964755"
Received: from fmsmsx604.amr.corp.intel.com ([10.18.126.84])
 by fmsmga006.fm.intel.com with ESMTP; 19 Jan 2021 02:21:24 -0800
Received: from fmsmsx604.amr.corp.intel.com (10.18.126.84) by
 fmsmsx604.amr.corp.intel.com (10.18.126.84) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.1713.5; Tue, 19 Jan 2021 02:21:23 -0800
Received: from FMSEDG603.ED.cps.intel.com (10.1.192.133) by
 fmsmsx604.amr.corp.intel.com (10.18.126.84) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id 15.1.1713.5
 via Frontend Transport; Tue, 19 Jan 2021 02:21:23 -0800
Received: from NAM04-BN8-obe.outbound.protection.outlook.com (104.47.74.47) by
 edgegateway.intel.com (192.55.55.68) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.1713.5; Tue, 19 Jan 2021 02:21:23 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=biss4c3Hs9iUYHjEthlGj9WcHDqOUdgqdfIql3qx1xa67L6JA6bXsESzPb4Pk6vABA9x0PjT+YSc+yLie07cvA+CY+pvj5XvU8ilghx1JTJQoofKqQTrO80aLVnx/I3VYv0a+MDQ709qPhZRR4iuoDA7aHrifq5DHmxcSzn/Wn4qAmGiUpcEH+Sy6WotOIZAkfzycdYlJg18RVZ+TzLiC5sAr996u/iS3cxI4Guavybtf7XT+PB3fotTXy6P30zQJFueAWyp1bu2Il5CNgFbmWzKUOIlxPTzEI33CFFyvqo1ulm5FdC/QoB7oj+VSWr8gSLlFKVoxprK1+oDxBNDFw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=ICCcLtSeyo4VX4UB2F/AbkzQcSr3Go1PEBs1eNBeXCg=;
 b=Pf88cME6kjzTBRAIy8OwN+/a78kSIljRs0ZePvhTRkr8t6gmo90PGQ4rY46Cqe1jmBwO3TWm9kiZNfUhZW6FkJY99to4oc/ZU50a861DTd/1YK5VI6n9PXbMQ9y3oafXOSgd8fU0pYK07E6k4D3MO5LheA+GBOW5BuKgY5z9dp7JrUHnUuuEd1mYGklHsJ7k0xMGpfUHF20UHekLCIKNYqeQCo/8FL8DmMO+IutZCRoslBpfUhC0eSu1d+fGPseDYRu9Qutglw1qTBQDomSPG5lFyMNvtodaGcKLSVDESoVz/Sjbq2QhQbFV4gvmqeW1GBT5zpoJ0sB5MiKBqBlE/w==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=intel.onmicrosoft.com; 
 s=selector2-intel-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=ICCcLtSeyo4VX4UB2F/AbkzQcSr3Go1PEBs1eNBeXCg=;
 b=UaZ/0eElXGmxlRIDN2sS2rQGUA68QYxqgcAEz9825mYVn1nb3JCuExOO2OdUZ9Q3V+r7jbYMUazE52D1dlMcBlgGwUCgFEjB4sq0o6+FBv06hEdjPn+NJQmo2mDhUJinDn7CAFNSqdS3GRlOSJ6xelpgfd7gtveJQ1wwcSAhAqg=
Received: from BYAPR11MB3799.namprd11.prod.outlook.com (2603:10b6:a03:fb::19)
 by BYAPR11MB3575.namprd11.prod.outlook.com (2603:10b6:a03:b3::33)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.3763.12; Tue, 19 Jan
 2021 10:21:22 +0000
Received: from BYAPR11MB3799.namprd11.prod.outlook.com
 ([fe80::acc2:bf8b:7d91:491b]) by BYAPR11MB3799.namprd11.prod.outlook.com
 ([fe80::acc2:bf8b:7d91:491b%5]) with mapi id 15.20.3763.014; Tue, 19 Jan 2021
 10:21:21 +0000
From: "Abodunrin, Akeem G" <akeem.g.abodunrin@intel.com>
To: Chris Wilson <chris@chris-wilson.co.uk>, "intel-gfx@lists.freedesktop.org"
 <intel-gfx@lists.freedesktop.org>
Thread-Topic: [PATCH 1/5] drm/i915/gt: One more flush for Baytrail clear
 residuals
Thread-Index: AQHW7kc+4Cz7W5iN/k6C62uMOJ73y6ouvO4A
Date: Tue, 19 Jan 2021 10:21:21 +0000
Message-ID: <BYAPR11MB3799406D7F9F9C3D1757E36BA9A30@BYAPR11MB3799.namprd11.prod.outlook.com>
References: <20210119094053.6919-1-chris@chris-wilson.co.uk>
In-Reply-To: <20210119094053.6919-1-chris@chris-wilson.co.uk>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
dlp-product: dlpe-windows
dlp-reaction: no-action
dlp-version: 11.5.1.3
authentication-results: chris-wilson.co.uk; dkim=none (message not signed)
 header.d=none;chris-wilson.co.uk; dmarc=none action=none
 header.from=intel.com;
x-originating-ip: [73.67.166.226]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 68038400-9f23-4cb1-95f3-08d8bc63f7dd
x-ms-traffictypediagnostic: BYAPR11MB3575:
x-microsoft-antispam-prvs: <BYAPR11MB357519E2A69D47A1FFA77060A9A30@BYAPR11MB3575.namprd11.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:2803;
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: 1P5kGabK6tU52/WOhwk0dYyigM0SUTIkZJJAaWX7Ad2bQcWX0mM2h3Cn0ftBUpiuAkSh7Yd7pI89ZhLUhsUR42JqX3xB6cU3FpwuxcE4PYz5zU8IbbRGh+Hx8L72wOWguxA4nIH7OxRAYkhgkuJ7i+itQS4Oj4tMObNAuu/lHRTgYq5H8c5W2Se/Cwq6z5/CH5mmIa7CFeV9ApzVt461SSPJVUXgm+z5DwqB3de+LH4BcU8GIYLSHmqk8fqzWMk7tRDB0uKbY91yr3eA3jEaOg+wL6+VGVlNx52jRkBSws1olKaAlZTC3tDBPyOlNW4jwqJgBigtet92G3iE+3bFHZxvsH7yok1NVwUikAKMOb74UwEb5KXUQBHaPe5ELeJn
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:BYAPR11MB3799.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(4636009)(136003)(39860400002)(346002)(376002)(366004)(396003)(4326008)(66946007)(8676002)(64756008)(66446008)(53546011)(71200400001)(316002)(86362001)(7696005)(76116006)(110136005)(66556008)(33656002)(66476007)(8936002)(52536014)(5660300002)(83380400001)(2906002)(9686003)(6506007)(26005)(55016002)(478600001)(186003);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata: =?us-ascii?Q?Mew/Cuwgqc8n53SDKS0pv7559qUGME5jXNPnkvVBAwDWDbgetkmuW/Yx1hl4?=
 =?us-ascii?Q?pNFHDAGJvqiFQtC4sXKK9OMI0E0GyE6zLS4k0H3kSv8jw1/Rilc8K9OCa2kk?=
 =?us-ascii?Q?ogtUJmh6uLNr6ZOkWK5z2E663IF1Bvn92vhpCf4IARmdWHLIcpzG2OICXW0w?=
 =?us-ascii?Q?4v+21WjOlwQv3tSeNWLfHJqRCHXFhTGldNkn0Lgidsck6fb7+GBnGNyoX7uw?=
 =?us-ascii?Q?l2dBxt3vIikwHuKtqAV5D55ci3/1zQISq8A6cNx8ueiABYISz2Bxk1XeiHQB?=
 =?us-ascii?Q?nAJ/hSouWnH/zKxbnUku7ydYPFMgmDg7g/MWZie9KrAOzUA5iZ2kELg4lf/e?=
 =?us-ascii?Q?of2gv6oe9LJhbXcCT2AXK0Fhq5ossGlMv1WRZR9bKOBhqg8UIDRLzmvwrU7/?=
 =?us-ascii?Q?TPqvy4y1Wg9V1Xd9HQcF+2Yhkdo+yQMfiCIc8xUwowlK14vCaSb8pFrPjFjz?=
 =?us-ascii?Q?782QmPFBp6z9i+LCWKd0JdfRAGhCswSCvswOH720BnVi/ReeVJNGO6H5WW5N?=
 =?us-ascii?Q?1cVX/0PjfNoBn7RBQrbKFNzZE+AVjF+X7fXMxyNv4x8iF1u3rFJSQdlLcADu?=
 =?us-ascii?Q?ji7MSE7hmWr3ctexhvcTZnYHI0bhIZJ9kqH311/3Sw1kUd0uMRi6O0ClIWBM?=
 =?us-ascii?Q?ZYGlJiLI3mUJA8PJPrP7sB7rGXdAsX8aTA+/iRAHmOyiJ9RDC0y/regEOIz7?=
 =?us-ascii?Q?qtpPy4IomMUoowB9nb4l6El20OZWQLqYjMaC7vRpIVBdHkLsU126gjIlu1uV?=
 =?us-ascii?Q?kNuQENNjVFUjmhS3KWf72MaX2QVUEJ/IIAX4zW1dWoo/0v+jUfgJPJd4kk16?=
 =?us-ascii?Q?YKcHarfOX5zO/0+Bb0x5rokNYyPaSKdHYSXmFMUlE1xq5Ma3XyII6LpX/rZY?=
 =?us-ascii?Q?e2YBwEojtWgR8HiTuG2c5gVkIMMXLDQEEdWzrZylN9Equ1cGiOIl9F/Lr0nv?=
 =?us-ascii?Q?SvgiRjw/kA5zXaMX3+n+kB0t/gCF3iTqFhKbgA5iBgM=3D?=
x-ms-exchange-transport-forked: True
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: BYAPR11MB3799.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 68038400-9f23-4cb1-95f3-08d8bc63f7dd
X-MS-Exchange-CrossTenant-originalarrivaltime: 19 Jan 2021 10:21:21.8024 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: 1zkasl1pluSHcVeTf/EHD9N7aP2Qd9ALjfju0o7qCmcGyWSZ50U6fC7lPhS7Ll+bnZ4YZXFriwJvmuqA64jWnGXS4pPtesTWz7amKPkYisg=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BYAPR11MB3575
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] [PATCH 1/5] drm/i915/gt: One more flush for
 Baytrail clear residuals
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



> -----Original Message-----
> From: Chris Wilson <chris@chris-wilson.co.uk>
> Sent: Tuesday, January 19, 2021 1:41 AM
> To: intel-gfx@lists.freedesktop.org
> Cc: mika.kuoppala@linux.intel.com; Chris Wilson <chris@chris-wilson.co.uk>;
> Abodunrin, Akeem G <akeem.g.abodunrin@intel.com>
> Subject: [PATCH 1/5] drm/i915/gt: One more flush for Baytrail clear residuals
> 
> CI reports that Baytail requires one more invalidate after CACHE_MODE for it
> to be happy.
> 
> Fixes: ace44e13e577 ("drm/i915/gt: Clear CACHE_MODE prior to clearing
> residuals")
> Signed-off-by: Chris Wilson <chris@chris-wilson.co.uk>
> Cc: Mika Kuoppala <mika.kuoppala@linux.intel.com>
> Cc: Akeem G Abodunrin <akeem.g.abodunrin@intel.com>
> ---
>  drivers/gpu/drm/i915/gt/gen7_renderclear.c | 9 ++++++---
>  1 file changed, 6 insertions(+), 3 deletions(-)
> 
> diff --git a/drivers/gpu/drm/i915/gt/gen7_renderclear.c
> b/drivers/gpu/drm/i915/gt/gen7_renderclear.c
> index 39478712769f..8551e6de50e8 100644
> --- a/drivers/gpu/drm/i915/gt/gen7_renderclear.c
> +++ b/drivers/gpu/drm/i915/gt/gen7_renderclear.c
> @@ -353,19 +353,21 @@ static void gen7_emit_pipeline_flush(struct
> batch_chunk *batch)
> 
>  static void gen7_emit_pipeline_invalidate(struct batch_chunk *batch)  {
> -	u32 *cs = batch_alloc_items(batch, 0, 8);
> +	u32 *cs = batch_alloc_items(batch, 0, 10);
> 
>  	/* ivb: Stall before STATE_CACHE_INVALIDATE */
> -	*cs++ = GFX_OP_PIPE_CONTROL(4);
> +	*cs++ = GFX_OP_PIPE_CONTROL(5);
>  	*cs++ = PIPE_CONTROL_STALL_AT_SCOREBOARD |
>  		PIPE_CONTROL_CS_STALL;
>  	*cs++ = 0;
>  	*cs++ = 0;
> +	*cs++ = 0;
> 
> -	*cs++ = GFX_OP_PIPE_CONTROL(4);
> +	*cs++ = GFX_OP_PIPE_CONTROL(5);
>  	*cs++ = PIPE_CONTROL_STATE_CACHE_INVALIDATE;
>  	*cs++ = 0;
>  	*cs++ = 0;
> +	*cs++ = 0;
> 
>  	batch_advance(batch, cs);
>  }
> @@ -397,6 +399,7 @@ static void emit_batch(struct i915_vma * const vma,
>  	batch_add(&cmds, 0xffff0000);
>  	batch_add(&cmds, i915_mmio_reg_offset(CACHE_MODE_1));
>  	batch_add(&cmds, 0xffff0000 |
> PIXEL_SUBSPAN_COLLECT_OPT_DISABLE);
> +	gen7_emit_pipeline_invalidate(&cmds);
>  	gen7_emit_pipeline_flush(&cmds);
> 
>  	/* Switch to the media pipeline and our base address */
> --
> 2.20.1

Reviewed-by: Akeem G Abodunrin <akeem.g.abodunrin@intel.com>

Thank you!
~Akeem

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
