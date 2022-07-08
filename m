Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 29DDA56B134
	for <lists+intel-gfx@lfdr.de>; Fri,  8 Jul 2022 06:02:10 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 2566412B417;
	Fri,  8 Jul 2022 04:01:03 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga05.intel.com (mga05.intel.com [192.55.52.43])
 by gabe.freedesktop.org (Postfix) with ESMTPS id CF13212B40B
 for <intel-gfx@lists.freedesktop.org>; Fri,  8 Jul 2022 04:01:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1657252860; x=1688788860;
 h=from:to:subject:date:message-id:references:in-reply-to:
 content-transfer-encoding:mime-version;
 bh=c3XUCQn1Y1UVvOr6LWqGh8y79bjd/9PM1VDE1aVzfGk=;
 b=Qkp00roTEId8fsRk8NfZj1YkxIfpEPT6yLtoTocLot5Y8m5r1OlPqrdo
 F66MzICrR6UeEMjovR3/53TwTuIdCr4U3297ty2NulOVLY4dSQHNjv9Qw
 H32r4bykXZxrMvhyEEIawV7AAvY1dOL+9P6g21MuZsWurKb3tUlJE5Jro
 7q2X08YU4+MzrHJf+LPW9SM1PkTTQLZo7f64ckFMbGxDlKWfOUo/1fN7C
 vs6gTH5D1YsTs63ExIHfQDfiw5VYdMBtBIas41l0H1Z8+PqP2Wa7ZEvkx
 Ck9armyHvJf4M2kX5cPLl8BlJdusTMptPX6/o/9Pc24ERbLki9HpkWLsG Q==;
X-IronPort-AV: E=McAfee;i="6400,9594,10401"; a="370496348"
X-IronPort-AV: E=Sophos;i="5.92,254,1650956400"; d="scan'208";a="370496348"
Received: from orsmga003.jf.intel.com ([10.7.209.27])
 by fmsmga105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 07 Jul 2022 21:01:00 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.92,254,1650956400"; d="scan'208";a="544064331"
Received: from orsmsx605.amr.corp.intel.com ([10.22.229.18])
 by orsmga003.jf.intel.com with ESMTP; 07 Jul 2022 21:00:59 -0700
Received: from orsmsx611.amr.corp.intel.com (10.22.229.24) by
 ORSMSX605.amr.corp.intel.com (10.22.229.18) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2308.27; Thu, 7 Jul 2022 21:00:59 -0700
Received: from ORSEDG601.ED.cps.intel.com (10.7.248.6) by
 orsmsx611.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2308.27 via Frontend Transport; Thu, 7 Jul 2022 21:00:59 -0700
Received: from NAM12-BN8-obe.outbound.protection.outlook.com (104.47.55.177)
 by edgegateway.intel.com (134.134.137.102) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2308.27; Thu, 7 Jul 2022 21:00:58 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=S7nETa8Jfi8sK1Ewxc3ERMd/o0DI5xD3gz5LiPiK0efJdLOXk01ZNOwgPr5LV9kiwK10xL3t6rHPGXLUfy4z8VqsRes8a/4AInZax5u5KYQd1J0aAJxYqgh17x30oc+KEliiXBJRErMQoaABc/IJvcKN/+5chneU5uYXDRI692bjUJkoW6GTFVgen3atGTcYnEkbn33hDh5yL8B71pEGjFjL7u2GfRgYBApJMS/OMOOKnUmS4vlzWhDO7EOApewe88Kwyygtdpdq4wMUxzONPKS8ruzItiupL4eNuIociYXi//ZMvEDkErAKHLuIgGV9pSI4jZMrnDiQgSyVxJhV6A==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=XmFax8hRtP/gIqUOWXzwfdU1YJx+KFnHskaWtTxqPO8=;
 b=BnKw1oWlCFzSKFpHygXomF1myS77BjwzdVZG50KKBay2qUe4oa0M+60Qbl1+v70VPvN81ZkNOgqODdyy2D8wgRiwzIDgcJSu7U7atEriv2ZFbloA0ThQRfOlC9VXdQTEn5TDzc73qnVZd5p0HiWX1GIty6ZGnVCC84UJ09xxFpfzL/dFVt8WvKlEwa1HHOFfG+XVrVHJPp4KjNZVOgJFDYXqJG3bzF3Iwd9KI/hbsSy1xfL3VRglnOWAbSOG0nI18jLiFRP6viYpt3zpGBUkD149B+BBqN1YGCzSREKiB0miRk8e2b9V2sU8fz4y9hBu+eQ9O+0gRfEPdtt1i/CsBQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from DM6PR11MB3177.namprd11.prod.outlook.com (2603:10b6:5:c::28) by
 MN2PR11MB4712.namprd11.prod.outlook.com (2603:10b6:208:264::15) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.5417.16; Fri, 8 Jul
 2022 04:00:57 +0000
Received: from DM6PR11MB3177.namprd11.prod.outlook.com
 ([fe80::3546:7df4:c8d2:1152]) by DM6PR11MB3177.namprd11.prod.outlook.com
 ([fe80::3546:7df4:c8d2:1152%5]) with mapi id 15.20.5395.021; Fri, 8 Jul 2022
 04:00:57 +0000
From: "Murthy, Arun R" <arun.r.murthy@intel.com>
To: "Nautiyal, Ankit K" <ankit.k.nautiyal@intel.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
Thread-Topic: [Intel-gfx] [PATCH] drm/i915/hdmi: Prune modes that require
 HDMI2.1 FRL
Thread-Index: AQHYkcJv5q/lPkN+5E6eprkCmYrMba1z1j4w
Date: Fri, 8 Jul 2022 04:00:56 +0000
Message-ID: <DM6PR11MB317775DC2D990594E3297055BA829@DM6PR11MB3177.namprd11.prod.outlook.com>
References: <20220707052712.2033748-1-ankit.k.nautiyal@intel.com>
In-Reply-To: <20220707052712.2033748-1-ankit.k.nautiyal@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
dlp-product: dlpe-windows
dlp-reaction: no-action
dlp-version: 11.6.500.17
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 7a620f50-f0b3-4d30-b913-08da60967626
x-ms-traffictypediagnostic: MN2PR11MB4712:EE_
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: JjdkbE9Y1iZkbYAgDoJSlYQG2swmuyo7mTEQ7RodSfsCpE12X6wPZU9wRzaUv6RaJQLTHCeWtXEr87xOBzsnhk36WkOViNvJq1hE8NkQFxYcx0e0aZkeoFn/MnU35+mHUEJMvdp7WKbuLeb/wR2HX7hhmO1OeKzCXAi7waogO+fvwKxotNhfkcbG+3O4SXsziJf+autJlYbGtAnQNsmJTmtWjPp8W2iTJYGp0WsXkKapF30ZAvgWV3Ygz+ATIjJnpVGC7bKOJQagtM+2Asb6cIH6xmTRVFF+di0gRXEUbwH5YSca9ZCLnBbWz8UaE/QZ1IegH6LNWDPF7wVObkA1mFe7S2ORhxToSxOyLwf7Zjc6hxRn03yKlv96ru0G+Pq8tRVAh0NgQ5yNj4TbhzdA39jgAdxdKqmvWGpSvGnsMZOKOs6Q9c+ugMOfo+eap6Usi592w+9HlxMx6FGcVIQkFmwYQMxSLTD6eIim5luS+8jwzr/GmqocfxviYoP7x32O8yI8JF/ME67Ir8c9ZRlltEDFdAgk0LINv/U+zB59Ln8Kx0s1/VOWqjXRQMrH+BZqBzBtwmyEh8Aq8lHMrUCf+1b7EGJiom2fFCbC8VL2qzZ41xvOTJbUnzQ2PEoNVYm8PRRTt5K2WCYFwA4/h/JTpJWQfvRu43a2J/G9Urk4EgHL7ETgBlipMa8iRHHOjjAeC1y2pBjc2StLH4CJ6gH3ysF9ApWC+zolh3Wrkjz09Drv3B5nqn6Sbqz1D2AIQ3U2fQAM0Ta/e/SOQVWp6GZCeExZz7HbAteXQ5kCP33r509lc7VxdWT9SjMPacGFqU1d
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM6PR11MB3177.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230016)(366004)(396003)(39860400002)(346002)(136003)(376002)(41300700001)(5660300002)(52536014)(71200400001)(478600001)(7696005)(8936002)(86362001)(316002)(2906002)(38100700002)(186003)(122000001)(66446008)(64756008)(76116006)(66556008)(82960400001)(55236004)(8676002)(66476007)(33656002)(9686003)(83380400001)(38070700005)(26005)(53546011)(55016003)(110136005)(6506007)(66946007);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?Uyk9KY6sxpNe8SHH+i2HTslUdqv0PyCq64dV0ECCzXmXNJ4eOO1ohjMb9KCh?=
 =?us-ascii?Q?DTV+QS+wXPiubTG7HHJS+SuL77Oram0hD1GS2CBs/mnQmgUrQOdby4HRmBDQ?=
 =?us-ascii?Q?TZDPxLPxLC2noyztpqLZRtKeKebNcNZTEGIubN7SxFyrIVMYfhx1S+upzYUS?=
 =?us-ascii?Q?9TvoX7wrYz7rfHQ2zLEXR9yLcEQ1Vax7AoC6JJpbpSSuBSawNQqjlBmiXPzz?=
 =?us-ascii?Q?t+s6GP2pUB8oNHZpSDKy4Gh4OV67D6W8HsTS0QwKa9GVecqvQbIaie3T4f3h?=
 =?us-ascii?Q?v2GKRE4HHG4Yf0lNn4QdGNNDU1bATlURSLo3RHzmwOWwAGFvnoLWM8X0FjMc?=
 =?us-ascii?Q?MU2fXP/cQvrgX4RUDDhtEgPR3ffaZ4ckPrzJ25Mtx8DD/md7d40eP1nKncAN?=
 =?us-ascii?Q?or+jpk+YnZQ+ytWNdbRxNJe0IIgUHbQ/jXlRcFVGsRUWDZEmLJp0LUErR0mq?=
 =?us-ascii?Q?G6zj0Kqyfb4RuW3C8nrfKjPCuFm1fH8imm5Q/PLKFf64mf3zTVy6tnJE+lAO?=
 =?us-ascii?Q?CQnloxBBp2zqYlvMkySlMhCFKgNiVbrBn8CDSbqVUscJArOaCO2bjIirlnyB?=
 =?us-ascii?Q?PjEa8LPHpEycJvVbseCfZ8d6MCRFfyiCEBaLIbU8zUxXXXQ040RKvQzrRz6O?=
 =?us-ascii?Q?YX4alvSSSQBfDS8a4VbrrbthBXz6KtPfhjeb7jhzz8tH8q03nR3Q/1duAQd8?=
 =?us-ascii?Q?EZohvlV4vxyc7i3bYed1V8dtNPMZDMsn1a/pyPaJWyNyxpc59B+HFW6FZpfJ?=
 =?us-ascii?Q?8QBAnlbAA8DcHPyeX9dPpOKOIiwXpI7jlPygS9jimBxKmmDmry5vi17N3QGY?=
 =?us-ascii?Q?fKJf+HHYOXzbvFL+iyNE2Bnjlj0hFc0vKMZyqt3fhG1+fnkzhINf0f1lVYTq?=
 =?us-ascii?Q?F8IXHGTdEcvi1qO8HvbI/ZzmgtL5EL5J+AEgX4AjjMf3kpwPDx96WtHVRL8l?=
 =?us-ascii?Q?3KSzYVX7XdGV7FoKbcRid/My67m5x1TEJMWzueoAom2nSbVLljDIW5BlcSAJ?=
 =?us-ascii?Q?Wm2kgH/itD+EfxenRFVqr/mcxIQSuYjvHN/TLiu/Ehv+MsHNsFYFmV84jOOP?=
 =?us-ascii?Q?rPbr4QwXOM4TnxcauJvOe6i/DTY9HOHDJC+1afIFtOqt4fjVrzYsthG0qT5D?=
 =?us-ascii?Q?PisQa0MHSGs72YrZwHV8eHyT4Xq835Tc/z8UgV65ODrTTnI2fGp0gUXaBNJR?=
 =?us-ascii?Q?8rqxG8ASYQU3bDho8aclVQ2nlFGPXu4zIYH4Cs3/DlNaruGHxKBKNB5aIrlt?=
 =?us-ascii?Q?YYVP5f3ABaJoq0FRQx57pY7OUtxrb5dLj6+5Fbur02RrSGKkRSj7P8c698Ba?=
 =?us-ascii?Q?o8WP7dXr3+b3AtBwuJsemNjZ2IcuL13P0QMkDcFyRno/AcAY0Gr7Rv8CXEoS?=
 =?us-ascii?Q?spcjFKU6hfNka0Ba6kWHL9jKr6Dxw6quSmsnPpTC5hF8NWEli4bZeU0SWSq3?=
 =?us-ascii?Q?drDhPT+mpAxmmhkjFNPRJDOkJ0aowpWWKqBjc8YfHkpC+49FOM+NHsoegZHz?=
 =?us-ascii?Q?dUvVESavqwDIKel1k8DnI+eQemAN4Etvy6Eztriw5iOBAQjFf1Gj20X10cza?=
 =?us-ascii?Q?T4lmqm1cO2uD+nbQQLHLTgCJcqbLQTzG2zYs8dYv?=
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: DM6PR11MB3177.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 7a620f50-f0b3-4d30-b913-08da60967626
X-MS-Exchange-CrossTenant-originalarrivaltime: 08 Jul 2022 04:00:56.9331 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: Go7MMaYjM+Qdt2cik21MeGLBUDySfR1Xaldv80R3Rs09xPHZikjKIyYFNRsTsXzXaFmwXTUgJOpUugoM2GHPuw==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MN2PR11MB4712
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] [PATCH] drm/i915/hdmi: Prune modes that require
 HDMI2.1 FRL
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



> -----Original Message-----
> From: Intel-gfx <intel-gfx-bounces@lists.freedesktop.org> On Behalf Of An=
kit
> Nautiyal
> Sent: Thursday, July 7, 2022 10:57 AM
> To: intel-gfx@lists.freedesktop.org
> Subject: [Intel-gfx] [PATCH] drm/i915/hdmi: Prune modes that require
> HDMI2.1 FRL
>=20
> HDMI2.1 requires some higher resolution video modes to be enumerated
> only if HDMI2.1 Fixed Rate Link (FRL) is supported.
> Current platforms do not support FRL transmission so prune modes that
> require HDMI2.1 FRL.
>
If the hardware doesn't support FRL then it basically blocks HDMI2.1 featur=
e.
Then it wont be possible to use any resolution above 4k60 is it?

> Signed-off-by: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
> ---
>  drivers/gpu/drm/i915/display/intel_hdmi.c | 21 +++++++++++++++++++++
>  1 file changed, 21 insertions(+)
>=20
> diff --git a/drivers/gpu/drm/i915/display/intel_hdmi.c
> b/drivers/gpu/drm/i915/display/intel_hdmi.c
> index ebd91aa69dd2..93c00b61795f 100644
> --- a/drivers/gpu/drm/i915/display/intel_hdmi.c
> +++ b/drivers/gpu/drm/i915/display/intel_hdmi.c
> @@ -1974,6 +1974,20 @@ intel_hdmi_mode_clock_valid(struct
> drm_connector *connector, int clock,
>  	return status;
>  }
>=20
> +/*
> + * HDMI2.1 requires higher resolution modes like 8k60, 4K120 to be
> + * enumerated only if FRL is supported. Platforms not supporting FRL
> + * must prune these modes.
> + */
> +static bool
> +hdmi21_frl_quirk(int dotclock, bool frl_supported) {
> +	if (dotclock >=3D 600000 && !frl_supported)
> +		return true;
> +
> +	return false;
> +}
> +
>  static enum drm_mode_status
>  intel_hdmi_mode_valid(struct drm_connector *connector,
>  		      struct drm_display_mode *mode)
> @@ -2001,6 +2015,13 @@ intel_hdmi_mode_valid(struct drm_connector
> *connector,
>  		clock *=3D 2;
>  	}
>=20
> +	/*
> +	 * Current Platforms do not support HDMI2.1 FRL mode of
> transmission,
> +	 * so prune the modes that require FRL.
> +	 */
> +	if (hdmi21_frl_quirk(clock, false))
> +		return MODE_BAD;
> +
Instead of setting this frl_supported as false, can we get this info from h=
ardware, so that when
our hardware supports it later it would be easy to enable this.

Thanks and Regards,
Arun R Murthy
-------------------
