Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id DC25471497B
	for <lists+intel-gfx@lfdr.de>; Mon, 29 May 2023 14:26:02 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id B8C1210E287;
	Mon, 29 May 2023 12:25:59 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga18.intel.com (mga18.intel.com [134.134.136.126])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 912D810E287
 for <intel-gfx@lists.freedesktop.org>; Mon, 29 May 2023 12:25:56 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1685363156; x=1716899156;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=bslmyXAsoZZ1ialyN2Dk+NHS9mMVwTJEzT1TOIMAnfM=;
 b=SFpqExAlFDVofnmTingF7vrRa12TackMUb14nRgXKnIKf486tUDJnGjM
 NNp73DpWyYoZoiK+1wQVNDCKcAl/DCTSxi9vrvOiuAjP6lwEguvIPtMtj
 4csb76c6ynOxvsGfjW70sJykwTIGyDQyxElNZEDY2Nb3WjU89yP+c1rRx
 EbNaxSk9QV1rwKD1BG3H0NCSie2m+HoKvxFwC1CCLxBT2JxpY7nLDkFnD
 RahIEab2Ki9BiE/OMm93DXTA8CdMCKMp5z5+qx5HmxMPFum88pQ9LjGo9
 EYnukLIomabIusV3gYh8N3LQgTqokT6KsvrgZWAAOzP1TJ09xcIlR1PLU Q==;
X-IronPort-AV: E=McAfee;i="6600,9927,10725"; a="339282396"
X-IronPort-AV: E=Sophos;i="6.00,201,1681196400"; d="scan'208";a="339282396"
Received: from orsmga007.jf.intel.com ([10.7.209.58])
 by orsmga106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 29 May 2023 05:25:55 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10725"; a="700244211"
X-IronPort-AV: E=Sophos;i="6.00,201,1681196400"; d="scan'208";a="700244211"
Received: from orsmsx602.amr.corp.intel.com ([10.22.229.15])
 by orsmga007.jf.intel.com with ESMTP; 29 May 2023 05:25:55 -0700
Received: from orsmsx610.amr.corp.intel.com (10.22.229.23) by
 ORSMSX602.amr.corp.intel.com (10.22.229.15) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.23; Mon, 29 May 2023 05:25:55 -0700
Received: from ORSEDG602.ED.cps.intel.com (10.7.248.7) by
 orsmsx610.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.23 via Frontend Transport; Mon, 29 May 2023 05:25:55 -0700
Received: from NAM10-MW2-obe.outbound.protection.outlook.com (104.47.55.109)
 by edgegateway.intel.com (134.134.137.103) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.23; Mon, 29 May 2023 05:25:54 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=NTCUALKE42QzLlFN3d2CAYgmhwPbdKpoj6L/SFKwNxJ2qaNtQXHeIHKJ4wvaAqdbHOvI8dQTAptgHSoBo/X6R487srf2GLxCjatGOSEkfOOaMTXGS4OszILmhxyeDDUFwtLLJ4IRAKTI/R/CiQd4yI3b0226jpTbBEEJxt+TK1IJx1xGiJmjmQgzlJ5TKhRAg3ePu2vGXO3KDJOrug+4HcgKmrRFDE+azrxYvF4b8JvPlxbrWA+WoPuXaY6/yAhpWUc4sEZsdBBiXxinRJ/TYnzDORlw6Mu2lWGnox4qXmjEWUIbW1EN6JgjG5SPkhFgqI6q4qDRSf8axPTEl2V7JQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=N5sXqALABQi74tx4hArkVIe2x/c4Rigeuj3ipzILZ5g=;
 b=BNZK5kfNldXdP8h9c57U2ERcmipCui9VUL6QBw1dnOOGpfPpJ0lAtw5W/LOXCNBE61tZRLLoZK4dFIWepKat3+DAM5S7YWf+9GuCoT0VNdd35lgBA8HHsyypZLgFBfm3F492kzAloJ822h6SLvWUOCJtKs2+dg12DYXcX3axPK+YVjbe1e156yN53zoTj+U1lGOxszgLpJvJsSY6nyKEOwYa4XNvU+onJ9iO0gfy36T2A8YN7sl3LriivbZ1tRCP7I/zUJ7IJmjgZXytJf/CghyggDP8KgojA1MbtmIwuad5xJCsX8+qe2b/SOSjNKbKtOQigXtu82XfFoyYsbwdsw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from SJ1PR11MB6129.namprd11.prod.outlook.com (2603:10b6:a03:488::12)
 by CH0PR11MB5265.namprd11.prod.outlook.com (2603:10b6:610:e0::19)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6433.23; Mon, 29 May
 2023 12:25:53 +0000
Received: from SJ1PR11MB6129.namprd11.prod.outlook.com
 ([fe80::ae46:be17:d89d:db39]) by SJ1PR11MB6129.namprd11.prod.outlook.com
 ([fe80::ae46:be17:d89d:db39%6]) with mapi id 15.20.6433.022; Mon, 29 May 2023
 12:25:52 +0000
From: "Borah, Chaitanya Kumar" <chaitanya.kumar.borah@intel.com>
To: "Kandpal, Suraj" <suraj.kandpal@intel.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
Thread-Topic: [PATCH v4 2/3] drm/i915/hdcp: Move away from master naming to
 arbiter
Thread-Index: AQHZkh4FzxXcce8BY0yvijttcy9zOq9xLP7A
Date: Mon, 29 May 2023 12:25:52 +0000
Message-ID: <SJ1PR11MB6129EB6C03BFE1B3ED81442AB94A9@SJ1PR11MB6129.namprd11.prod.outlook.com>
References: <20230529110740.1522985-1-suraj.kandpal@intel.com>
 <20230529110740.1522985-3-suraj.kandpal@intel.com>
In-Reply-To: <20230529110740.1522985-3-suraj.kandpal@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: SJ1PR11MB6129:EE_|CH0PR11MB5265:EE_
x-ms-office365-filtering-correlation-id: 97ff6728-fee7-468d-2251-08db603fd7e5
x-ld-processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: 1M2o82UKVRjeMRl73ZpRWmlTFvif+qdRz4R+TdlKs3YQ0hzeGQKG7nPKaR17Um2kpYf/phbXurTqyWXvkkgpCbpAiaBurJVEeNz1qeg/VzREVniEz8ipvvdQHsxwNm0MvZVpZOmOtMGON6S1QE4Ff9RvlOlXisMfC6N25meUV7qF72mS87Hw030HeRPCkmwwK+LYKd6Gz276NNfM6QNTELfr+9keWpaLHzZ+GdxEr26luUgtt9iQBDV/5ubdQTvIwJ9z2fb5byLe4cycJj3BTihdQL2MSCJENlAZCZID49Adlvbv1Je0RAiBi5Ro6uFlH+DAHXGsbJKS34e9UtDy2d48jMYjU5FAscHcjKL3I259+xkowJ7tm3qKqcsJpoCK5FW+aarpOjzvMHcg6WkitBODjKIpoBBCffUDphyR/SQPKz+pCNr6vvslU9tjrgeV4Hmd2mBqDtSoXgMMfWk8CXcJhi+SdvzlOvrvcBRzFA/udNDmY9ONuvNTjxXuj2T3kP5JchjhGIzh+lmcbgDxrVSicf+ruGl832PRDE7Dli5HT2a1RIjHY6aX8EHbMS2IPQjGhfcIvoiJJJxBYwGO9z+dDKEEpJCu8K8tfUCgtwhZgXWdQLwcWAy8W6WhIeiW
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:SJ1PR11MB6129.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230028)(376002)(346002)(136003)(396003)(366004)(39860400002)(451199021)(478600001)(66446008)(64756008)(76116006)(66946007)(66556008)(66476007)(110136005)(54906003)(4326008)(316002)(86362001)(33656002)(83380400001)(53546011)(9686003)(6506007)(26005)(186003)(107886003)(5660300002)(41300700001)(8936002)(8676002)(52536014)(30864003)(2906002)(7696005)(71200400001)(55016003)(38100700002)(38070700005)(82960400001)(122000001);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?UufM7TPFBwwgEb31iIJspyDrQNykTKMRmIBr8HmNz7liFbqllgh3FvwVIyWK?=
 =?us-ascii?Q?W/1X54X2pxLQQb6gxo0fnUp/m0eNynRJZpMM4rXxV//5BKypwSkNjk9/nu5X?=
 =?us-ascii?Q?xTFJMPrsZGOdwPTftrMPT029PC6vJqQMhQ86CuRXKX+sfJoIazPcCPKMvg1M?=
 =?us-ascii?Q?OOx1Kg+QRniJM/J2Y/n6Oe14a9CJ9kZgdh4BR5X6O16FJlq28bXk3JKN1wQH?=
 =?us-ascii?Q?COIhkO6XxGvoKqXWVEcCPUizbshgoMyJSxI88CblITboeN3DKh2PVtBPjGqk?=
 =?us-ascii?Q?3B3+iyXsrjOAjwhgd5t9s3TjjvQR4AB2P6Dayvwig8La9EJ+P2mfbTWrdx2c?=
 =?us-ascii?Q?QPvKDKNiAtemo0BC31IwjzP+xY0NX99Y7GadXImN6+ZWIAGaNCK9bg08iM/U?=
 =?us-ascii?Q?KR3+YhXpdVkUq+7Z7+/mZBaXXkExePDQ16cbdaXDmuZ/n/xrTl7p7PR57m7i?=
 =?us-ascii?Q?4MN4a5Jtun6lGE7rpMC67PMOFcI+Yzv1e2cX7NvlTh4iOO10sOl3JlXtjK1o?=
 =?us-ascii?Q?tAKeNBRrIHRdglh3S+jPluj3XfwYxYPkKtfDKedtRo57Tn04QFLm4mj7MzVD?=
 =?us-ascii?Q?+0XpstqmjjcF5GyeqL3roQ+xkpIm6odbSgoAf8Q6oiIPpSA7BmRLqgDxaOY9?=
 =?us-ascii?Q?62/6QC7WpisAT3HTwSYCCzxKTMVw46kOn5Dgy0rHIoKA/zJ9seezINmeWb0K?=
 =?us-ascii?Q?i7ex2M3CqgnElsPwnwVKUte17nrXkIi4bSnKaloiDtNolMIyk5yO/PiqQi8z?=
 =?us-ascii?Q?+qW/deyDLpyRZhT1wFueVJQQfDbfz0T8waSf0pxu4K3H/P24YU9RN/ee6SNH?=
 =?us-ascii?Q?S8O1Hx0S3rLuGytaG4MYcbUTZVypRxw66VqaIiVw/D6hU0HrXyBPzW+BwJXU?=
 =?us-ascii?Q?/Ar+lUW8pqF/XSnzUOY0916mPZj3w+5REsanrvRePtClT2xERbuf0HVcJYnW?=
 =?us-ascii?Q?2pHQbJgZyOGBk046N8uBoysqPFpK+y3TJC22ftcnG0tI17Lu2KiCBWR4EIEc?=
 =?us-ascii?Q?D/o1yD6BEpGG4+zE95eYuX0uNCGluUcWR/xp8USxcsmuibKxSP9wqC7GcIEM?=
 =?us-ascii?Q?xUul5KTbhSSNu2i/RfYgC9ojfAhdTp5HDmA7RjAiWJYTas1GKmgNptfSPqZz?=
 =?us-ascii?Q?oQcgQ7DckzcX9Wv0RoHXbiM3BkZjEMsDOw6rli05UyZ7113+Uv9dQWb6Cq+i?=
 =?us-ascii?Q?YAmsGV77QVG6pfzWT+3/bF0yMR/AFW7IhLQxbI2AcO1cwnKb5ooPSuZZPyAU?=
 =?us-ascii?Q?FbQqirH4PDoF9Ll+eedQmWZdF9RJBLsDUR+51WJl1yB9BRJAYlVHspXYB5vb?=
 =?us-ascii?Q?fUYD7A6POSMk/Ch5aRc2B+RqMaeeDzR7tYIxIEeEBH0Gr0+anB3fytx8QPhH?=
 =?us-ascii?Q?datySS5Gifp1PF0V9FBpY3saBQ7+K78H7DJfH9spqvsjSH+tFtaeGAEjW8KH?=
 =?us-ascii?Q?cjRiICdDcHgQGPK9YSqOd4jFKIRoQamqtNnUJVfkwSoVxZu9mHATS0011P4H?=
 =?us-ascii?Q?Lbo/aA5qVHYbSSrmxISzPajHQnBh0IK8/K0YhmGrZaw3KEN6aLMAB9V5zVyy?=
 =?us-ascii?Q?w2rQXYBuOcplNmUMz9Ob9mBQnM0XzdGywsceR4npG9nGD9HWs47JrFpoAELC?=
 =?us-ascii?Q?HQ=3D=3D?=
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: SJ1PR11MB6129.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 97ff6728-fee7-468d-2251-08db603fd7e5
X-MS-Exchange-CrossTenant-originalarrivaltime: 29 May 2023 12:25:52.4027 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: TH+9RbYgFgP1YzMq4lXfkqGixMnkKs/fdJ7LWLIi/x9x5yKCKsWuyZ0JfaJK42ao8mwKiYC7pkd3XcHo8ZrOv5xc9xmTUpecomJboojIL0g=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CH0PR11MB5265
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] [PATCH v4 2/3] drm/i915/hdcp: Move away from master
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

> -----Original Message-----
> From: Kandpal, Suraj <suraj.kandpal@intel.com>
> Sent: Monday, May 29, 2023 4:38 PM
> To: intel-gfx@lists.freedesktop.org
> Cc: Kandpal, Suraj <suraj.kandpal@intel.com>; Borah, Chaitanya Kumar
> <chaitanya.kumar.borah@intel.com>; Nautiyal, Ankit K
> <ankit.k.nautiyal@intel.com>; Nikula, Jani <jani.nikula@intel.com>
> Subject: [PATCH v4 2/3] drm/i915/hdcp: Move away from master naming to
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
> --v3
> - replace i915_hdcp_comp_master declaration with i915_hdcp_arbiter to avo=
id
> any compile fail with old compilers [Chaitanya]
>=20
LGTM,

Reviewed-by: Chaitanya Kumar Borah <chaitanya.kumar.borah@intel.com>

> Cc: Chaitanya Kumar Borah <chaitanya.kumar.borah@intel.com>
> Cc: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
> Cc: Jani Nikula <jani.nikula@intel.com>
> Signed-off-by: Suraj Kandpal <suraj.kandpal@intel.com>
> ---
>  .../gpu/drm/i915/display/intel_display_core.h |  4 +-
>  drivers/gpu/drm/i915/display/intel_hdcp.c     | 52 +++++++++----------
>  drivers/gpu/drm/i915/display/intel_hdcp_gsc.c | 12 ++---
>  drivers/misc/mei/hdcp/mei_hdcp.c              | 26 +++++-----
>  include/drm/i915_hdcp_interface.h             |  4 +-
>  5 files changed, 49 insertions(+), 49 deletions(-)
>=20
> diff --git a/drivers/gpu/drm/i915/display/intel_display_core.h
> b/drivers/gpu/drm/i915/display/intel_display_core.h
> index e36f88a39b86..23957d80efe8 100644
> --- a/drivers/gpu/drm/i915/display/intel_display_core.h
> +++ b/drivers/gpu/drm/i915/display/intel_display_core.h
> @@ -30,7 +30,7 @@ struct drm_i915_private;  struct drm_property;  struct
> drm_property_blob;  struct i915_audio_component; -struct
> i915_hdcp_comp_master;
> +struct i915_hdcp_arbiter;
>  struct intel_atomic_state;
>  struct intel_audio_funcs;
>  struct intel_bios_encoder_data;
> @@ -395,7 +395,7 @@ struct intel_display {
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
> index e2e5527efc4b..bf28c6f1d748 100644
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
> @@ -1198,11 +1198,11 @@ hdcp2_store_pairing_info(struct intel_connector
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
> @@ -2109,8 +2109,8 @@ static int i915_hdcp_component_bind(struct device
> *i915_kdev,
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
> @@ -717,7 +717,7 @@ int intel_hdcp_gsc_init(struct drm_i915_private *i915=
)
> void intel_hdcp_gsc_fini(struct drm_i915_private *i915)  {
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
> @@ -735,13 +735,13 @@ static const struct i915_hdcp_ops mei_hdcp_ops =3D =
{
> static int mei_component_master_bind(struct device *dev)  {
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
> device *dev)  static void mei_component_master_unbind(struct device *dev)=
  {
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
> @@ -809,8 +809,8 @@ static int mei_hdcp_probe(struct mei_cl_device *cldev=
,
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
> @@ -823,7 +823,7 @@ static int mei_hdcp_probe(struct mei_cl_device *cldev=
,
>  		goto err_exit;
>  	}
>=20
> -	mei_cldev_set_drvdata(cldev, comp_master);
> +	mei_cldev_set_drvdata(cldev, comp_arbiter);
>  	ret =3D component_master_add_with_match(&cldev->dev,
>  					      &mei_component_master_ops,
>  					      master_match);
> @@ -836,7 +836,7 @@ static int mei_hdcp_probe(struct mei_cl_device *cldev=
,
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
>  	component_master_del(&cldev->dev, &mei_component_master_ops);
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

