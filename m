Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 3FDCD70D311
	for <lists+intel-gfx@lfdr.de>; Tue, 23 May 2023 07:06:59 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 015E210E3D3;
	Tue, 23 May 2023 05:06:56 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 9E52510E3D3
 for <intel-gfx@lists.freedesktop.org>; Tue, 23 May 2023 05:06:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1684818413; x=1716354413;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=uKEEIbXir6MChMMrrt0dURRs2ywsC7EweEQXuj8wcuI=;
 b=mGB3eo6wFsOq5N2bCJxPnNIARj9jeobKA5HEbaK31Cj51mwBiz5HSh5m
 sCG/T2WAAT4+upDZoX/O7i2KXXZMTSU8XEbeW4X0Ievuq7tNdC/vv9rVY
 zxQ0nm10ntfJ4YeGbEiMWFvpfdCR0orkqiueOF83EY4p61Wqs5T9QSsjB
 JfpT+6rWNcLSxrmnCQ/9f4IwO6sgmm07S1JpOocXtt/KBfoZk/XdwgRtE
 2SAyiSU2dJdN/EPXcTF7Swf2ktnoNcwxEEO9GJ4GL+x5txxqfq7C1MHun
 DZ/EmBI5uXFc5dfLumVoEZaKY6rcf95StiF4R5SXQhdpXc9HL+L9cEd9i Q==;
X-IronPort-AV: E=McAfee;i="6600,9927,10718"; a="342588086"
X-IronPort-AV: E=Sophos;i="6.00,185,1681196400"; d="scan'208";a="342588086"
Received: from orsmga002.jf.intel.com ([10.7.209.21])
 by orsmga101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 22 May 2023 22:06:52 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10718"; a="703800856"
X-IronPort-AV: E=Sophos;i="6.00,185,1681196400"; d="scan'208";a="703800856"
Received: from fmsmsx602.amr.corp.intel.com ([10.18.126.82])
 by orsmga002.jf.intel.com with ESMTP; 22 May 2023 22:06:51 -0700
Received: from fmsmsx610.amr.corp.intel.com (10.18.126.90) by
 fmsmsx602.amr.corp.intel.com (10.18.126.82) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.23; Mon, 22 May 2023 22:06:51 -0700
Received: from fmsedg602.ED.cps.intel.com (10.1.192.136) by
 fmsmsx610.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.23 via Frontend Transport; Mon, 22 May 2023 22:06:51 -0700
Received: from NAM04-MW2-obe.outbound.protection.outlook.com (104.47.73.169)
 by edgegateway.intel.com (192.55.55.71) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.23; Mon, 22 May 2023 22:06:51 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=RcnlRuJ7mM97gDgmL+XEZgM85aB5QchjTYvAolMvWPMdoN+tTi0AoVh0FLp5iWSrtggehLav2vbpfyPv6w482Qo/ItVc6op9Rb4HW/bj673kbbJtS1hpt/wRRc/uaJz2F49R85hpmjbUDSLUisAKhuXfRkoyFMRJ2ceFdQDxFNyJIE2TLPW+zgALWmsSOKaUu42M4hfBSb5l0fSX1dhG/brKXcmcG97fM4BMojXtfRZ78JCcb1WAviMYhiGY0cLm/qaP3dB2w5vpYtakbdw2zXZQ9qqgnt8H3uNhLE8ppTRpjv9WjWCpR8kQdEuIAgbDhl14WHyc9N4+SY1VUFJm/A==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=d3eMgqxfFgfZFU4PTv06BWF3lLUQkW/V/PIEY8+OYhs=;
 b=if+XfqqOq/6uCsvIO0P52ZSK68yB2IiIyPaLJlHyj1xmpvHdFIvJRNPdiDfF+IeeM56OiqXyi/SLgV0Z+yjQVNFWWQB1Gv/Wxg62toVKl/huvdg+cqp9TxZG3kj6BStL0MNeub3SdEQqdo0r7vsBnhOCV7SR3ApvlHZM0anvi+4Iyt1bcrb3UL9g9upKVZJlhVUGV35lA+1X9Qwc4hYoUAjvImCLWaqNN/IhX5z6WiYc7s+yMcEq+aM8adYVWlPwA2btyBZQhLBn94E5BdFseTqqjg85JUFXhViCWhgFLJI7e+oCSJQtPRjsroqouT3+MxAgOJh0LwR29QoeG7vncg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from SJ1PR11MB6129.namprd11.prod.outlook.com (2603:10b6:a03:488::12)
 by PH7PR11MB6747.namprd11.prod.outlook.com (2603:10b6:510:1b5::18)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6411.28; Tue, 23 May
 2023 05:06:49 +0000
Received: from SJ1PR11MB6129.namprd11.prod.outlook.com
 ([fe80::ae46:be17:d89d:db39]) by SJ1PR11MB6129.namprd11.prod.outlook.com
 ([fe80::ae46:be17:d89d:db39%6]) with mapi id 15.20.6411.028; Tue, 23 May 2023
 05:06:48 +0000
From: "Borah, Chaitanya Kumar" <chaitanya.kumar.borah@intel.com>
To: "Kandpal, Suraj" <suraj.kandpal@intel.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
Thread-Topic: [PATCH v2 2/3] drm/i915/hdcp: Move away from master naming to
 arbiter
Thread-Index: AQHZjRAPMnCA2RlC7UqgdkV/y3PFKK9nTaKg
Date: Tue, 23 May 2023 05:06:48 +0000
Message-ID: <SJ1PR11MB6129CBFCC512BF32D07EC2C9B9409@SJ1PR11MB6129.namprd11.prod.outlook.com>
References: <20230523004455.1206533-1-suraj.kandpal@intel.com>
 <20230523004455.1206533-3-suraj.kandpal@intel.com>
In-Reply-To: <20230523004455.1206533-3-suraj.kandpal@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: SJ1PR11MB6129:EE_|PH7PR11MB6747:EE_
x-ms-office365-filtering-correlation-id: 55024cb4-b38c-4de0-2730-08db5b4b836c
x-ld-processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: vM/sQRjlh2lslcHh/EJ1NOSpZJOx7D0BArrjfM1oce6DdU0uGFK81SDvsj/B8ba5hA4wEA+m01o/zi1CJ9/J5zqJVqwtaOI5k6hbnwS/mwO6uChU5UZotqsq1YD3idnBcL3wZ3z6Sf6zIozR1ZAdhhLUexdK5+ArdC/PbkxCFhIrXJwD8owDzki9YhpvzGSX+DE8L058xu8vqMTaCLxurDvH+mDdF+KqLRKdVB1fUhC50vHJe0tksBFQjYbdx6wKJFog+35AmQyN7B5IK9qWCVBv/lepswu2XZAYWQNNJJ9tENX8tbzmwLlcX5IFelH++ZA5ninNxuc3zOkxiz7HmiRbe2Fd8gRr+Ny3ycxABuAZRTmnfHMLqLU9xLxjTEaUpg+SL5qLM/YMzT7WLIqtmLonJrbvcLj+Z5SyOUcqDdm6zTpN8OUabiWtc7U8r6hWKwy4ZXS2AmmKY9nunIsYd5odYNmI90WfP2k8d658mitZXNtm/aWGk0v79bk5t966HGM7kARmonW95lm8Y1bROu4AbzwQxOdxyQeTy1Bfac7J5gBkEB/h4za7acz6stZ14j83ZWP4VnQkfegWJ56+A1je1wvfNven+lgrrVGjSpSe9r0B6XaPvt0h7MA2P4H5
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:SJ1PR11MB6129.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230028)(136003)(376002)(366004)(396003)(346002)(39860400002)(451199021)(8676002)(8936002)(52536014)(5660300002)(186003)(53546011)(6506007)(86362001)(9686003)(122000001)(26005)(38100700002)(82960400001)(83380400001)(38070700005)(107886003)(41300700001)(7696005)(66446008)(71200400001)(33656002)(55016003)(66476007)(66556008)(66946007)(76116006)(64756008)(316002)(478600001)(4326008)(110136005)(54906003)(2906002)(30864003);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?C/69xJQKO7ixfm8grNsyFtmjx5Bi3LpBKpdZvo5z4slkche7b/12Qh7unhEO?=
 =?us-ascii?Q?8tJJnU+pZBqSqXQXtkxq5XYbzwRe53yWbnS8RoBHtcGB4pAIc9j7qamsbDZ/?=
 =?us-ascii?Q?gtyhub7Ap3GcaQzpJjBTNbDeiKTpouV1+/JKF1sYuCpTnxlxVVipZaJ62Hdh?=
 =?us-ascii?Q?e+b5VJACcB/ne2F0433dG+FQX6x5TrKFLPAHxB83NtAF9yeplp8iLa4UanuD?=
 =?us-ascii?Q?dkb9H9lXr8V/+cRSQDt8/r6bLb7owC5yKW5pa2cY6nPS/KI+YFhLyNeDX86T?=
 =?us-ascii?Q?ikBpj4HkXM4DNOuQHcXzgyhkTiJLDYVWjWGyPtWiU4iPmHka+8SspZVNQfAL?=
 =?us-ascii?Q?LshixiAd89fIlKQ60tY9PvvlfzQg9hFbvjwcXQpZoCIMZcEZQkob8Nz9r1v7?=
 =?us-ascii?Q?m2ohDf2whgOA294ZRvB8K9DYbcYnqSX0HlgzeHndmwRAvbDFanb2ctLPA98j?=
 =?us-ascii?Q?2QZ0nn3qjWcoC4qNEn9k45/hf0C30v+slbfiDjn00eqpHD4W/+M1caBY0TL7?=
 =?us-ascii?Q?qlVruaR0TNFOVrB4as2a8D66coOO1EZmGzq3Y8DZgRFAN46O5YOhP0kav2B6?=
 =?us-ascii?Q?S2pQxxnWic1idty+qkGUJlJbI5GOqxGuF8GKEcdSEs3Jmq0Xy1ApKeUe/mLb?=
 =?us-ascii?Q?zqDxrtxoH34C0vkW5QPLLo2CzYbbrbEl5Fqgz2vzArdvxww/yoMSNdMMGxBg?=
 =?us-ascii?Q?VGNxoX+6lYfyZrFHoRv9M7Yvy4JkS1+npwI8PppIU6uaMwdgkvzIvYCjVWvR?=
 =?us-ascii?Q?M7aDXpwrM28cuGIsXZMvVGSdP1oXsBGois+ZWYaP3DlNbCcvKF5SA+4W4VKY?=
 =?us-ascii?Q?IbV/NUdE4MJle5c6rEGj+fqB/TqRN4+vhQHXOSsldoluT3kORlxkSneVxkSD?=
 =?us-ascii?Q?mX1jqnO3qa1ZDD+W+4fEZnVUEYtzRVlUt7pj9jjskFMcJBfDNIe2uDtVkQEs?=
 =?us-ascii?Q?dv3UIz4iKboxh9zGNtYAupEoLYFUFDNHI+8mY6lq0Ys8UpdNQX6Bj6Rb1DAi?=
 =?us-ascii?Q?BDibTUOE0Mn4vidqDVjXPXCw+8VhFf0rO7ytAO3JbGto8W3w3FrnP0RJQHh6?=
 =?us-ascii?Q?flMXj+Zt9XYRZcQw5epsCa8/mP5tAg58FCLOhxBbt4AnOWIZ47fMCDfV9weF?=
 =?us-ascii?Q?PR2ML2Hn6ESsLGf4QeD1kSRX7VmFrnzOxf2PEuW6KVx5tk4K9w3S/JGu26xX?=
 =?us-ascii?Q?CvoIKtDM7ULcgTXtCvrUpLdGrMfuGFjS4exRITUKUoGJKHdL/Axd/ertawZA?=
 =?us-ascii?Q?luJl+SkD/zxd9bw0/bcR46yH0lBRJ9CDhgXLx4HTtiQTxRaCY4E3/jsO0qnM?=
 =?us-ascii?Q?NYOND2PlKEmiR2Z4AvM+zLjK2Q8NCRtG1+l3rbiHbQHZ9Xw4WfHt4nVQSRAO?=
 =?us-ascii?Q?+r8jY2k69hGdb0YLKUjr208WRLYrlL+bY0GhzwwddmlN8F39XkxSfCbpyziV?=
 =?us-ascii?Q?/vDBzIC9SOOoWu5RV38s88r4VD6p2SKztM/ZveLouWajnMaFX/1HXskJkPln?=
 =?us-ascii?Q?tztTnwhgXeCbd8wBG53G0syXw8+ABY0hl0UDLHavclLn3r5xQTMkMcHTrAwU?=
 =?us-ascii?Q?JTG5WCvZmJfUqkxl1Z7/6A2qMohIw3GIfFZlRioZzIvjG3lsh9pksKhkJTD8?=
 =?us-ascii?Q?pw=3D=3D?=
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: SJ1PR11MB6129.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 55024cb4-b38c-4de0-2730-08db5b4b836c
X-MS-Exchange-CrossTenant-originalarrivaltime: 23 May 2023 05:06:48.8158 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: Mxx5EFUpCqAxpWcFREUZHvjnY+0DosI747R1tU7yIYmOyvUWdCGxETJMN9SqJ1TfUwQAqPV0UDpwHYQc4w+lbnh0M9kqgwq1dSXbmkDemjc=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PH7PR11MB6747
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] [PATCH v2 2/3] drm/i915/hdcp: Move away from master
 naming to arbiter
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
Cc: "Nikula, Jani" <jani.nikula@intel.com>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Hello Suraj,

> -----Original Message-----
> From: Kandpal, Suraj <suraj.kandpal@intel.com>
> Sent: Tuesday, May 23, 2023 6:15 AM
> To: intel-gfx@lists.freedesktop.org
> Cc: Kandpal, Suraj <suraj.kandpal@intel.com>; Borah, Chaitanya Kumar
> <chaitanya.kumar.borah@intel.com>; Nautiyal, Ankit K
> <ankit.k.nautiyal@intel.com>; Nikula, Jani <jani.nikula@intel.com>
> Subject: [PATCH v2 2/3] drm/i915/hdcp: Move away from master naming to
> arbiter
>=20
> Rename variables to move away from master convention to arbiter
> %s/hdcp.master/hdcp.arbiter %s/i915_hdcp_master/i915_hdcp_arbiter
> %s/comp_master/comp_arbiter
>=20
> --v2
> - delete i915_hdcp_comp_master redundant declaration [Chaitanya]
> - use %s/foo/bar/ format in commit message to show changes [Chaitanya]
>=20
> Cc: Chaitanya Kumar Borah <chaitanya.kumar.borah@intel.com>
> Cc: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
> Cc: Jani Nikula <jani.nikula@intel.com>
> Signed-off-by: Suraj Kandpal <suraj.kandpal@intel.com>
> ---
>  .../gpu/drm/i915/display/intel_display_core.h |  3 +-
>  drivers/gpu/drm/i915/display/intel_hdcp.c     | 52 +++++++++----------
>  drivers/gpu/drm/i915/display/intel_hdcp_gsc.c | 12 ++---
>  drivers/misc/mei/hdcp/mei_hdcp.c              | 26 +++++-----
>  include/drm/i915_hdcp_interface.h             |  4 +-
>  5 files changed, 48 insertions(+), 49 deletions(-)
>=20
> diff --git a/drivers/gpu/drm/i915/display/intel_display_core.h
> b/drivers/gpu/drm/i915/display/intel_display_core.h
> index e36f88a39b86..19b08531a2c3 100644
> --- a/drivers/gpu/drm/i915/display/intel_display_core.h
> +++ b/drivers/gpu/drm/i915/display/intel_display_core.h
> @@ -30,7 +30,6 @@ struct drm_i915_private;  struct drm_property;  struct
> drm_property_blob;  struct i915_audio_component; -struct
> i915_hdcp_comp_master;

Nit: We can retain the declaration with the new structure name.

-struct i915_hdcp_comp_master;
+struct i915_hdcp_arbiter;

With that,

Reviewed-by: Chaitanya Kumar Borah <chaitanya.kumar.borah@intel.com>

  struct intel_atomic_state;  struct
> intel_audio_funcs;  struct intel_bios_encoder_data; @@ -395,7 +394,7 @@
> struct intel_display {
>  	} gmbus;
>=20
>  	struct {
> -		struct i915_hdcp_master *master;
> +		struct i915_hdcp_arbiter *arbiter;
>  		bool comp_added;
>=20
>  		/*
> diff --git a/drivers/gpu/drm/i915/display/intel_hdcp.c
> b/drivers/gpu/drm/i915/display/intel_hdcp.c
> index 19c0b779e435..7d43845d5157 100644
> --- a/drivers/gpu/drm/i915/display/intel_hdcp.c
> +++ b/drivers/gpu/drm/i915/display/intel_hdcp.c
> @@ -183,7 +183,7 @@ bool intel_hdcp2_capable(struct intel_connector
> *connector)
>=20
>  	/* MEI/GSC interface is solid depending on which is used */
>  	mutex_lock(&i915->display.hdcp.comp_mutex);
> -	if (!i915->display.hdcp.comp_added ||  !i915->display.hdcp.master) {
> +	if (!i915->display.hdcp.comp_added ||  !i915->display.hdcp.arbiter) {
>  		mutex_unlock(&i915->display.hdcp.comp_mutex);
>  		return false;
>  	}
> @@ -1114,11 +1114,11 @@ hdcp2_prepare_ake_init(struct intel_connector
> *connector,
>  	struct intel_digital_port *dig_port =3D
> intel_attached_dig_port(connector);
>  	struct hdcp_port_data *data =3D &dig_port->hdcp_port_data;
>  	struct drm_i915_private *i915 =3D to_i915(connector->base.dev);
> -	struct i915_hdcp_master *arbiter;
> +	struct i915_hdcp_arbiter *arbiter;
>  	int ret;
>=20
>  	mutex_lock(&i915->display.hdcp.comp_mutex);
> -	arbiter =3D i915->display.hdcp.master;
> +	arbiter =3D i915->display.hdcp.arbiter;
>=20
>  	if (!arbiter || !arbiter->ops) {
>  		mutex_unlock(&i915->display.hdcp.comp_mutex);
> @@ -1144,11 +1144,11 @@ hdcp2_verify_rx_cert_prepare_km(struct
> intel_connector *connector,
>  	struct intel_digital_port *dig_port =3D
> intel_attached_dig_port(connector);
>  	struct hdcp_port_data *data =3D &dig_port->hdcp_port_data;
>  	struct drm_i915_private *i915 =3D to_i915(connector->base.dev);
> -	struct i915_hdcp_master *arbiter;
> +	struct i915_hdcp_arbiter *arbiter;
>  	int ret;
>=20
>  	mutex_lock(&i915->display.hdcp.comp_mutex);
> -	arbiter =3D i915->display.hdcp.master;
> +	arbiter =3D i915->display.hdcp.arbiter;
>=20
>  	if (!arbiter || !arbiter->ops) {
>  		mutex_unlock(&i915->display.hdcp.comp_mutex);
> @@ -1172,11 +1172,11 @@ static int hdcp2_verify_hprime(struct
> intel_connector *connector,
>  	struct intel_digital_port *dig_port =3D
> intel_attached_dig_port(connector);
>  	struct hdcp_port_data *data =3D &dig_port->hdcp_port_data;
>  	struct drm_i915_private *i915 =3D to_i915(connector->base.dev);
> -	struct i915_hdcp_master *arbiter;
> +	struct i915_hdcp_arbiter *arbiter;
>  	int ret;
>=20
>  	mutex_lock(&i915->display.hdcp.comp_mutex);
> -	arbiter =3D i915->display.hdcp.master;
> +	arbiter =3D i915->display.hdcp.arbiter;
>=20
>  	if (!arbiter || !arbiter->ops) {
>  		mutex_unlock(&i915->display.hdcp.comp_mutex);
> @@ -1198,11 +1198,11 @@ hdcp2_store_pairing_info(struct
> intel_connector *connector,
>  	struct intel_digital_port *dig_port =3D
> intel_attached_dig_port(connector);
>  	struct hdcp_port_data *data =3D &dig_port->hdcp_port_data;
>  	struct drm_i915_private *i915 =3D to_i915(connector->base.dev);
> -	struct i915_hdcp_master *arbiter;
> +	struct i915_hdcp_arbiter *arbiter;
>  	int ret;
>=20
>  	mutex_lock(&i915->display.hdcp.comp_mutex);
> -	arbiter =3D i915->display.hdcp.master;
> +	arbiter =3D i915->display.hdcp.arbiter;
>=20
>  	if (!arbiter || !arbiter->ops) {
>  		mutex_unlock(&i915->display.hdcp.comp_mutex);
> @@ -1225,11 +1225,11 @@ hdcp2_prepare_lc_init(struct intel_connector
> *connector,
>  	struct intel_digital_port *dig_port =3D
> intel_attached_dig_port(connector);
>  	struct hdcp_port_data *data =3D &dig_port->hdcp_port_data;
>  	struct drm_i915_private *i915 =3D to_i915(connector->base.dev);
> -	struct i915_hdcp_master *arbiter;
> +	struct i915_hdcp_arbiter *arbiter;
>  	int ret;
>=20
>  	mutex_lock(&i915->display.hdcp.comp_mutex);
> -	arbiter =3D i915->display.hdcp.master;
> +	arbiter =3D i915->display.hdcp.arbiter;
>=20
>  	if (!arbiter || !arbiter->ops) {
>  		mutex_unlock(&i915->display.hdcp.comp_mutex);
> @@ -1252,11 +1252,11 @@ hdcp2_verify_lprime(struct intel_connector
> *connector,
>  	struct intel_digital_port *dig_port =3D
> intel_attached_dig_port(connector);
>  	struct hdcp_port_data *data =3D &dig_port->hdcp_port_data;
>  	struct drm_i915_private *i915 =3D to_i915(connector->base.dev);
> -	struct i915_hdcp_master *arbiter;
> +	struct i915_hdcp_arbiter *arbiter;
>  	int ret;
>=20
>  	mutex_lock(&i915->display.hdcp.comp_mutex);
> -	arbiter =3D i915->display.hdcp.master;
> +	arbiter =3D i915->display.hdcp.arbiter;
>=20
>  	if (!arbiter || !arbiter->ops) {
>  		mutex_unlock(&i915->display.hdcp.comp_mutex);
> @@ -1278,11 +1278,11 @@ static int hdcp2_prepare_skey(struct
> intel_connector *connector,
>  	struct intel_digital_port *dig_port =3D
> intel_attached_dig_port(connector);
>  	struct hdcp_port_data *data =3D &dig_port->hdcp_port_data;
>  	struct drm_i915_private *i915 =3D to_i915(connector->base.dev);
> -	struct i915_hdcp_master *arbiter;
> +	struct i915_hdcp_arbiter *arbiter;
>  	int ret;
>=20
>  	mutex_lock(&i915->display.hdcp.comp_mutex);
> -	arbiter =3D i915->display.hdcp.master;
> +	arbiter =3D i915->display.hdcp.arbiter;
>=20
>  	if (!arbiter || !arbiter->ops) {
>  		mutex_unlock(&i915->display.hdcp.comp_mutex);
> @@ -1307,11 +1307,11 @@ hdcp2_verify_rep_topology_prepare_ack(struct
> intel_connector *connector,
>  	struct intel_digital_port *dig_port =3D
> intel_attached_dig_port(connector);
>  	struct hdcp_port_data *data =3D &dig_port->hdcp_port_data;
>  	struct drm_i915_private *i915 =3D to_i915(connector->base.dev);
> -	struct i915_hdcp_master *arbiter;
> +	struct i915_hdcp_arbiter *arbiter;
>  	int ret;
>=20
>  	mutex_lock(&i915->display.hdcp.comp_mutex);
> -	arbiter =3D i915->display.hdcp.master;
> +	arbiter =3D i915->display.hdcp.arbiter;
>=20
>  	if (!arbiter || !arbiter->ops) {
>  		mutex_unlock(&i915->display.hdcp.comp_mutex);
> @@ -1337,11 +1337,11 @@ hdcp2_verify_mprime(struct intel_connector
> *connector,
>  	struct intel_digital_port *dig_port =3D
> intel_attached_dig_port(connector);
>  	struct hdcp_port_data *data =3D &dig_port->hdcp_port_data;
>  	struct drm_i915_private *i915 =3D to_i915(connector->base.dev);
> -	struct i915_hdcp_master *arbiter;
> +	struct i915_hdcp_arbiter *arbiter;
>  	int ret;
>=20
>  	mutex_lock(&i915->display.hdcp.comp_mutex);
> -	arbiter =3D i915->display.hdcp.master;
> +	arbiter =3D i915->display.hdcp.arbiter;
>=20
>  	if (!arbiter || !arbiter->ops) {
>  		mutex_unlock(&i915->display.hdcp.comp_mutex);
> @@ -1361,11 +1361,11 @@ static int hdcp2_authenticate_port(struct
> intel_connector *connector)
>  	struct intel_digital_port *dig_port =3D
> intel_attached_dig_port(connector);
>  	struct hdcp_port_data *data =3D &dig_port->hdcp_port_data;
>  	struct drm_i915_private *i915 =3D to_i915(connector->base.dev);
> -	struct i915_hdcp_master *arbiter;
> +	struct i915_hdcp_arbiter *arbiter;
>  	int ret;
>=20
>  	mutex_lock(&i915->display.hdcp.comp_mutex);
> -	arbiter =3D i915->display.hdcp.master;
> +	arbiter =3D i915->display.hdcp.arbiter;
>=20
>  	if (!arbiter || !arbiter->ops) {
>  		mutex_unlock(&i915->display.hdcp.comp_mutex);
> @@ -1385,11 +1385,11 @@ static int hdcp2_close_session(struct
> intel_connector *connector)  {
>  	struct intel_digital_port *dig_port =3D
> intel_attached_dig_port(connector);
>  	struct drm_i915_private *i915 =3D to_i915(connector->base.dev);
> -	struct i915_hdcp_master *arbiter;
> +	struct i915_hdcp_arbiter *arbiter;
>  	int ret;
>=20
>  	mutex_lock(&i915->display.hdcp.comp_mutex);
> -	arbiter =3D i915->display.hdcp.master;
> +	arbiter =3D i915->display.hdcp.arbiter;
>=20
>  	if (!arbiter || !arbiter->ops) {
>  		mutex_unlock(&i915->display.hdcp.comp_mutex);
> @@ -2109,8 +2109,8 @@ static int i915_hdcp_component_bind(struct
> device *i915_kdev,
>=20
>  	drm_dbg(&i915->drm, "I915 HDCP comp bind\n");
>  	mutex_lock(&i915->display.hdcp.comp_mutex);
> -	i915->display.hdcp.master =3D (struct i915_hdcp_master *)data;
> -	i915->display.hdcp.master->hdcp_dev =3D mei_kdev;
> +	i915->display.hdcp.arbiter =3D (struct i915_hdcp_arbiter *)data;
> +	i915->display.hdcp.arbiter->hdcp_dev =3D mei_kdev;
>  	mutex_unlock(&i915->display.hdcp.comp_mutex);
>=20
>  	return 0;
> @@ -2123,7 +2123,7 @@ static void i915_hdcp_component_unbind(struct
> device *i915_kdev,
>=20
>  	drm_dbg(&i915->drm, "I915 HDCP comp unbind\n");
>  	mutex_lock(&i915->display.hdcp.comp_mutex);
> -	i915->display.hdcp.master =3D NULL;
> +	i915->display.hdcp.arbiter =3D NULL;
>  	mutex_unlock(&i915->display.hdcp.comp_mutex);
>  }
>=20
> diff --git a/drivers/gpu/drm/i915/display/intel_hdcp_gsc.c
> b/drivers/gpu/drm/i915/display/intel_hdcp_gsc.c
> index 4056bb2323ca..62e7bf0e1035 100644
> --- a/drivers/gpu/drm/i915/display/intel_hdcp_gsc.c
> +++ b/drivers/gpu/drm/i915/display/intel_hdcp_gsc.c
> @@ -697,17 +697,17 @@ static void intel_hdcp_gsc_free_message(struct
> drm_i915_private *i915)
>=20
>  int intel_hdcp_gsc_init(struct drm_i915_private *i915)  {
> -	struct i915_hdcp_master *data;
> +	struct i915_hdcp_arbiter *data;
>  	int ret;
>=20
> -	data =3D kzalloc(sizeof(struct i915_hdcp_master), GFP_KERNEL);
> +	data =3D kzalloc(sizeof(struct i915_hdcp_arbiter), GFP_KERNEL);
>  	if (!data)
>  		return -ENOMEM;
>=20
>  	mutex_lock(&i915->display.hdcp.comp_mutex);
> -	i915->display.hdcp.master =3D data;
> -	i915->display.hdcp.master->hdcp_dev =3D i915->drm.dev;
> -	i915->display.hdcp.master->ops =3D &gsc_hdcp_ops;
> +	i915->display.hdcp.arbiter =3D data;
> +	i915->display.hdcp.arbiter->hdcp_dev =3D i915->drm.dev;
> +	i915->display.hdcp.arbiter->ops =3D &gsc_hdcp_ops;
>  	ret =3D intel_hdcp_gsc_hdcp2_init(i915);
>  	mutex_unlock(&i915->display.hdcp.comp_mutex);
>=20
> @@ -717,7 +717,7 @@ int intel_hdcp_gsc_init(struct drm_i915_private
> *i915)  void intel_hdcp_gsc_fini(struct drm_i915_private *i915)  {
>  	intel_hdcp_gsc_free_message(i915);
> -	kfree(i915->display.hdcp.master);
> +	kfree(i915->display.hdcp.arbiter);
>  }
>=20
>  static int intel_gsc_send_sync(struct drm_i915_private *i915, diff --git
> a/drivers/misc/mei/hdcp/mei_hdcp.c b/drivers/misc/mei/hdcp/mei_hdcp.c
> index 85cbfc3413ee..51359cc5ece9 100644
> --- a/drivers/misc/mei/hdcp/mei_hdcp.c
> +++ b/drivers/misc/mei/hdcp/mei_hdcp.c
> @@ -735,13 +735,13 @@ static const struct i915_hdcp_ops mei_hdcp_ops =3D
> {  static int mei_component_master_bind(struct device *dev)  {
>  	struct mei_cl_device *cldev =3D to_mei_cl_device(dev);
> -	struct i915_hdcp_master *comp_master =3D
> mei_cldev_get_drvdata(cldev);
> +	struct i915_hdcp_arbiter *comp_arbiter =3D
> mei_cldev_get_drvdata(cldev);
>  	int ret;
>=20
>  	dev_dbg(dev, "%s\n", __func__);
> -	comp_master->ops =3D &mei_hdcp_ops;
> -	comp_master->hdcp_dev =3D dev;
> -	ret =3D component_bind_all(dev, comp_master);
> +	comp_arbiter->ops =3D &mei_hdcp_ops;
> +	comp_arbiter->hdcp_dev =3D dev;
> +	ret =3D component_bind_all(dev, comp_arbiter);
>  	if (ret < 0)
>  		return ret;
>=20
> @@ -751,10 +751,10 @@ static int mei_component_master_bind(struct
> device *dev)  static void mei_component_master_unbind(struct device *dev)
> {
>  	struct mei_cl_device *cldev =3D to_mei_cl_device(dev);
> -	struct i915_hdcp_master *comp_master =3D
> mei_cldev_get_drvdata(cldev);
> +	struct i915_hdcp_arbiter *comp_arbiter =3D
> mei_cldev_get_drvdata(cldev);
>=20
>  	dev_dbg(dev, "%s\n", __func__);
> -	component_unbind_all(dev, comp_master);
> +	component_unbind_all(dev, comp_arbiter);
>  }
>=20
>  static const struct component_master_ops mei_component_master_ops =3D {
> @@ -799,7 +799,7 @@ static int mei_hdcp_component_match(struct device
> *dev, int subcomponent,  static int mei_hdcp_probe(struct mei_cl_device
> *cldev,
>  			  const struct mei_cl_device_id *id)  {
> -	struct i915_hdcp_master *comp_master;
> +	struct i915_hdcp_arbiter *comp_arbiter;
>  	struct component_match *master_match;
>  	int ret;
>=20
> @@ -809,8 +809,8 @@ static int mei_hdcp_probe(struct mei_cl_device
> *cldev,
>  		goto enable_err_exit;
>  	}
>=20
> -	comp_master =3D kzalloc(sizeof(*comp_master), GFP_KERNEL);
> -	if (!comp_master) {
> +	comp_arbiter =3D kzalloc(sizeof(*comp_arbiter), GFP_KERNEL);
> +	if (!comp_arbiter) {
>  		ret =3D -ENOMEM;
>  		goto err_exit;
>  	}
> @@ -823,7 +823,7 @@ static int mei_hdcp_probe(struct mei_cl_device
> *cldev,
>  		goto err_exit;
>  	}
>=20
> -	mei_cldev_set_drvdata(cldev, comp_master);
> +	mei_cldev_set_drvdata(cldev, comp_arbiter);
>  	ret =3D component_master_add_with_match(&cldev->dev,
>  					      &mei_component_master_ops,
>  					      master_match);
> @@ -836,7 +836,7 @@ static int mei_hdcp_probe(struct mei_cl_device
> *cldev,
>=20
>  err_exit:
>  	mei_cldev_set_drvdata(cldev, NULL);
> -	kfree(comp_master);
> +	kfree(comp_arbiter);
>  	mei_cldev_disable(cldev);
>  enable_err_exit:
>  	return ret;
> @@ -844,11 +844,11 @@ static int mei_hdcp_probe(struct mei_cl_device
> *cldev,
>=20
>  static void mei_hdcp_remove(struct mei_cl_device *cldev)  {
> -	struct i915_hdcp_master *comp_master =3D
> mei_cldev_get_drvdata(cldev);
> +	struct i915_hdcp_arbiter *comp_arbiter =3D
> mei_cldev_get_drvdata(cldev);
>  	int ret;
>=20
>  	component_master_del(&cldev->dev,
> &mei_component_master_ops);
> -	kfree(comp_master);
> +	kfree(comp_arbiter);
>  	mei_cldev_set_drvdata(cldev, NULL);
>=20
>  	ret =3D mei_cldev_disable(cldev);
> diff --git a/include/drm/i915_hdcp_interface.h
> b/include/drm/i915_hdcp_interface.h
> index 2059b066f8a1..4c9c8167c2d5 100644
> --- a/include/drm/i915_hdcp_interface.h
> +++ b/include/drm/i915_hdcp_interface.h
> @@ -168,12 +168,12 @@ struct i915_hdcp_ops {  };
>=20
>  /**
> - * struct i915_hdcp_master - Used for communication between i915
> + * struct i915_hdcp_arbiter - Used for communication between i915
>   * and hdcp drivers for the HDCP2.2 services
>   * @hdcp_dev: device that provide the HDCP2.2 service from MEI Bus.
>   * @hdcp_ops: Ops implemented by hdcp driver or intel_hdcp_gsc , used by
> i915 driver.
>   */
> -struct i915_hdcp_master {
> +struct i915_hdcp_arbiter {
>  	struct device *hdcp_dev;
>  	const struct i915_hdcp_ops *ops;
>=20
> --
> 2.25.1

