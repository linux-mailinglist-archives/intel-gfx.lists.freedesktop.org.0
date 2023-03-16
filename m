Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 3C4A96BC7E9
	for <lists+intel-gfx@lfdr.de>; Thu, 16 Mar 2023 08:57:15 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id AC55710EC56;
	Thu, 16 Mar 2023 07:57:13 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga03.intel.com (mga03.intel.com [134.134.136.65])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 0461B10EC56
 for <intel-gfx@lists.freedesktop.org>; Thu, 16 Mar 2023 07:57:10 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1678953431; x=1710489431;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=3krCnJHmJ9ORpsAC+iZBhCZ24ahGMAOeT5vHwCOcyWY=;
 b=Y1ZEo37rZRW8FtXZueKaY9MFr2/reM2Z76ZCLhDx9akMC1nH7v9M/+QX
 2AN8t3N0hnbCKoruijCFFyfYqJqhQKdJ/WQul2lgVNznJcHTkvmvmusVr
 UiXwND66WLvFINR6eyjWaxX7/VRAJqsThXz6nOPjA5sMkw1RXYvBM/Cvb
 ejnNnylE+yGiCv7JDTihBXRuyJBYP8JYs4UcjADdtoWjjBtqvmC6Znh7i
 pYunEuqdGk8miMY2m4WHRd9eKDcoKfRVEHtwzhiWHdbIAXZWskloqpLQP
 rrQ/1vNORT9GmEZR9OaONa+oDoNu1+CGCrKLuBvCwjRJ0u89Jc0H7fhgR w==;
X-IronPort-AV: E=McAfee;i="6500,9779,10650"; a="340278449"
X-IronPort-AV: E=Sophos;i="5.98,265,1673942400"; d="scan'208";a="340278449"
Received: from orsmga002.jf.intel.com ([10.7.209.21])
 by orsmga103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 16 Mar 2023 00:57:10 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10650"; a="679798807"
X-IronPort-AV: E=Sophos;i="5.98,265,1673942400"; d="scan'208";a="679798807"
Received: from fmsmsx602.amr.corp.intel.com ([10.18.126.82])
 by orsmga002.jf.intel.com with ESMTP; 16 Mar 2023 00:57:10 -0700
Received: from fmsmsx611.amr.corp.intel.com (10.18.126.91) by
 fmsmsx602.amr.corp.intel.com (10.18.126.82) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.21; Thu, 16 Mar 2023 00:57:10 -0700
Received: from fmsmsx603.amr.corp.intel.com (10.18.126.83) by
 fmsmsx611.amr.corp.intel.com (10.18.126.91) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.21; Thu, 16 Mar 2023 00:57:09 -0700
Received: from FMSEDG603.ED.cps.intel.com (10.1.192.133) by
 fmsmsx603.amr.corp.intel.com (10.18.126.83) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.21 via Frontend Transport; Thu, 16 Mar 2023 00:57:09 -0700
Received: from NAM12-DM6-obe.outbound.protection.outlook.com (104.47.59.169)
 by edgegateway.intel.com (192.55.55.68) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.21; Thu, 16 Mar 2023 00:57:09 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=KvDTae+f/oZEYHnZ/y3W59HASwjs/tZFfZ/iZdQEdecG5P004RvEJcURvizL+GlYnw+RBHOcF5Htxf1XeAmDdIZg9cZwjhVvcu1XI8V9qm1GLAeNnSU0IFOwBJncQo6qXtRZ8i0hOK46YHQIe9S3t7iSa5Iq2wo56l+MO/58In7yeGYsw+ECB2dbivXWnz6gcAmEynAQTdaGFXQNxXkLfyY6x/4ZaPRXIhcCULc9NnnZ4yh60ulpgFiY6ayGwn/Bi/wouWQZtL8AdVmYujQ/vbISodc4vyG4+gjWL+balA7Mz2o10zH6UOep1qOLig6ftHG6PuC3KlX2WVlQg/Qftw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=m185z6j/qryP0ZxE4k/f1p6vxo3S1lqhZzjj7ORIdZY=;
 b=aZnbSDpJmjYsRoTj+NIjT05ebi3Ro1vArmqyHveX8h81kA0971tgJRia5aeZncTxshZm38krB9omh3N1M7r0o4/+q2o6sB+APPrz5A7p2lx6Ds/Nykr/4DqXRgraL/4Gl7qVIANu3QRW0GKGhcafQ+9REpVN9XxwyvxzYo+/hXz2eOwuU4ihOnVlDopF3IO0FADDT+m8YV1mEhtwdIdt/MItX7auvjfyV0Hv3v0jTybmfgRxBcgf0LeDuHpvo63UZVHks8+jGG+YFMwcptqLRgD2jU9gwihjC8Xz2SVhM/h2vk8kH6s7/VFLiOGwddjuaSiXBEiGMNNP5W3j3AZQ5A==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from DM4PR11MB6360.namprd11.prod.outlook.com (2603:10b6:8:bd::12) by
 SA1PR11MB5875.namprd11.prod.outlook.com (2603:10b6:806:238::20) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6178.31; Thu, 16 Mar
 2023 07:57:06 +0000
Received: from DM4PR11MB6360.namprd11.prod.outlook.com
 ([fe80::f677:36e:9fae:b45e]) by DM4PR11MB6360.namprd11.prod.outlook.com
 ([fe80::f677:36e:9fae:b45e%5]) with mapi id 15.20.6178.031; Thu, 16 Mar 2023
 07:57:06 +0000
From: "Shankar, Uma" <uma.shankar@intel.com>
To: "Kandpal, Suraj" <suraj.kandpal@intel.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
Thread-Topic: [PATCH v12 2/6] drm/i915/hdcp: Use generic names for HDCP
 helpers and structs
Thread-Index: AQHZUlyJn0itQ03HNESKq2Z8xOyuAa79FOFQ
Date: Thu, 16 Mar 2023 07:57:06 +0000
Message-ID: <DM4PR11MB6360731B7C7B789BE7E313CCF4BC9@DM4PR11MB6360.namprd11.prod.outlook.com>
References: <20230309075423.409402-1-suraj.kandpal@intel.com>
 <20230309075423.409402-3-suraj.kandpal@intel.com>
In-Reply-To: <20230309075423.409402-3-suraj.kandpal@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: DM4PR11MB6360:EE_|SA1PR11MB5875:EE_
x-ms-office365-filtering-correlation-id: d3f5f54b-23ff-4374-25cd-08db25f409a9
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: I4CDH+Iv3JJWZckekIGfCU1AmtjMP3ivLPO5QcmJjAvmjG5QPxsbp5bZL7tTk1dYpDUg4JMf80zGhFQX1iQDbc0pTM6WgQucY6u4l2OFBhqB1FvIvU6Auu7uAS3ZunxoCxe2h73Q8fiuc6bVTNFYDlIxygZcdh79f3fTWjR0RE0y1OLaDUQRqsGzuWgeKwQgve3kvRg8EU5ozGAj/k9CxqwPCqJugy/0nyWoo//NtNpj8y5uM2wOfw6qxLdxjYxE91b29ev8BYco0ElB2E7mhddrNfoPzPBzHJKM5l7uJZdE70TNZeEP78XARAl6LW5OZ64H+Yktsnu6KvENWD6pIjtWvNkDLGpche8deKBUawqB0JY3H8Xy7Fco58kSjHQ1bf1Pd1bFYrZpJJE0GQJ17sDhMDiUCn/2U0bzv2gQwEaOTQ21IFqoemR/8Jzi/i409aOgDZBlIfFCxS/jrx/Nwog6xVJ8VBwytJyJb6UJi36rpXccTA6GiXOdBYWEdm6Xs512IRPL0asJuXtmBpMXd99tVW5PZ261VvAiV7sSok3I3gS123q4UdkfgDXXQuRgrL+2MZI5sYMqOIntaSC3oJEzHtCfirtIxoW420SkNGKNgvAb2euMLwVDWQDZvAUEiUzarm1yuSTVeg/KQmCV1LVCsJNawl5km+HO/9FKDbbyr+oR6lhNfeeaQrpYbQZCZslM+Q3JnQ8Y9GZslyfTyZv+eEq3y68H1I5g6rD43fQ=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM4PR11MB6360.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230025)(346002)(136003)(39860400002)(396003)(376002)(366004)(451199018)(186003)(9686003)(316002)(122000001)(54906003)(38100700002)(478600001)(38070700005)(83380400001)(110136005)(8676002)(64756008)(66446008)(66476007)(66556008)(66946007)(4326008)(41300700001)(76116006)(30864003)(82960400001)(2906002)(5660300002)(52536014)(8936002)(107886003)(26005)(6506007)(55016003)(33656002)(53546011)(71200400001)(86362001)(7696005)(41533002)(579004)(559001);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?2WDRdX4Ma8Tm9jPmvBxZtGibAIBBhg/KCrXaemom3byH95q95u5O8dPOG9YE?=
 =?us-ascii?Q?J06K0/HPz1IzkF5Rr+QrriUWFpJKqZwvyUH+8qsKJ9D4J1cRcYq8FBubx0gm?=
 =?us-ascii?Q?n1JPU95wzmB3RPs51Q+TOgoiSEDJ/+F4FrI21rkNUKDigprbus+kZSrDjX5F?=
 =?us-ascii?Q?80suaRhyGGYCR1WJyCq04JhCTYmMStToEkVUmF74/xOTTlONuG80mdI+Tcx4?=
 =?us-ascii?Q?i6v9Vpsuqz8YI2W9lgkYmFU5MvZjM+kyfF5imSEBZXdUApCsfXlM+XZC8wSX?=
 =?us-ascii?Q?ON6xavJbhk8UsR7+D3PwsDvTb9nIMZTnHQ4d5hfrPLkzxi94gpA5D6qIg87d?=
 =?us-ascii?Q?IwmbuNJucyAOWDnwxW5VYnW/V7UyIfkY8gYgs3t2yBhKL8DXvSog6kucKGI4?=
 =?us-ascii?Q?akF8FrStAlRzdZzFwon91AgswO7lequ/4ClO24pt4H6B6IS24g65T755Fgeh?=
 =?us-ascii?Q?iRqCMJawH/W4uwnwy2a7Hj4uQeKzOiwsqUzzrPvZOZQZGTG75fLKIcW4Psxa?=
 =?us-ascii?Q?4zKFAF5mf/dyYRSyZ7/y5g71AoziMAbuQY34ZZE5B4Q5xGWKGfGKChDxqR2p?=
 =?us-ascii?Q?LvT7YvJB+TtwxXjygw/n90xojDuLwqStgdbHmTHx/A95NWZY67wU7uNnQ5V7?=
 =?us-ascii?Q?FOad5sDLY1jl0B7lnYJief9byvpt76ed8wDXyK7Zd4APnh0JOsXYVnqi4OJn?=
 =?us-ascii?Q?+lVvC2WmI5THZwp7hZa9JTfEJ0s5tZY4bPbGlLpnGavZBeB8wEsqqMihBT40?=
 =?us-ascii?Q?5JPRD7F/KBiQlSMcTXEZvcvgvzhHmeAu8OyBt4kietkCdhj86RrVpdSBmnn1?=
 =?us-ascii?Q?f53J6OMc/YjnvrTIpuDXvEoQyMhqyyadds5lY26ylxLJ88Zv0b11c0q38LLq?=
 =?us-ascii?Q?fAXCNI/wNLjvXXv3TTyr38wTgjjMvs82JiBZHlOeRwb31denliEwonevLsdg?=
 =?us-ascii?Q?cpKDxWMXuogPpgSLO1ExWUBBBxtzl/GCzdtRUsqWTRK7YZZzNKXR1aZyN1WD?=
 =?us-ascii?Q?oUc7RXw5zYKeSXaW3sNH/G/0AX5VNYE8g9/hFmFpR90VLamnPs+Xh0UpVlS1?=
 =?us-ascii?Q?6xx8UImdwkguW4avmz5IJV2k1zhICgIIQVTMAZzcURr7jaj2ArWuYFHIlRvu?=
 =?us-ascii?Q?UprG/I7u31YAUwEz8iUej0FKwE8oIjZGWYJkxti09vhJvl/d3DR56Yr8HzFi?=
 =?us-ascii?Q?+ao2ibWEKvBaNx8EVcQVX2tLdNzbBZSvswUQjfVjsoSLPGTlUvzDYLF4lHYe?=
 =?us-ascii?Q?vtEz5L5Ukt7sdjEgX5OhxKzGZpU12ewOPUz5H2zylwFLQ4V4bDeUqWwI81fc?=
 =?us-ascii?Q?FfD1cWirTXpoy4zAGjQkrhQVOzYolDihinFeUT2UaloHtgcHj+xBuvt1jDzh?=
 =?us-ascii?Q?ogBlkLPdT1i5DFaThY58QbPHYqgXTghxwMCpWC0qCK4tv2TxfKE92X5TyxGy?=
 =?us-ascii?Q?xGoC2WGS7zhMSpKTy9m+E3Jjh/RP3D6cVXg40A9N95TAOmTKLrRfxOKhkov4?=
 =?us-ascii?Q?E6CSw4HGPPKl+JegYCM9u3fMpv/AGPzKvY04wgjeuzYryv86375gIPlq41cm?=
 =?us-ascii?Q?0CR9jgW9lhg6vjPY6+1+4Yl1LVaXIE6Mrj9/gJwF?=
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: DM4PR11MB6360.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: d3f5f54b-23ff-4374-25cd-08db25f409a9
X-MS-Exchange-CrossTenant-originalarrivaltime: 16 Mar 2023 07:57:06.6760 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: h9txuYPD28Y8He8wNHrTR5oreIcaCRjQ4k+oDNe2n3x4nSp2MT5Q8YI7Gf/OchcmR/7xAzVRnGg4EbAiWicKWw==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SA1PR11MB5875
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] [PATCH v12 2/6] drm/i915/hdcp: Use generic names
 for HDCP helpers and structs
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
Cc: "Winkler, Tomas" <tomas.winkler@intel.com>, "Vivi,
 Rodrigo" <rodrigo.vivi@intel.com>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>



> -----Original Message-----
> From: Kandpal, Suraj <suraj.kandpal@intel.com>
> Sent: Thursday, March 9, 2023 1:24 PM
> To: intel-gfx@lists.freedesktop.org
> Cc: Nautiyal, Ankit K <ankit.k.nautiyal@intel.com>; Shankar, Uma
> <uma.shankar@intel.com>; Gupta, Anshuman <anshuman.gupta@intel.com>;
> Winkler, Tomas <tomas.winkler@intel.com>; Vivi, Rodrigo
> <rodrigo.vivi@intel.com>; Kandpal, Suraj <suraj.kandpal@intel.com>
> Subject: [PATCH v12 2/6] drm/i915/hdcp: Use generic names for HDCP helper=
s and
> structs
>=20
> From: Anshuman Gupta <anshuman.gupta@intel.com>
>=20
> pre MTL we interact with mei interface to talk to firmware and enable CP =
but going
> forward we will talk to gsc cs because of which we are making all names f=
or HDCP
> helpers and structures generic as either mei or gsc cs maybe used.
>=20
> Change the include/drm/i915_mei_hdcp_interface.h to
> include/drm/i915_hdcp_interface.h
>=20
> Change the i915_hdcp_interface.h header naming convention to suit generic=
 f/w
> type.
> %s/MEI_/HDCP_
> %s/mei_dev/hdcp_dev
>=20
> Change structure name Accordingly.
> %s/i915_hdcp_comp_master/i915_hdcp_master
> %s/i915_hdcp_component_ops/i915_hdcp_ops
>=20
> --v6
> -make each patch build individually [Jani]
>=20
> --v8
> -change ME FW to ME/GSC FW [Ankit]
> -fix formatting issue [Ankit]
>=20
> --v9
> -fix commit message and header [Uma]
>=20
> --v10
> -rename comp variable [Uma]

Looks Good to me.
Reviewed-by: Uma Shankar <uma.shankar@intel.com>

> Cc: Tomas Winkler <tomas.winkler@intel.com>
> Cc: Rodrigo Vivi <rodrigo.vivi@intel.com>
> Cc: Uma Shankar <uma.shankar@intel.com>
> Cc: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
> Signed-off-by: Anshuman Gupta <anshuman.gupta@intel.com>
> Signed-off-by: Suraj Kandpal <suraj.kandpal@intel.com>
> Reviewed-by: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
> Acked-by: Tomas Winkler <tomas.winkler@intel.com>
> ---
>  .../gpu/drm/i915/display/intel_display_core.h |   2 +-
>  .../drm/i915/display/intel_display_types.h    |   2 +-
>  drivers/gpu/drm/i915/display/intel_hdcp.c     | 130 +++++++++---------
>  drivers/misc/mei/hdcp/mei_hdcp.c              |  61 ++++----
>  ...hdcp_interface.h =3D> i915_hdcp_interface.h} |  94 ++++++-------
>  5 files changed, 144 insertions(+), 145 deletions(-)  rename
> include/drm/{i915_mei_hdcp_interface.h =3D> i915_hdcp_interface.h} (71%)
>=20
> diff --git a/drivers/gpu/drm/i915/display/intel_display_core.h
> b/drivers/gpu/drm/i915/display/intel_display_core.h
> index fdab7bb93a7d..d7cb649be915 100644
> --- a/drivers/gpu/drm/i915/display/intel_display_core.h
> +++ b/drivers/gpu/drm/i915/display/intel_display_core.h
> @@ -384,7 +384,7 @@ struct intel_display {
>  	} gmbus;
>=20
>  	struct {
> -		struct i915_hdcp_comp_master *master;
> +		struct i915_hdcp_master *master;
>  		bool comp_added;
>=20
>  		/* Mutex to protect the above hdcp component related values. */
> diff --git a/drivers/gpu/drm/i915/display/intel_display_types.h
> b/drivers/gpu/drm/i915/display/intel_display_types.h
> index c32bfba06ca1..cc98a7ad548e 100644
> --- a/drivers/gpu/drm/i915/display/intel_display_types.h
> +++ b/drivers/gpu/drm/i915/display/intel_display_types.h
> @@ -43,7 +43,7 @@
>  #include <drm/drm_rect.h>
>  #include <drm/drm_vblank.h>
>  #include <drm/drm_vblank_work.h>
> -#include <drm/i915_mei_hdcp_interface.h>
> +#include <drm/i915_hdcp_interface.h>
>  #include <media/cec-notifier.h>
>=20
>  #include "i915_vma.h"
> diff --git a/drivers/gpu/drm/i915/display/intel_hdcp.c
> b/drivers/gpu/drm/i915/display/intel_hdcp.c
> index 2984d2810e42..1ae0882dc1d4 100644
> --- a/drivers/gpu/drm/i915/display/intel_hdcp.c
> +++ b/drivers/gpu/drm/i915/display/intel_hdcp.c
> @@ -1142,18 +1142,18 @@ hdcp2_prepare_ake_init(struct intel_connector
> *connector,
>  	struct intel_digital_port *dig_port =3D intel_attached_dig_port(connect=
or);
>  	struct hdcp_port_data *data =3D &dig_port->hdcp_port_data;
>  	struct drm_i915_private *dev_priv =3D to_i915(connector->base.dev);
> -	struct i915_hdcp_comp_master *comp;
> +	struct i915_hdcp_master *arbiter;
>  	int ret;
>=20
>  	mutex_lock(&dev_priv->display.hdcp.comp_mutex);
> -	comp =3D dev_priv->display.hdcp.master;
> +	arbiter =3D dev_priv->display.hdcp.master;
>=20
> -	if (!comp || !comp->ops) {
> +	if (!arbiter || !arbiter->ops) {
>  		mutex_unlock(&dev_priv->display.hdcp.comp_mutex);
>  		return -EINVAL;
>  	}
>=20
> -	ret =3D comp->ops->initiate_hdcp2_session(comp->mei_dev, data, ake_data=
);
> +	ret =3D arbiter->ops->initiate_hdcp2_session(arbiter->hdcp_dev, data,
> +ake_data);
>  	if (ret)
>  		drm_dbg_kms(&dev_priv->drm, "Prepare_ake_init failed. %d\n",
>  			    ret);
> @@ -1172,18 +1172,18 @@ hdcp2_verify_rx_cert_prepare_km(struct
> intel_connector *connector,
>  	struct intel_digital_port *dig_port =3D intel_attached_dig_port(connect=
or);
>  	struct hdcp_port_data *data =3D &dig_port->hdcp_port_data;
>  	struct drm_i915_private *dev_priv =3D to_i915(connector->base.dev);
> -	struct i915_hdcp_comp_master *comp;
> +	struct i915_hdcp_master *arbiter;
>  	int ret;
>=20
>  	mutex_lock(&dev_priv->display.hdcp.comp_mutex);
> -	comp =3D dev_priv->display.hdcp.master;
> +	arbiter =3D dev_priv->display.hdcp.master;
>=20
> -	if (!comp || !comp->ops) {
> +	if (!arbiter || !arbiter->ops) {
>  		mutex_unlock(&dev_priv->display.hdcp.comp_mutex);
>  		return -EINVAL;
>  	}
>=20
> -	ret =3D comp->ops->verify_receiver_cert_prepare_km(comp->mei_dev, data,
> +	ret =3D arbiter->ops->verify_receiver_cert_prepare_km(arbiter->hdcp_dev=
,
> +data,
>  							 rx_cert, paired,
>  							 ek_pub_km, msg_sz);
>  	if (ret < 0)
> @@ -1200,18 +1200,18 @@ static int hdcp2_verify_hprime(struct intel_conne=
ctor
> *connector,
>  	struct intel_digital_port *dig_port =3D intel_attached_dig_port(connect=
or);
>  	struct hdcp_port_data *data =3D &dig_port->hdcp_port_data;
>  	struct drm_i915_private *dev_priv =3D to_i915(connector->base.dev);
> -	struct i915_hdcp_comp_master *comp;
> +	struct i915_hdcp_master *arbiter;
>  	int ret;
>=20
>  	mutex_lock(&dev_priv->display.hdcp.comp_mutex);
> -	comp =3D dev_priv->display.hdcp.master;
> +	arbiter =3D dev_priv->display.hdcp.master;
>=20
> -	if (!comp || !comp->ops) {
> +	if (!arbiter || !arbiter->ops) {
>  		mutex_unlock(&dev_priv->display.hdcp.comp_mutex);
>  		return -EINVAL;
>  	}
>=20
> -	ret =3D comp->ops->verify_hprime(comp->mei_dev, data, rx_hprime);
> +	ret =3D arbiter->ops->verify_hprime(arbiter->hdcp_dev, data, rx_hprime)=
;
>  	if (ret < 0)
>  		drm_dbg_kms(&dev_priv->drm, "Verify hprime failed. %d\n", ret);
>  	mutex_unlock(&dev_priv->display.hdcp.comp_mutex);
> @@ -1226,18 +1226,18 @@ hdcp2_store_pairing_info(struct intel_connector
> *connector,
>  	struct intel_digital_port *dig_port =3D intel_attached_dig_port(connect=
or);
>  	struct hdcp_port_data *data =3D &dig_port->hdcp_port_data;
>  	struct drm_i915_private *dev_priv =3D to_i915(connector->base.dev);
> -	struct i915_hdcp_comp_master *comp;
> +	struct i915_hdcp_master *arbiter;
>  	int ret;
>=20
>  	mutex_lock(&dev_priv->display.hdcp.comp_mutex);
> -	comp =3D dev_priv->display.hdcp.master;
> +	arbiter =3D dev_priv->display.hdcp.master;
>=20
> -	if (!comp || !comp->ops) {
> +	if (!arbiter || !arbiter->ops) {
>  		mutex_unlock(&dev_priv->display.hdcp.comp_mutex);
>  		return -EINVAL;
>  	}
>=20
> -	ret =3D comp->ops->store_pairing_info(comp->mei_dev, data, pairing_info=
);
> +	ret =3D arbiter->ops->store_pairing_info(arbiter->hdcp_dev, data,
> +pairing_info);
>  	if (ret < 0)
>  		drm_dbg_kms(&dev_priv->drm, "Store pairing info failed. %d\n",
>  			    ret);
> @@ -1253,18 +1253,18 @@ hdcp2_prepare_lc_init(struct intel_connector
> *connector,
>  	struct intel_digital_port *dig_port =3D intel_attached_dig_port(connect=
or);
>  	struct hdcp_port_data *data =3D &dig_port->hdcp_port_data;
>  	struct drm_i915_private *dev_priv =3D to_i915(connector->base.dev);
> -	struct i915_hdcp_comp_master *comp;
> +	struct i915_hdcp_master *arbiter;
>  	int ret;
>=20
>  	mutex_lock(&dev_priv->display.hdcp.comp_mutex);
> -	comp =3D dev_priv->display.hdcp.master;
> +	arbiter =3D dev_priv->display.hdcp.master;
>=20
> -	if (!comp || !comp->ops) {
> +	if (!arbiter || !arbiter->ops) {
>  		mutex_unlock(&dev_priv->display.hdcp.comp_mutex);
>  		return -EINVAL;
>  	}
>=20
> -	ret =3D comp->ops->initiate_locality_check(comp->mei_dev, data, lc_init=
);
> +	ret =3D arbiter->ops->initiate_locality_check(arbiter->hdcp_dev, data,
> +lc_init);
>  	if (ret < 0)
>  		drm_dbg_kms(&dev_priv->drm, "Prepare lc_init failed. %d\n",
>  			    ret);
> @@ -1280,18 +1280,18 @@ hdcp2_verify_lprime(struct intel_connector
> *connector,
>  	struct intel_digital_port *dig_port =3D intel_attached_dig_port(connect=
or);
>  	struct hdcp_port_data *data =3D &dig_port->hdcp_port_data;
>  	struct drm_i915_private *dev_priv =3D to_i915(connector->base.dev);
> -	struct i915_hdcp_comp_master *comp;
> +	struct i915_hdcp_master *arbiter;
>  	int ret;
>=20
>  	mutex_lock(&dev_priv->display.hdcp.comp_mutex);
> -	comp =3D dev_priv->display.hdcp.master;
> +	arbiter =3D dev_priv->display.hdcp.master;
>=20
> -	if (!comp || !comp->ops) {
> +	if (!arbiter || !arbiter->ops) {
>  		mutex_unlock(&dev_priv->display.hdcp.comp_mutex);
>  		return -EINVAL;
>  	}
>=20
> -	ret =3D comp->ops->verify_lprime(comp->mei_dev, data, rx_lprime);
> +	ret =3D arbiter->ops->verify_lprime(arbiter->hdcp_dev, data, rx_lprime)=
;
>  	if (ret < 0)
>  		drm_dbg_kms(&dev_priv->drm, "Verify L_Prime failed. %d\n",
>  			    ret);
> @@ -1306,18 +1306,18 @@ static int hdcp2_prepare_skey(struct intel_connec=
tor
> *connector,
>  	struct intel_digital_port *dig_port =3D intel_attached_dig_port(connect=
or);
>  	struct hdcp_port_data *data =3D &dig_port->hdcp_port_data;
>  	struct drm_i915_private *dev_priv =3D to_i915(connector->base.dev);
> -	struct i915_hdcp_comp_master *comp;
> +	struct i915_hdcp_master *arbiter;
>  	int ret;
>=20
>  	mutex_lock(&dev_priv->display.hdcp.comp_mutex);
> -	comp =3D dev_priv->display.hdcp.master;
> +	arbiter =3D dev_priv->display.hdcp.master;
>=20
> -	if (!comp || !comp->ops) {
> +	if (!arbiter || !arbiter->ops) {
>  		mutex_unlock(&dev_priv->display.hdcp.comp_mutex);
>  		return -EINVAL;
>  	}
>=20
> -	ret =3D comp->ops->get_session_key(comp->mei_dev, data, ske_data);
> +	ret =3D arbiter->ops->get_session_key(arbiter->hdcp_dev, data,
> +ske_data);
>  	if (ret < 0)
>  		drm_dbg_kms(&dev_priv->drm, "Get session key failed. %d\n",
>  			    ret);
> @@ -1335,20 +1335,21 @@ hdcp2_verify_rep_topology_prepare_ack(struct
> intel_connector *connector,
>  	struct intel_digital_port *dig_port =3D intel_attached_dig_port(connect=
or);
>  	struct hdcp_port_data *data =3D &dig_port->hdcp_port_data;
>  	struct drm_i915_private *dev_priv =3D to_i915(connector->base.dev);
> -	struct i915_hdcp_comp_master *comp;
> +	struct i915_hdcp_master *arbiter;
>  	int ret;
>=20
>  	mutex_lock(&dev_priv->display.hdcp.comp_mutex);
> -	comp =3D dev_priv->display.hdcp.master;
> +	arbiter =3D dev_priv->display.hdcp.master;
>=20
> -	if (!comp || !comp->ops) {
> +	if (!arbiter || !arbiter->ops) {
>  		mutex_unlock(&dev_priv->display.hdcp.comp_mutex);
>  		return -EINVAL;
>  	}
>=20
> -	ret =3D comp->ops->repeater_check_flow_prepare_ack(comp->mei_dev,
> data,
> -							 rep_topology,
> -							 rep_send_ack);
> +	ret =3D arbiter->ops->repeater_check_flow_prepare_ack(arbiter->hdcp_dev=
,
> +							    data,
> +							    rep_topology,
> +							    rep_send_ack);
>  	if (ret < 0)
>  		drm_dbg_kms(&dev_priv->drm,
>  			    "Verify rep topology failed. %d\n", ret); @@ -1364,18
> +1365,18 @@ hdcp2_verify_mprime(struct intel_connector *connector,
>  	struct intel_digital_port *dig_port =3D intel_attached_dig_port(connect=
or);
>  	struct hdcp_port_data *data =3D &dig_port->hdcp_port_data;
>  	struct drm_i915_private *dev_priv =3D to_i915(connector->base.dev);
> -	struct i915_hdcp_comp_master *comp;
> +	struct i915_hdcp_master *arbiter;
>  	int ret;
>=20
>  	mutex_lock(&dev_priv->display.hdcp.comp_mutex);
> -	comp =3D dev_priv->display.hdcp.master;
> +	arbiter =3D dev_priv->display.hdcp.master;
>=20
> -	if (!comp || !comp->ops) {
> +	if (!arbiter || !arbiter->ops) {
>  		mutex_unlock(&dev_priv->display.hdcp.comp_mutex);
>  		return -EINVAL;
>  	}
>=20
> -	ret =3D comp->ops->verify_mprime(comp->mei_dev, data, stream_ready);
> +	ret =3D arbiter->ops->verify_mprime(arbiter->hdcp_dev, data,
> +stream_ready);
>  	if (ret < 0)
>  		drm_dbg_kms(&dev_priv->drm, "Verify mprime failed. %d\n", ret);
>  	mutex_unlock(&dev_priv->display.hdcp.comp_mutex);
> @@ -1388,18 +1389,18 @@ static int hdcp2_authenticate_port(struct
> intel_connector *connector)
>  	struct intel_digital_port *dig_port =3D intel_attached_dig_port(connect=
or);
>  	struct hdcp_port_data *data =3D &dig_port->hdcp_port_data;
>  	struct drm_i915_private *dev_priv =3D to_i915(connector->base.dev);
> -	struct i915_hdcp_comp_master *comp;
> +	struct i915_hdcp_master *arbiter;
>  	int ret;
>=20
>  	mutex_lock(&dev_priv->display.hdcp.comp_mutex);
> -	comp =3D dev_priv->display.hdcp.master;
> +	arbiter =3D dev_priv->display.hdcp.master;
>=20
> -	if (!comp || !comp->ops) {
> +	if (!arbiter || !arbiter->ops) {
>  		mutex_unlock(&dev_priv->display.hdcp.comp_mutex);
>  		return -EINVAL;
>  	}
>=20
> -	ret =3D comp->ops->enable_hdcp_authentication(comp->mei_dev, data);
> +	ret =3D arbiter->ops->enable_hdcp_authentication(arbiter->hdcp_dev,
> +data);
>  	if (ret < 0)
>  		drm_dbg_kms(&dev_priv->drm, "Enable hdcp auth failed. %d\n",
>  			    ret);
> @@ -1412,18 +1413,18 @@ static int hdcp2_close_mei_session(struct
> intel_connector *connector)  {
>  	struct intel_digital_port *dig_port =3D intel_attached_dig_port(connect=
or);
>  	struct drm_i915_private *dev_priv =3D to_i915(connector->base.dev);
> -	struct i915_hdcp_comp_master *comp;
> +	struct i915_hdcp_master *arbiter;
>  	int ret;
>=20
>  	mutex_lock(&dev_priv->display.hdcp.comp_mutex);
> -	comp =3D dev_priv->display.hdcp.master;
> +	arbiter =3D dev_priv->display.hdcp.master;
>=20
> -	if (!comp || !comp->ops) {
> +	if (!arbiter || !arbiter->ops) {
>  		mutex_unlock(&dev_priv->display.hdcp.comp_mutex);
>  		return -EINVAL;
>  	}
>=20
> -	ret =3D comp->ops->close_hdcp_session(comp->mei_dev,
> +	ret =3D arbiter->ops->close_hdcp_session(arbiter->hdcp_dev,
>  					     &dig_port->hdcp_port_data);
>  	mutex_unlock(&dev_priv->display.hdcp.comp_mutex);
>=20
> @@ -2142,8 +2143,8 @@ static int i915_hdcp_component_bind(struct device
> *i915_kdev,
>=20
>  	drm_dbg(&dev_priv->drm, "I915 HDCP comp bind\n");
>  	mutex_lock(&dev_priv->display.hdcp.comp_mutex);
> -	dev_priv->display.hdcp.master =3D (struct i915_hdcp_comp_master *)data;
> -	dev_priv->display.hdcp.master->mei_dev =3D mei_kdev;
> +	dev_priv->display.hdcp.master =3D (struct i915_hdcp_master *)data;
> +	dev_priv->display.hdcp.master->hdcp_dev =3D mei_kdev;
>  	mutex_unlock(&dev_priv->display.hdcp.comp_mutex);
>=20
>  	return 0;
> @@ -2160,30 +2161,30 @@ static void i915_hdcp_component_unbind(struct dev=
ice
> *i915_kdev,
>  	mutex_unlock(&dev_priv->display.hdcp.comp_mutex);
>  }
>=20
> -static const struct component_ops i915_hdcp_component_ops =3D {
> +static const struct component_ops i915_hdcp_ops =3D {
>  	.bind   =3D i915_hdcp_component_bind,
>  	.unbind =3D i915_hdcp_component_unbind,
>  };
>=20
> -static enum mei_fw_ddi intel_get_mei_fw_ddi_index(enum port port)
> +static enum hdcp_ddi intel_get_hdcp_ddi_index(enum port port)
>  {
>  	switch (port) {
>  	case PORT_A:
> -		return MEI_DDI_A;
> +		return HDCP_DDI_A;
>  	case PORT_B ... PORT_F:
> -		return (enum mei_fw_ddi)port;
> +		return (enum hdcp_ddi)port;
>  	default:
> -		return MEI_DDI_INVALID_PORT;
> +		return HDCP_DDI_INVALID_PORT;
>  	}
>  }
>=20
> -static enum mei_fw_tc intel_get_mei_fw_tc(enum transcoder cpu_transcoder=
)
> +static enum hdcp_transcoder intel_get_hdcp_transcoder(enum transcoder
> +cpu_transcoder)
>  {
>  	switch (cpu_transcoder) {
>  	case TRANSCODER_A ... TRANSCODER_D:
> -		return (enum mei_fw_tc)(cpu_transcoder | 0x10);
> +		return (enum hdcp_transcoder)(cpu_transcoder | 0x10);
>  	default: /* eDP, DSI TRANSCODERS are non HDCP capable */
> -		return MEI_INVALID_TRANSCODER;
> +		return HDCP_INVALID_TRANSCODER;
>  	}
>  }
>=20
> @@ -2197,20 +2198,20 @@ static int initialize_hdcp_port_data(struct
> intel_connector *connector,
>  	enum port port =3D dig_port->base.port;
>=20
>  	if (DISPLAY_VER(dev_priv) < 12)
> -		data->fw_ddi =3D intel_get_mei_fw_ddi_index(port);
> +		data->hdcp_ddi =3D intel_get_hdcp_ddi_index(port);
>  	else
>  		/*
> -		 * As per ME FW API expectation, for GEN 12+, fw_ddi is filled
> +		 * As per ME FW API expectation, for GEN 12+, hdcp_ddi is filled
>  		 * with zero(INVALID PORT index).
>  		 */
> -		data->fw_ddi =3D MEI_DDI_INVALID_PORT;
> +		data->hdcp_ddi =3D HDCP_DDI_INVALID_PORT;
>=20
>  	/*
> -	 * As associated transcoder is set and modified at modeset, here fw_tc
> +	 * As associated transcoder is set and modified at modeset, here
> +hdcp_transcoder
>  	 * is initialized to zero (invalid transcoder index). This will be
>  	 * retained for <Gen12 forever.
>  	 */
> -	data->fw_tc =3D MEI_INVALID_TRANSCODER;
> +	data->hdcp_transcoder =3D HDCP_INVALID_TRANSCODER;
>=20
>  	data->port_type =3D (u8)HDCP_PORT_TYPE_INTEGRATED;
>  	data->protocol =3D (u8)shim->protocol;
> @@ -2253,7 +2254,7 @@ void intel_hdcp_component_init(struct drm_i915_priv=
ate
> *dev_priv)
>=20
>  	dev_priv->display.hdcp.comp_added =3D true;
>  	mutex_unlock(&dev_priv->display.hdcp.comp_mutex);
> -	ret =3D component_add_typed(dev_priv->drm.dev,
> &i915_hdcp_component_ops,
> +	ret =3D component_add_typed(dev_priv->drm.dev, &i915_hdcp_ops,
>  				  I915_COMPONENT_HDCP);
>  	if (ret < 0) {
>  		drm_dbg_kms(&dev_priv->drm, "Failed at component add(%d)\n",
> @@ -2347,7 +2348,8 @@ int intel_hdcp_enable(struct intel_connector *conne=
ctor,
>  	}
>=20
>  	if (DISPLAY_VER(dev_priv) >=3D 12)
> -		dig_port->hdcp_port_data.fw_tc =3D intel_get_mei_fw_tc(hdcp-
> >cpu_transcoder);
> +		dig_port->hdcp_port_data.hdcp_transcoder =3D
> +			intel_get_hdcp_transcoder(hdcp->cpu_transcoder);
>=20
>  	/*
>  	 * Considering that HDCP2.2 is more secure than HDCP1.4, If the setup @=
@ -
> 2482,7 +2484,7 @@ void intel_hdcp_component_fini(struct drm_i915_private
> *dev_priv)
>  	dev_priv->display.hdcp.comp_added =3D false;
>  	mutex_unlock(&dev_priv->display.hdcp.comp_mutex);
>=20
> -	component_del(dev_priv->drm.dev, &i915_hdcp_component_ops);
> +	component_del(dev_priv->drm.dev, &i915_hdcp_ops);
>  }
>=20
>  void intel_hdcp_cleanup(struct intel_connector *connector) diff --git
> a/drivers/misc/mei/hdcp/mei_hdcp.c b/drivers/misc/mei/hdcp/mei_hdcp.c
> index e0dcd5c114db..9e85bf916091 100644
> --- a/drivers/misc/mei/hdcp/mei_hdcp.c
> +++ b/drivers/misc/mei/hdcp/mei_hdcp.c
> @@ -23,7 +23,7 @@
>  #include <linux/component.h>
>  #include <drm/drm_connector.h>
>  #include <drm/i915_component.h>
> -#include <drm/i915_mei_hdcp_interface.h>
> +#include <drm/i915_hdcp_interface.h>
>=20
>  #include "mei_hdcp.h"
>=20
> @@ -57,8 +57,8 @@ mei_hdcp_initiate_session(struct device *dev, struct
> hdcp_port_data *data,
>=20
> 	WIRED_CMD_BUF_LEN_INITIATE_HDCP2_SESSION_IN;
>=20
>  	session_init_in.port.integrated_port_type =3D data->port_type;
> -	session_init_in.port.physical_port =3D (u8)data->fw_ddi;
> -	session_init_in.port.attached_transcoder =3D (u8)data->fw_tc;
> +	session_init_in.port.physical_port =3D (u8)data->hdcp_ddi;
> +	session_init_in.port.attached_transcoder =3D (u8)data->hdcp_transcoder;
>  	session_init_in.protocol =3D data->protocol;
>=20
>  	byte =3D mei_cldev_send(cldev, (u8 *)&session_init_in, @@ -127,8 +127,8
> @@ mei_hdcp_verify_receiver_cert_prepare_km(struct device *dev,
>=20
> 	WIRED_CMD_BUF_LEN_VERIFY_RECEIVER_CERT_IN;
>=20
>  	verify_rxcert_in.port.integrated_port_type =3D data->port_type;
> -	verify_rxcert_in.port.physical_port =3D (u8)data->fw_ddi;
> -	verify_rxcert_in.port.attached_transcoder =3D (u8)data->fw_tc;
> +	verify_rxcert_in.port.physical_port =3D (u8)data->hdcp_ddi;
> +	verify_rxcert_in.port.attached_transcoder =3D (u8)data->hdcp_transcoder=
;
>=20
>  	verify_rxcert_in.cert_rx =3D rx_cert->cert_rx;
>  	memcpy(verify_rxcert_in.r_rx, &rx_cert->r_rx, HDCP_2_2_RRX_LEN); @@ -
> 198,8 +198,8 @@ mei_hdcp_verify_hprime(struct device *dev, struct
> hdcp_port_data *data,
>  	send_hprime_in.header.buffer_len =3D
> WIRED_CMD_BUF_LEN_AKE_SEND_HPRIME_IN;
>=20
>  	send_hprime_in.port.integrated_port_type =3D data->port_type;
> -	send_hprime_in.port.physical_port =3D (u8)data->fw_ddi;
> -	send_hprime_in.port.attached_transcoder =3D (u8)data->fw_tc;
> +	send_hprime_in.port.physical_port =3D (u8)data->hdcp_ddi;
> +	send_hprime_in.port.attached_transcoder =3D (u8)data->hdcp_transcoder;
>=20
>  	memcpy(send_hprime_in.h_prime, rx_hprime->h_prime,
>  	       HDCP_2_2_H_PRIME_LEN);
> @@ -256,8 +256,8 @@ mei_hdcp_store_pairing_info(struct device *dev, struc=
t
> hdcp_port_data *data,
>=20
> 	WIRED_CMD_BUF_LEN_SEND_PAIRING_INFO_IN;
>=20
>  	pairing_info_in.port.integrated_port_type =3D data->port_type;
> -	pairing_info_in.port.physical_port =3D (u8)data->fw_ddi;
> -	pairing_info_in.port.attached_transcoder =3D (u8)data->fw_tc;
> +	pairing_info_in.port.physical_port =3D (u8)data->hdcp_ddi;
> +	pairing_info_in.port.attached_transcoder =3D (u8)data->hdcp_transcoder;
>=20
>  	memcpy(pairing_info_in.e_kh_km, pairing_info->e_kh_km,
>  	       HDCP_2_2_E_KH_KM_LEN);
> @@ -315,8 +315,8 @@ mei_hdcp_initiate_locality_check(struct device *dev,
>  	lc_init_in.header.buffer_len =3D
> WIRED_CMD_BUF_LEN_INIT_LOCALITY_CHECK_IN;
>=20
>  	lc_init_in.port.integrated_port_type =3D data->port_type;
> -	lc_init_in.port.physical_port =3D (u8)data->fw_ddi;
> -	lc_init_in.port.attached_transcoder =3D (u8)data->fw_tc;
> +	lc_init_in.port.physical_port =3D (u8)data->hdcp_ddi;
> +	lc_init_in.port.attached_transcoder =3D (u8)data->hdcp_transcoder;
>=20
>  	byte =3D mei_cldev_send(cldev, (u8 *)&lc_init_in, sizeof(lc_init_in));
>  	if (byte < 0) {
> @@ -371,8 +371,8 @@ mei_hdcp_verify_lprime(struct device *dev, struct
> hdcp_port_data *data,
>=20
> 	WIRED_CMD_BUF_LEN_VALIDATE_LOCALITY_IN;
>=20
>  	verify_lprime_in.port.integrated_port_type =3D data->port_type;
> -	verify_lprime_in.port.physical_port =3D (u8)data->fw_ddi;
> -	verify_lprime_in.port.attached_transcoder =3D (u8)data->fw_tc;
> +	verify_lprime_in.port.physical_port =3D (u8)data->hdcp_ddi;
> +	verify_lprime_in.port.attached_transcoder =3D (u8)data->hdcp_transcoder=
;
>=20
>  	memcpy(verify_lprime_in.l_prime, rx_lprime->l_prime,
>  	       HDCP_2_2_L_PRIME_LEN);
> @@ -429,8 +429,8 @@ static int mei_hdcp_get_session_key(struct device *de=
v,
>  	get_skey_in.header.buffer_len =3D
> WIRED_CMD_BUF_LEN_GET_SESSION_KEY_IN;
>=20
>  	get_skey_in.port.integrated_port_type =3D data->port_type;
> -	get_skey_in.port.physical_port =3D (u8)data->fw_ddi;
> -	get_skey_in.port.attached_transcoder =3D (u8)data->fw_tc;
> +	get_skey_in.port.physical_port =3D (u8)data->hdcp_ddi;
> +	get_skey_in.port.attached_transcoder =3D (u8)data->hdcp_transcoder;
>=20
>  	byte =3D mei_cldev_send(cldev, (u8 *)&get_skey_in, sizeof(get_skey_in))=
;
>  	if (byte < 0) {
> @@ -494,8 +494,8 @@ mei_hdcp_repeater_check_flow_prepare_ack(struct devic=
e
> *dev,
>=20
> 	WIRED_CMD_BUF_LEN_VERIFY_REPEATER_IN;
>=20
>  	verify_repeater_in.port.integrated_port_type =3D data->port_type;
> -	verify_repeater_in.port.physical_port =3D (u8)data->fw_ddi;
> -	verify_repeater_in.port.attached_transcoder =3D (u8)data->fw_tc;
> +	verify_repeater_in.port.physical_port =3D (u8)data->hdcp_ddi;
> +	verify_repeater_in.port.attached_transcoder =3D
> +(u8)data->hdcp_transcoder;
>=20
>  	memcpy(verify_repeater_in.rx_info, rep_topology->rx_info,
>  	       HDCP_2_2_RXINFO_LEN);
> @@ -572,8 +572,8 @@ static int mei_hdcp_verify_mprime(struct device *dev,
>  	verify_mprime_in->header.buffer_len =3D cmd_size  - sizeof(verify_mprim=
e_in-
> >header);
>=20
>  	verify_mprime_in->port.integrated_port_type =3D data->port_type;
> -	verify_mprime_in->port.physical_port =3D (u8)data->fw_ddi;
> -	verify_mprime_in->port.attached_transcoder =3D (u8)data->fw_tc;
> +	verify_mprime_in->port.physical_port =3D (u8)data->hdcp_ddi;
> +	verify_mprime_in->port.attached_transcoder =3D
> +(u8)data->hdcp_transcoder;
>=20
>  	memcpy(verify_mprime_in->m_prime, stream_ready->m_prime,
> HDCP_2_2_MPRIME_LEN);
>  	drm_hdcp_cpu_to_be24(verify_mprime_in->seq_num_m, data-
> >seq_num_m); @@ -634,8 +634,8 @@ static int
> mei_hdcp_enable_authentication(struct device *dev,
>  	enable_auth_in.header.buffer_len =3D
> WIRED_CMD_BUF_LEN_ENABLE_AUTH_IN;
>=20
>  	enable_auth_in.port.integrated_port_type =3D data->port_type;
> -	enable_auth_in.port.physical_port =3D (u8)data->fw_ddi;
> -	enable_auth_in.port.attached_transcoder =3D (u8)data->fw_tc;
> +	enable_auth_in.port.physical_port =3D (u8)data->hdcp_ddi;
> +	enable_auth_in.port.attached_transcoder =3D (u8)data->hdcp_transcoder;
>  	enable_auth_in.stream_type =3D data->streams[0].stream_type;
>=20
>  	byte =3D mei_cldev_send(cldev, (u8 *)&enable_auth_in, @@ -689,8 +689,8
> @@ mei_hdcp_close_session(struct device *dev, struct hdcp_port_data *data=
)
>  				WIRED_CMD_BUF_LEN_CLOSE_SESSION_IN;
>=20
>  	session_close_in.port.integrated_port_type =3D data->port_type;
> -	session_close_in.port.physical_port =3D (u8)data->fw_ddi;
> -	session_close_in.port.attached_transcoder =3D (u8)data->fw_tc;
> +	session_close_in.port.physical_port =3D (u8)data->hdcp_ddi;
> +	session_close_in.port.attached_transcoder =3D (u8)data->hdcp_transcoder=
;
>=20
>  	byte =3D mei_cldev_send(cldev, (u8 *)&session_close_in,
>  			      sizeof(session_close_in));
> @@ -715,7 +715,7 @@ mei_hdcp_close_session(struct device *dev, struct
> hdcp_port_data *data)
>  	return 0;
>  }
>=20
> -static const struct i915_hdcp_component_ops mei_hdcp_ops =3D {
> +static const struct i915_hdcp_ops mei_hdcp_ops =3D {
>  	.owner =3D THIS_MODULE,
>  	.initiate_hdcp2_session =3D mei_hdcp_initiate_session,
>  	.verify_receiver_cert_prepare_km =3D
> @@ -735,13 +735,12 @@ static const struct i915_hdcp_component_ops
> mei_hdcp_ops =3D {  static int mei_component_master_bind(struct device *d=
ev)  {
>  	struct mei_cl_device *cldev =3D to_mei_cl_device(dev);
> -	struct i915_hdcp_comp_master *comp_master =3D
> -						mei_cldev_get_drvdata(cldev);
> +	struct i915_hdcp_master *comp_master =3D mei_cldev_get_drvdata(cldev);
>  	int ret;
>=20
>  	dev_dbg(dev, "%s\n", __func__);
>  	comp_master->ops =3D &mei_hdcp_ops;
> -	comp_master->mei_dev =3D dev;
> +	comp_master->hdcp_dev =3D dev;
>  	ret =3D component_bind_all(dev, comp_master);
>  	if (ret < 0)
>  		return ret;
> @@ -752,8 +751,7 @@ static int mei_component_master_bind(struct device *d=
ev)
> static void mei_component_master_unbind(struct device *dev)  {
>  	struct mei_cl_device *cldev =3D to_mei_cl_device(dev);
> -	struct i915_hdcp_comp_master *comp_master =3D
> -						mei_cldev_get_drvdata(cldev);
> +	struct i915_hdcp_master *comp_master =3D mei_cldev_get_drvdata(cldev);
>=20
>  	dev_dbg(dev, "%s\n", __func__);
>  	component_unbind_all(dev, comp_master); @@ -801,7 +799,7 @@ static
> int mei_hdcp_component_match(struct device *dev, int subcomponent,  stati=
c int
> mei_hdcp_probe(struct mei_cl_device *cldev,
>  			  const struct mei_cl_device_id *id)  {
> -	struct i915_hdcp_comp_master *comp_master;
> +	struct i915_hdcp_master *comp_master;
>  	struct component_match *master_match;
>  	int ret;
>=20
> @@ -846,8 +844,7 @@ static int mei_hdcp_probe(struct mei_cl_device *cldev=
,
>=20
>  static void mei_hdcp_remove(struct mei_cl_device *cldev)  {
> -	struct i915_hdcp_comp_master *comp_master =3D
> -						mei_cldev_get_drvdata(cldev);
> +	struct i915_hdcp_master *comp_master =3D mei_cldev_get_drvdata(cldev);
>  	int ret;
>=20
>  	component_master_del(&cldev->dev, &mei_component_master_ops); diff -
> -git a/include/drm/i915_mei_hdcp_interface.h b/include/drm/i915_hdcp_inte=
rface.h
> similarity index 71%
> rename from include/drm/i915_mei_hdcp_interface.h
> rename to include/drm/i915_hdcp_interface.h index f441cbcd95a4..0bf5c3850=
50b
> 100644
> --- a/include/drm/i915_mei_hdcp_interface.h
> +++ b/include/drm/i915_hdcp_interface.h
> @@ -6,15 +6,15 @@
>   * Ramalingam C <ramalingam.c@intel.com>
>   */
>=20
> -#ifndef _I915_MEI_HDCP_INTERFACE_H_
> -#define _I915_MEI_HDCP_INTERFACE_H_
> +#ifndef _I915_HDCP_INTERFACE_H_
> +#define _I915_HDCP_INTERFACE_H_
>=20
>  #include <linux/mutex.h>
>  #include <linux/device.h>
>  #include <drm/display/drm_hdcp.h>
>=20
>  /**
> - * enum hdcp_port_type - HDCP port implementation type defined by ME FW
> + * enum hdcp_port_type - HDCP port implementation type defined by
> + ME/GSC FW
>   * @HDCP_PORT_TYPE_INVALID: Invalid hdcp port type
>   * @HDCP_PORT_TYPE_INTEGRATED: In-Host HDCP2.x port
>   * @HDCP_PORT_TYPE_LSPCON: HDCP2.2 discrete wired Tx port with LSPCON @@
> -41,46 +41,46 @@ enum hdcp_wired_protocol {
>  	HDCP_PROTOCOL_DP
>  };
>=20
> -enum mei_fw_ddi {
> -	MEI_DDI_INVALID_PORT =3D 0x0,
> +enum hdcp_ddi {
> +	HDCP_DDI_INVALID_PORT =3D 0x0,
>=20
> -	MEI_DDI_B =3D 1,
> -	MEI_DDI_C,
> -	MEI_DDI_D,
> -	MEI_DDI_E,
> -	MEI_DDI_F,
> -	MEI_DDI_A =3D 7,
> -	MEI_DDI_RANGE_END =3D MEI_DDI_A,
> +	HDCP_DDI_B =3D 1,
> +	HDCP_DDI_C,
> +	HDCP_DDI_D,
> +	HDCP_DDI_E,
> +	HDCP_DDI_F,
> +	HDCP_DDI_A =3D 7,
> +	HDCP_DDI_RANGE_END =3D HDCP_DDI_A,
>  };
>=20
>  /**
> - * enum mei_fw_tc - ME Firmware defined index for transcoders
> - * @MEI_INVALID_TRANSCODER: Index for Invalid transcoder
> - * @MEI_TRANSCODER_EDP: Index for EDP Transcoder
> - * @MEI_TRANSCODER_DSI0: Index for DSI0 Transcoder
> - * @MEI_TRANSCODER_DSI1: Index for DSI1 Transcoder
> - * @MEI_TRANSCODER_A: Index for Transcoder A
> - * @MEI_TRANSCODER_B: Index for Transcoder B
> - * @MEI_TRANSCODER_C: Index for Transcoder C
> - * @MEI_TRANSCODER_D: Index for Transcoder D
> + * enum hdcp_tc - ME/GSC Firmware defined index for transcoders
> + * @HDCP_INVALID_TRANSCODER: Index for Invalid transcoder
> + * @HDCP_TRANSCODER_EDP: Index for EDP Transcoder
> + * @HDCP_TRANSCODER_DSI0: Index for DSI0 Transcoder
> + * @HDCP_TRANSCODER_DSI1: Index for DSI1 Transcoder
> + * @HDCP_TRANSCODER_A: Index for Transcoder A
> + * @HDCP_TRANSCODER_B: Index for Transcoder B
> + * @HDCP_TRANSCODER_C: Index for Transcoder C
> + * @HDCP_TRANSCODER_D: Index for Transcoder D
>   */
> -enum mei_fw_tc {
> -	MEI_INVALID_TRANSCODER =3D 0x00,
> -	MEI_TRANSCODER_EDP,
> -	MEI_TRANSCODER_DSI0,
> -	MEI_TRANSCODER_DSI1,
> -	MEI_TRANSCODER_A =3D 0x10,
> -	MEI_TRANSCODER_B,
> -	MEI_TRANSCODER_C,
> -	MEI_TRANSCODER_D
> +enum hdcp_transcoder {
> +	HDCP_INVALID_TRANSCODER =3D 0x00,
> +	HDCP_TRANSCODER_EDP,
> +	HDCP_TRANSCODER_DSI0,
> +	HDCP_TRANSCODER_DSI1,
> +	HDCP_TRANSCODER_A =3D 0x10,
> +	HDCP_TRANSCODER_B,
> +	HDCP_TRANSCODER_C,
> +	HDCP_TRANSCODER_D
>  };
>=20
>  /**
>   * struct hdcp_port_data - intel specific HDCP port data
> - * @fw_ddi: ddi index as per ME FW
> - * @fw_tc: transcoder index as per ME FW
> - * @port_type: HDCP port type as per ME FW classification
> - * @protocol: HDCP adaptation as per ME FW
> + * @hdcp_ddi: ddi index as per ME/GSC FW
> + * @hdcp_transcoder: transcoder index as per ME/GSC FW
> + * @port_type: HDCP port type as per ME/GSC FW classification
> + * @protocol: HDCP adaptation as per ME/GSC FW
>   * @k: No of streams transmitted on a port. Only on DP MST this is !=3D =
1
>   * @seq_num_m: Count of RepeaterAuth_Stream_Manage msg propagated.
>   *	       Initialized to 0 on AKE_INIT. Incremented after every successf=
ul
> @@ -90,8 +90,8 @@ enum mei_fw_tc {
>   *	     streams
>   */
>  struct hdcp_port_data {
> -	enum mei_fw_ddi fw_ddi;
> -	enum mei_fw_tc fw_tc;
> +	enum hdcp_ddi hdcp_ddi;
> +	enum hdcp_transcoder hdcp_transcoder;
>  	u8 port_type;
>  	u8 protocol;
>  	u16 k;
> @@ -100,7 +100,7 @@ struct hdcp_port_data {  };
>=20
>  /**
> - * struct i915_hdcp_component_ops- ops for HDCP2.2 services.
> + * struct i915_hdcp_ops- ops for HDCP2.2 services.
>   * @owner: Module providing the ops
>   * @initiate_hdcp2_session: Initiate a Wired HDCP2.2 Tx Session.
>   *			    And Prepare AKE_Init.
> @@ -119,9 +119,9 @@ struct hdcp_port_data {
>   * @close_hdcp_session: Close the Wired HDCP Tx session per port.
>   *			This also disables the authenticated state of the port.
>   */
> -struct i915_hdcp_component_ops {
> +struct i915_hdcp_ops {
>  	/**
> -	 * @owner: mei_hdcp module
> +	 * @owner: hdcp module
>  	 */
>  	struct module *owner;
>=20
> @@ -168,17 +168,17 @@ struct i915_hdcp_component_ops {  };
>=20
>  /**
> - * struct i915_hdcp_component_master - Used for communication between i9=
15
> - * and mei_hdcp drivers for the HDCP2.2 services
> - * @mei_dev: device that provide the HDCP2.2 service from MEI Bus.
> - * @hdcp_ops: Ops implemented by mei_hdcp driver, used by i915 driver.
> + * struct i915_hdcp_master - Used for communication between i915
> + * and hdcp drivers for the HDCP2.2 services
> + * @hdcp_dev: device that provide the HDCP2.2 service from MEI Bus.
> + * @hdcp_ops: Ops implemented by hdcp driver or intel_hdcp_gsc , used by=
 i915
> driver.
>   */
> -struct i915_hdcp_comp_master {
> -	struct device *mei_dev;
> -	const struct i915_hdcp_component_ops *ops;
> +struct i915_hdcp_master {
> +	struct device *hdcp_dev;
> +	const struct i915_hdcp_ops *ops;
>=20
>  	/* To protect the above members. */
>  	struct mutex mutex;
>  };
>=20
> -#endif /* _I915_MEI_HDCP_INTERFACE_H_ */
> +#endif /* _I915_HDCP_INTERFACE_H_ */
> --
> 2.25.1

