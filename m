Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id BEF517D169E
	for <lists+intel-gfx@lfdr.de>; Fri, 20 Oct 2023 21:56:20 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 2B84310E5E5;
	Fri, 20 Oct 2023 19:56:19 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.55.52.136])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 7237310E5E5
 for <intel-gfx@lists.freedesktop.org>; Fri, 20 Oct 2023 19:56:17 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1697831777; x=1729367777;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=UVmywtZLCn7i6U22BFPRjpHRVUNzpVEtbQ4o4od5bOs=;
 b=YNIHfDaUC6WjtHe+zyTPwiEsbvC9zlj7VDyx15eauKZC6Qp3px0LmPTS
 C0TBZ145pRvdgFfgMPmP9U5Fi0A7HUzocBkC3JJNwX4Aqit8Ru057mjK+
 K2kCO08OWoBw7Iz+ecpmKBFmPctUqsUWPbr+5R1sbZcXZKH4o8LRP1/Hd
 +sg/rBepHMIVCNqdM0wniUGx2ceRC9783GXKyd/BztN5FyWQSSKg9MPfz
 9AC6R6KtlQcGn6XGmxKbLiASjs6mjxljADHs+yK48s/Z61UnH2a5AEM/h
 /E4FpmnEVYhHDODck4Fvg9TMgJX/xA61fSSmVG84n3mY1mOKeFvMHOy9F Q==;
X-IronPort-AV: E=McAfee;i="6600,9927,10869"; a="365901283"
X-IronPort-AV: E=Sophos;i="6.03,239,1694761200"; d="scan'208";a="365901283"
Received: from orsmga006.jf.intel.com ([10.7.209.51])
 by fmsmga106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 20 Oct 2023 12:56:16 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10869"; a="734058248"
X-IronPort-AV: E=Sophos;i="6.03,239,1694761200"; d="scan'208";a="734058248"
Received: from orsmsx603.amr.corp.intel.com ([10.22.229.16])
 by orsmga006.jf.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 20 Oct 2023 12:56:16 -0700
Received: from orsmsx611.amr.corp.intel.com (10.22.229.24) by
 ORSMSX603.amr.corp.intel.com (10.22.229.16) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.32; Fri, 20 Oct 2023 12:56:15 -0700
Received: from ORSEDG601.ED.cps.intel.com (10.7.248.6) by
 orsmsx611.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.32 via Frontend Transport; Fri, 20 Oct 2023 12:56:15 -0700
Received: from NAM10-DM6-obe.outbound.protection.outlook.com (104.47.58.100)
 by edgegateway.intel.com (134.134.137.102) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.32; Fri, 20 Oct 2023 12:56:15 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=BKFjZ+xBp2wSRE/8+EYyGTNdhr//eG1XdJNIANm0z8u6+xS4YmctcQYA620cUfGl70HkxOHvyzgF8pYTz89iC2qCzgMu81OChQdQkkgTFEFzDtM7FYYxDqkBgbKbuUOrGYI3jl5GBBzh0dU+uJMEwbPev2piLqUKMJSMaRyWr0i0tbY5QZvbCE981BVpB1CQrB/NyTXTH9C+/wbo6hXJc0CBLMrH9s3ch1SXazi5OMCdhr9iyqyS/nFtD46yeFpKNV/sfIhmTSgRVyEeN2rt2znu5WHflkc5KyKZkl2jInyMWwtHFQ+xBFL0my6Y4TguTjeMHpfnuFwsq9tJHjECaA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=e1hMq0PGyLHiT7u/+yoCsMfkegPWgf9VPaahW2K3ieA=;
 b=NrgAJmfKxeH9VIsEh9BNO/EBlzXmtD/PDRKreMses4rLWhzHfq3GTY2MXhZlyrORrzOAUPRlmRc8y5D6AHks3ajo7JomHWV79FO/Hto2ZVT5Um0HkV6EIrNUyG7fuYVmqIv0yzKp+7buwgT+mbJ+CDmg5Gt1FzE5ONNWPptOhr8MiTK9SokPoILXtREPF3BhtMqw16ZayYSN26Du56Aju+Zr8P727RTAVT+Vyvk5UV9OchuMtj1uekAw/t20onYEqZaoWB16yYDtWkRU9ZMC/cx7j/RBpTwcTpGs6V1rbf4CnjGdh9pzDkHnpCRDsvBC5n3lqdHOwclOsqAEdBUNoQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from BL1PR11MB5445.namprd11.prod.outlook.com (2603:10b6:208:30b::7)
 by DM4PR11MB7325.namprd11.prod.outlook.com (2603:10b6:8:107::7) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6907.21; Fri, 20 Oct
 2023 19:56:09 +0000
Received: from BL1PR11MB5445.namprd11.prod.outlook.com
 ([fe80::1d86:9790:8b2:4fa]) by BL1PR11MB5445.namprd11.prod.outlook.com
 ([fe80::1d86:9790:8b2:4fa%5]) with mapi id 15.20.6907.025; Fri, 20 Oct 2023
 19:56:09 +0000
From: "Cavitt, Jonathan" <jonathan.cavitt@intel.com>
To: "Hajda, Andrzej" <andrzej.hajda@intel.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
Thread-Topic: [PATCH v2 4/4] drm/i915: Set copy engine arbitration for
 Wa_16018031267 / Wa_16018063123
Thread-Index: AQHaA05UvKf2qIvjJkK0RUVVgDLE8bBTGAVw
Date: Fri, 20 Oct 2023 19:56:09 +0000
Message-ID: <BL1PR11MB5445ADEE82B1C5B33948613FE5DBA@BL1PR11MB5445.namprd11.prod.outlook.com>
References: <20231020120912.1888023-1-andrzej.hajda@intel.com>
 <20231020120912.1888023-5-andrzej.hajda@intel.com>
In-Reply-To: <20231020120912.1888023-5-andrzej.hajda@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: BL1PR11MB5445:EE_|DM4PR11MB7325:EE_
x-ms-office365-filtering-correlation-id: 2b234026-d2eb-4c84-94c9-08dbd1a69af7
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: rQoLn4PqqIw2e1+0IN7MWXy6OdzquqhdXJl3NZO5ZRDv2v0mgm9sEfDNIKdlizBTD5tIf5+eYMAr7rRNFT5z1odQZOj6QaEuEJG2eajeROrq4rM0aRgXV8nj5aW/OI1wLsS5KUdUgn5Y2OvvTfyFwkCUQj3Kf9RoRr0wsKILZYvDLCjKd4XDRBs6lXM0QOK3aoKp0qLbF4IZr2A83p6EwxIe6BYIM/NWtwcES/Fy8awnu1pd9fxdslhrSqnqjXbzJqYY2DhjOiEm2iqAVugevGA4JxANOs4ypfyQZtGfaGbCYHtmzqalk7NJe3T9+zdw12O+95PRe2uLrsLJdfFRr0sY+G7YD1WmzVtXGd+M05xSBEKspwc0GOHaGYK0f8oR0E6QpKfAteieYqk9I2Vmz8zOZ0GLRwX8NeBuq3QJgpcAx1J9qcbzEo7C/EcizCdG8zcnrz9Z+hVzqz5YjGIxFr4G1etPWz0EtMDa0zqXxiS0VoImPUyjPpYQfEGknY4MGZBm6u80n937g4nb1OEIxHy6/qM1VG6rHToWvsAk7b5REfMo77mLBBT0pAYEKxEUKrhJAzOAlAFS5GKhDKkAp1WfABxsfMeLRv/vzGC/7SiYzFy5uMHp26aT5q0eAt66
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:BL1PR11MB5445.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230031)(346002)(376002)(396003)(366004)(136003)(39860400002)(230922051799003)(1800799009)(186009)(64100799003)(451199024)(38070700009)(86362001)(33656002)(55016003)(66556008)(54906003)(66476007)(316002)(110136005)(66946007)(64756008)(82960400001)(122000001)(38100700002)(71200400001)(66446008)(6506007)(53546011)(52536014)(76116006)(7696005)(83380400001)(26005)(9686003)(8936002)(2906002)(478600001)(41300700001)(8676002)(4326008)(5660300002);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?QkKQrjlIE3dlQ8/PE5P0mXwpMJx/GTvmspKLDILl+KLOh1dGrqz42uQOezEy?=
 =?us-ascii?Q?m75z9jp8p4te7yHrg1+kBZWmHJ2UvfR3AoeA3aTUxo9RKW/CX2LO/ZGEWalr?=
 =?us-ascii?Q?ybOnxbWqIgwBQJ8n/ewDl1wWF9lG4YP3xttYLIcjv9LkQ7H0kuiLi1n95MTo?=
 =?us-ascii?Q?c2Qm/YYrfwvlytojRr5sFckqXlzKIVoJ8+kGPHK7YJPB9GBH9aqWBVu/3836?=
 =?us-ascii?Q?41xIRjQ946wukMy734FrojUPbFE38aWAg8xNcw4CR//M0yTFEYdi3Jypp13+?=
 =?us-ascii?Q?y7hmSCsVxs6GWGdevaCiqsC1fWSvpErBbNLLWsYptjUWfEkdDmbV9mkxdf5n?=
 =?us-ascii?Q?KSrRiTljOmsS7PcFyHspcAf/pkPJpAoYOJJjkPWHefG6wuIhF6xfZP+pGKNb?=
 =?us-ascii?Q?9fov4qG7Svh/8izSMiA4dldYqxC37XiT5lnkk37ZNkRBOxjoWnExIJJHlhyq?=
 =?us-ascii?Q?82Azn+eXX+VUFuAGJw+Qr/TgeWANAvoNsxU8f5wAQPTfmVkii98PcTOS9ZYE?=
 =?us-ascii?Q?L5E6WZ3fPX1P8jPv+AIlP93MrS5XCGWZzJywozkZFofhh/XoBhj2hmzqHjGO?=
 =?us-ascii?Q?ClivCcXNC4Gf8K6c6Fff4iesGge2Jz7qL5m12Ljw1YpFGgF8oJ1fk4310Oqs?=
 =?us-ascii?Q?C49kLynHAYzyeC6Wk1CFgm7LqI6L5rgfzm6+C0sl2659mPMrQd0b5xTyHWGj?=
 =?us-ascii?Q?DRzaG3zMDTbI8TFY0YCieaToEND6+XOfvICVuM+lgUS8J6Mz3i6b4h2kCguj?=
 =?us-ascii?Q?sE6oeFYNSIPOF6Mcc7Js7HOt5Zgy3lDlGcSMaDa2F1zwyGIdetyDQ5LDkxSi?=
 =?us-ascii?Q?pTOq+RYQ40d4CPSGwx0+UU/dcMCidCxF45DT7IxMAoJj+MTWSqSf+DNMe7S1?=
 =?us-ascii?Q?QLwIZJUycGni2TcD+6HROHSuEmOXuDwLDIEehtgecPEA2CejgzaALiaV0Jhg?=
 =?us-ascii?Q?R3mWrAbde85LB0BsZ7tpTYI8o1GE4apLzYH2913iojEKpocngl0ClNuaFoZU?=
 =?us-ascii?Q?P2HIc/UDe4Snhku/EMQBYYH49SCxmDRHbGJFJGS9EWJa0URTurI/gr79dsyK?=
 =?us-ascii?Q?4Y/1kN7RFRXtO5fFlA23rHgQ4J6wGO7W2ZoqeA/wMtPdqo3qIW7wPs/Pbpv6?=
 =?us-ascii?Q?NVcrDaWDzCWWs/tQlwHZYuWK7bejSxvWf3JYoZK3Exiu/EQAjhFI9SM91kZp?=
 =?us-ascii?Q?zF9z+PFN1FDaj8ZEuL5b4jdqdi4a1E6T/cK80o3jlgTsQPwCRt7A6MhRznU4?=
 =?us-ascii?Q?HENBZnWBc/XyjZjxz9hwzVrEuhYxiQpB+RIYb8eU8QG9BRraFu31OXFRZZPe?=
 =?us-ascii?Q?SOGq7fZ5qvo5sgGLbQ0s9bXKUPC781iF8QKiqEGDVribD07NjhSPEfpcngOZ?=
 =?us-ascii?Q?eJm9TpBsDn1RZ4oeWBKOD0JpnYUW+019pwXwDxVFLtHVYU+Xsq3/+DLgBcd7?=
 =?us-ascii?Q?b6H8iDGxr0lskUTXOmHce8PIYIiacXs1yBx+i5Tj1wBhwghvgnTMVgM6A17Z?=
 =?us-ascii?Q?AnSN4d6X7rJMDZymxUdgroEOITtR+y+sWR9uGjlF3dzN+KVLPzKLPHxQPF1I?=
 =?us-ascii?Q?TSpNcJxRsCOqG2fhldC5U5BxVu9ImaN2Y4wlDwTD?=
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: BL1PR11MB5445.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 2b234026-d2eb-4c84-94c9-08dbd1a69af7
X-MS-Exchange-CrossTenant-originalarrivaltime: 20 Oct 2023 19:56:09.7255 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: 4UQ7Q62nwFg1AI0pKsfWSB1z2Oiuc+6GZnLdu+S1A2o3Lq3Dp8tNIk/2NXRAhG94pPIwHIr33RK/0mf6U0xZW+Go7iib5UCgTaOFwbA8iEQ=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DM4PR11MB7325
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] [PATCH v2 4/4] drm/i915: Set copy engine
 arbitration for Wa_16018031267 / Wa_16018063123
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
Cc: "Shyti, Andi" <andi.shyti@intel.com>, "Das, Nirmoy" <nirmoy.das@intel.com>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

-----Original Message-----
From: Hajda, Andrzej <andrzej.hajda@intel.com>=20
Sent: Friday, October 20, 2023 5:09 AM
To: intel-gfx@lists.freedesktop.org
Cc: Nirmoy Das <nirmoy.das@linux.intel.com>; Shyti, Andi <andi.shyti@intel.=
com>; Cavitt, Jonathan <jonathan.cavitt@intel.com>; Das, Nirmoy <nirmoy.das=
@intel.com>
Subject: [PATCH v2 4/4] drm/i915: Set copy engine arbitration for Wa_160180=
31267 / Wa_16018063123
>=20
> From: Jonathan Cavitt <jonathan.cavitt@intel.com>
>=20
> Set copy engine arbitration into round robin mode
> for part of Wa_16018031267 / Wa_16018063123 mitigation.
>=20
> Signed-off-by: Nirmoy Das <nirmoy.das@intel.com>
> Signed-off-by: Jonathan Cavitt <jonathan.cavitt@intel.com>

Reviewed-by: Jonathan Cavitt <jonathan.cavitt@intel.com>
-Jonathan Cavitt

> ---
>  drivers/gpu/drm/i915/gt/intel_engine_regs.h | 3 +++
>  drivers/gpu/drm/i915/gt/intel_workarounds.c | 5 +++++
>  2 files changed, 8 insertions(+)
>=20
> diff --git a/drivers/gpu/drm/i915/gt/intel_engine_regs.h b/drivers/gpu/dr=
m/i915/gt/intel_engine_regs.h
> index b8618ee3e3041a..c0c8c12edea104 100644
> --- a/drivers/gpu/drm/i915/gt/intel_engine_regs.h
> +++ b/drivers/gpu/drm/i915/gt/intel_engine_regs.h
> @@ -124,6 +124,9 @@
>  #define RING_INDIRECT_CTX(base)			_MMIO((base) + 0x1c4) /* gen8+ */
>  #define RING_INDIRECT_CTX_OFFSET(base)		_MMIO((base) + 0x1c8) /* gen8+ *=
/
>  #define ECOSKPD(base)				_MMIO((base) + 0x1d0)
> +#define   XEHP_BLITTER_SCHEDULING_MODE_MASK	REG_GENMASK(12, 11)
> +#define   XEHP_BLITTER_ROUND_ROBIN_MODE		\
> +		REG_FIELD_PREP(XEHP_BLITTER_SCHEDULING_MODE_MASK, 1)
>  #define   ECO_CONSTANT_BUFFER_SR_DISABLE	REG_BIT(4)
>  #define   ECO_GATING_CX_ONLY			REG_BIT(3)
>  #define   GEN6_BLITTER_FBC_NOTIFY		REG_BIT(3)
> diff --git a/drivers/gpu/drm/i915/gt/intel_workarounds.c b/drivers/gpu/dr=
m/i915/gt/intel_workarounds.c
> index 192ac0e59afa13..108d9326735910 100644
> --- a/drivers/gpu/drm/i915/gt/intel_workarounds.c
> +++ b/drivers/gpu/drm/i915/gt/intel_workarounds.c
> @@ -2782,6 +2782,11 @@ xcs_engine_wa_init(struct intel_engine_cs *engine,=
 struct i915_wa_list *wal)
>  			 RING_SEMA_WAIT_POLL(engine->mmio_base),
>  			 1);
>  	}
> +	/* Wa_16018031267, Wa_16018063123 */
> +	if (NEEDS_FASTCOLOR_BLT_WABB(engine))
> +		wa_masked_field_set(wal, ECOSKPD(engine->mmio_base),
> +				    XEHP_BLITTER_SCHEDULING_MODE_MASK,
> +				    XEHP_BLITTER_ROUND_ROBIN_MODE);
>  }
> =20
>  static void
> --=20
> 2.34.1
>=20
>=20
