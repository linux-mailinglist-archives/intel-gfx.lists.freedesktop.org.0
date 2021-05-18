Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 736BD38743B
	for <lists+intel-gfx@lfdr.de>; Tue, 18 May 2021 10:42:58 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id CA98B6EAD2;
	Tue, 18 May 2021 08:42:56 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga04.intel.com (mga04.intel.com [192.55.52.120])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 64EE76EAD1
 for <intel-gfx@lists.freedesktop.org>; Tue, 18 May 2021 08:42:55 +0000 (UTC)
IronPort-SDR: CI6fcnRwZcDmRtPFRk+KtxIFZwx9yZW8hw31ybc5XySR6URtzqkAxlwoNLKNq+/HnhPV9iAzN/
 S0fC+y/dp7Mw==
X-IronPort-AV: E=McAfee;i="6200,9189,9987"; a="198708700"
X-IronPort-AV: E=Sophos;i="5.82,309,1613462400"; d="scan'208";a="198708700"
Received: from fmsmga005.fm.intel.com ([10.253.24.32])
 by fmsmga104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 18 May 2021 01:42:54 -0700
IronPort-SDR: JBQeOYDnPm+Q0IWPOcSUAbYTEEi0+ISKfxZiWBO0qJEWiPGAKU6ghLSGjFtIR/F6O9FOAiRpqM
 SlPrHdQ/tLVA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.82,309,1613462400"; d="scan'208";a="630363629"
Received: from fmsmsx601.amr.corp.intel.com ([10.18.126.81])
 by fmsmga005.fm.intel.com with ESMTP; 18 May 2021 01:42:54 -0700
Received: from fmsmsx603.amr.corp.intel.com (10.18.126.83) by
 fmsmsx601.amr.corp.intel.com (10.18.126.81) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2242.4; Tue, 18 May 2021 01:42:53 -0700
Received: from fmsedg602.ED.cps.intel.com (10.1.192.136) by
 fmsmsx603.amr.corp.intel.com (10.18.126.83) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id 15.1.2242.4
 via Frontend Transport; Tue, 18 May 2021 01:42:53 -0700
Received: from NAM11-CO1-obe.outbound.protection.outlook.com (104.47.56.172)
 by edgegateway.intel.com (192.55.55.71) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2106.2; Tue, 18 May 2021 01:42:51 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=di7NkpqX+81oguzwO44qE7d0xCk6nuEIhVrTXia496hN2gV7gFh6aVmpHLAOObQSLOf+gXHh5asNlS80hRegxOXlwqzyeesUtKAB90/80/JpX3rZwj/KZVYDGhCXRMApOa4fcrp4WdiyUYeEBR9vqQfJzYjlu18iz86SWrhng5AeAA97mgQ/FmlqUu918pnoKBS7T+FBDcJuuROK8gB+gxXVevAR/1PYvab6u8yN51u7KY5VsjXVeLcVETV4qPb7M1HHokG+WBXlKgY/piP7QljnkwpNprVIVCXfFsf2kOwi9FL8E/BJFdSCrMtCUlvY/r98jJ16e3Bh+yMFe7N7vw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=ac7bVOWV7B8IqOO1DPrDpd4L7umeRCU4YhDsyWxGP2Q=;
 b=O9UZk6cXYcydpPkHkwkBEMAox6kdf4V0IPj/CWvedNMbTanerXfr9aucjJpBrOb8EuL0CCpb5usnQ7jWyX1r87dM7TGXP15VDUKx3Ct/hMef+r/7IFYKv20UePPaPVKDZqcPxiiExZ28h3+yAF3BmthvYhTHwOeLwGkEq3coM8+0aIbLgWpJrqpRx+aCM7lvosS3sTWxTLY33mSRem9qORWITOL2S7qwFAFYcjNZFv6ouWavqdpizWc5OBgQzUSQDU5avTWRCeeNe/C4Z2fq2RpY5dwmkR5EAOjTXsKncrDovZeKyb6ZFHKDr8kkIBrwYD9gdf6IvowgKgStxSGgTw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=intel.onmicrosoft.com; 
 s=selector2-intel-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=ac7bVOWV7B8IqOO1DPrDpd4L7umeRCU4YhDsyWxGP2Q=;
 b=MBvM9miPvXWA1NcUzStJ3/XB+4PwAFkv+StU1QObJoHRQleq1qeqAlC+zSFt8ddke5N4YPll70ffWn5Jt6wem+j1uZU/sWGAuo+8nJnyjpR+Y+Yfesbexo3WyQEdOi5dLA38FzUK4eW86m3MJUS5qSKVD42mqaGnRh4vFzG07gQ=
Received: from SN6PR11MB3421.namprd11.prod.outlook.com (2603:10b6:805:cd::27)
 by SA2PR11MB5100.namprd11.prod.outlook.com (2603:10b6:806:119::11)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.4129.28; Tue, 18 May
 2021 08:42:30 +0000
Received: from SN6PR11MB3421.namprd11.prod.outlook.com
 ([fe80::5c0d:c982:3e51:d948]) by SN6PR11MB3421.namprd11.prod.outlook.com
 ([fe80::5c0d:c982:3e51:d948%4]) with mapi id 15.20.4129.031; Tue, 18 May 2021
 08:42:30 +0000
From: "Surendrakumar Upadhyay, TejaskumarX"
 <tejaskumarx.surendrakumar.upadhyay@intel.com>
To: "Nikula, Jani" <jani.nikula@intel.com>, "intel-gfx@lists.freedesktop.org"
 <intel-gfx@lists.freedesktop.org>
Thread-Topic: [PATCH] drm/i915/reg: replace BIT() usage with REG_BIT()
Thread-Index: AQHXS8CX7T7aomkOD0y4P2TzG4HfjKro65UA
Date: Tue, 18 May 2021 08:42:30 +0000
Message-ID: <SN6PR11MB34218E35C7309AF2354BC31BDF2C9@SN6PR11MB3421.namprd11.prod.outlook.com>
References: <20210518083400.24874-1-jani.nikula@intel.com>
In-Reply-To: <20210518083400.24874-1-jani.nikula@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
dlp-version: 11.5.1.3
dlp-product: dlpe-windows
dlp-reaction: no-action
authentication-results: intel.com; dkim=none (message not signed)
 header.d=none;intel.com; dmarc=none action=none header.from=intel.com;
x-originating-ip: [103.249.234.107]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 790ecb0b-48fb-4709-18c6-08d919d8dfe1
x-ms-traffictypediagnostic: SA2PR11MB5100:
x-ld-processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <SA2PR11MB510068F9CFA985D794E47B8BDF2C9@SA2PR11MB5100.namprd11.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:454;
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: 9b5OZQVo0MX+jqXL8EcCinQTHX2hkwutUiBMXuP+CLARrMe2XiPE+yzuzAWLMQOBBsYFHSwmukz3ZS0MzEA06MwJHYYNJTEgSa5aVhmFhypQYMKgMkAmhHiwKVd9Blz5Us/qO0xK44Yhr2XWW+Nf9ZoN41+/EK5vaOeYCFEEJ/FmEByziMETwh+53EeaIvdJhEPd3VmyamZzfkNvPDPUx1drSdqV1HlYwdeC5By9LckdLgqTIudGs1Tcae9rrSH9KstBcZ3Kp1d+tA3SRIRn3+vKI9pZ1tUuDnSq6JbM0Zsn+rcLrTmHko1J2OA0ZoZI9bqV52gnc/ebOK6p/RWU+76EJYBdv3umdbrUNYovRBTq4wdepkw2Srul3IUhZ1L7+AFsO2cA3HzWGxdESmYXk3VnO1+O0y02mEiOPa9veHTD5rk2Zh/tSRamkC03+ZpHz2ibGjrTAcAhNiibJMKBcQqLBADFZ+mu0B/+UcmLdp0PqkIhRLelDrWXW3CMPjVNbSU8qhaUxTAe6BPCk6T2kwzbLbE2Rqs6dy28sLEj8wJhPJy7FZIuWkvP1zcBRYxnx5B9N6GyaDLoHWOuHXU/vQlQJZBWsB7Rj3fDjbhXU6E=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:SN6PR11MB3421.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(346002)(366004)(136003)(376002)(396003)(39860400002)(52536014)(33656002)(6506007)(53546011)(122000001)(71200400001)(9686003)(38100700002)(110136005)(186003)(8676002)(2906002)(316002)(83380400001)(64756008)(66476007)(66446008)(8936002)(76116006)(55016002)(66556008)(478600001)(66946007)(5660300002)(7696005)(26005)(86362001);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata: =?us-ascii?Q?Sbr4NGBxx8HWroTe4NyvWIKUVibOJWMSHTUsz6K468DsuHiAiJge3XFOjjuG?=
 =?us-ascii?Q?EerPF5fPT+03K4UVFD7I4jIih64hoLiSn/rZWMzFVeVX/iCprBD7W29Q/qeh?=
 =?us-ascii?Q?vWDw6tojv4xpMPwOc4GRCf9MK4P+OTVOZikh0SN/2rIe0X9vZI1+0KA66INl?=
 =?us-ascii?Q?WfzktR8AlMe0SQYdkwNW5yB732Zj/vu+Ck+wtbVmdCFgD3WsxXCqKjDgsRmY?=
 =?us-ascii?Q?noEXtswj1gyLMiSKnQfPtnTUrKkz0FdDgHLuXwJZn5Ch/33uXQefj1YW3SVR?=
 =?us-ascii?Q?T40a9Tkp9BimEqK/NwO8FEX3VckdPsD00tIqJ6gwmPF767OtjWLdAxHcPfeD?=
 =?us-ascii?Q?Nfp91U9o5nhCd+4aLQxck76N1KPRVDGi9ThSqL7L2fB8KJZ9R3fkbLlq2zOL?=
 =?us-ascii?Q?2hG3Vm97+HvooZQpV6jMG/3yXKXmWjxyo3u6yqU/gjDsNqk4zg0AHt4rSy6x?=
 =?us-ascii?Q?CStLQJvrV8jNvmsh9Y8E7f4mWBEx7y+tgM/F9rirYLNSlB6iy/6Q5rlxvwjk?=
 =?us-ascii?Q?K8mlTQyR11UelLX+t6Vpar96tpM6nCxmgCfCgoUSCywJjgZ9ll80SmAXLx7H?=
 =?us-ascii?Q?Q/g8kZ85wZopYFepcq47DDmRISaSLSC7pu14ubuPfcw8/2zWg+zEygCQ0M8l?=
 =?us-ascii?Q?GVi05uq4F3gYIULeYsvq2MFmS89f9LlNbxrAtJo1y93uxM/b8m37htYZ5XtK?=
 =?us-ascii?Q?ok/WOvwsrWOk+D2CcxHl2DUMyLoRZkpsQpWbFZ2uwLm6bv40WH1huJr24+AG?=
 =?us-ascii?Q?0ciWdG8wMB/PPr9R7pn6kD3LNq/hhnpKIoPj88zqEkCmnnKEN2WExwfRrsyc?=
 =?us-ascii?Q?ME/oLtUj5mp4U9RALxoHect/jdP/YsgR9KASLiwyQFOAYt0MhV0fGvMAitGx?=
 =?us-ascii?Q?71Dmf6crAuABG22wQEiKHat6DIRpmCaUUi/Z+iCOwyMM09qJipBmPRbrmyJx?=
 =?us-ascii?Q?1yLb0AIy0t6ulu6TS7eCcCES05fi2x/DBLyGew7JR3Qon06fvYFiIZxCMqZ3?=
 =?us-ascii?Q?2fotjExa0inS52OVoEdRvTcXRrwygoSM9nHF5wJUCDf5WWrrn6QMJ5c6SOtp?=
 =?us-ascii?Q?zqvYP5omON43QcJ2lk183PBeT9IQHx+mhdNgfd7xjd8f7By8PRoKmQfY0FDw?=
 =?us-ascii?Q?KUBZjw2+h4ClUPr8wLQKUGbto/MJX+7wtg1qNZFVvVoDdCzYmUeDKPj5HbVu?=
 =?us-ascii?Q?kB4Zw4Mz9rIyu3DIbcWl3wP+gP3ri0hQgEQyhpPY7ly7ikSgdfbnreaToTL0?=
 =?us-ascii?Q?+fDimIZERMpPenk9yjVFFWQmOQTUHtfI8ZpU6VgV9Xllb37MvcKmwV7du/KL?=
 =?us-ascii?Q?a9ep5hH7w+rMnE4ZRPv2PJCa?=
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: SN6PR11MB3421.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 790ecb0b-48fb-4709-18c6-08d919d8dfe1
X-MS-Exchange-CrossTenant-originalarrivaltime: 18 May 2021 08:42:30.8048 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: mdzt0EeLza8Xw8+6P/r+yfnx/bEZC/axGhjnD3c357ETYKFp4eyutFSl/EU9zevAqPZDVZA5Twfa8l2w4Ie/GxE9vteOqLslDfaqXzWn9I3sPrwQnU3m9U6FFnRY3Ro1fjjrINRvaMYm/Dw3ho7phw==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SA2PR11MB5100
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] [PATCH] drm/i915/reg: replace BIT() usage with
 REG_BIT()
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
> From: Nikula, Jani <jani.nikula@intel.com>
> Sent: 18 May 2021 14:04
> To: intel-gfx@lists.freedesktop.org
> Cc: Nikula, Jani <jani.nikula@intel.com>; Surendrakumar Upadhyay,
> TejaskumarX <tejaskumarx.surendrakumar.upadhyay@intel.com>
> Subject: [PATCH] drm/i915/reg: replace BIT() usage with REG_BIT()
> 
> REG_BIT() was provided to specify bits as u32 and have them statically
> checked, while BIT() is unsigned long with no checks. Replace the uses that
> have crept in.
> 
> Cc: Tejas Upadhyay <tejaskumarx.surendrakumar.upadhyay@intel.com>
> Signed-off-by: Jani Nikula <jani.nikula@intel.com>

Reviewed-by: Tejas Upadhyay <tejaskumarx.surendrakumar.upadhyay@intel.com>

> ---
>  drivers/gpu/drm/i915/i915_reg.h | 100 ++++++++++++++++----------------
>  1 file changed, 50 insertions(+), 50 deletions(-)
> 
> diff --git a/drivers/gpu/drm/i915/i915_reg.h
> b/drivers/gpu/drm/i915/i915_reg.h index 089b5a59bed3..06ebe72e569d
> 100644
> --- a/drivers/gpu/drm/i915/i915_reg.h
> +++ b/drivers/gpu/drm/i915/i915_reg.h
> @@ -4078,9 +4078,9 @@ static inline bool i915_mmio_reg_valid(i915_reg_t
> reg)
>   * Logical Context regs
>   */
>  #define CCID(base)			_MMIO((base) + 0x180)
> -#define   CCID_EN			BIT(0)
> -#define   CCID_EXTENDED_STATE_RESTORE	BIT(2)
> -#define   CCID_EXTENDED_STATE_SAVE	BIT(3)
> +#define   CCID_EN			REG_BIT(0)
> +#define   CCID_EXTENDED_STATE_RESTORE	REG_BIT(2)
> +#define   CCID_EXTENDED_STATE_SAVE	REG_BIT(3)
>  /*
>   * Notes on SNB/IVB/VLV context size:
>   * - Power context is saved elsewhere (LLC or stolen) @@ -9037,9 +9037,9
> @@ enum {
>  #define  FORCEWAKE_ACK_MEDIA_VEBOX_GEN11(n)	_MMIO(0x0D70 + (n)
> * 4)
>  #define  FORCEWAKE_ACK_RENDER_GEN9		_MMIO(0x0D84)
>  #define  FORCEWAKE_ACK_GT_GEN9			_MMIO(0x130044)
> -#define   FORCEWAKE_KERNEL			BIT(0)
> -#define   FORCEWAKE_USER			BIT(1)
> -#define   FORCEWAKE_KERNEL_FALLBACK		BIT(15)
> +#define   FORCEWAKE_KERNEL			REG_BIT(0)
> +#define   FORCEWAKE_USER			REG_BIT(1)
> +#define   FORCEWAKE_KERNEL_FALLBACK		REG_BIT(15)
>  #define  FORCEWAKE_MT_ACK			_MMIO(0x130040)
>  #define  ECOBUS					_MMIO(0xa180)
>  #define    FORCEWAKE_MT_ENABLE			(1 << 5)
> @@ -9753,30 +9753,30 @@ enum skl_power_gate {
> 
>  /* HDCP Key Registers */
>  #define HDCP_KEY_CONF			_MMIO(0x66c00)
> -#define  HDCP_AKSV_SEND_TRIGGER		BIT(31)
> -#define  HDCP_CLEAR_KEYS_TRIGGER	BIT(30)
> -#define  HDCP_KEY_LOAD_TRIGGER		BIT(8)
> +#define  HDCP_AKSV_SEND_TRIGGER		REG_BIT(31)
> +#define  HDCP_CLEAR_KEYS_TRIGGER	REG_BIT(30)
> +#define  HDCP_KEY_LOAD_TRIGGER		REG_BIT(8)
>  #define HDCP_KEY_STATUS			_MMIO(0x66c04)
> -#define  HDCP_FUSE_IN_PROGRESS		BIT(7)
> -#define  HDCP_FUSE_ERROR		BIT(6)
> -#define  HDCP_FUSE_DONE			BIT(5)
> -#define  HDCP_KEY_LOAD_STATUS		BIT(1)
> -#define  HDCP_KEY_LOAD_DONE		BIT(0)
> +#define  HDCP_FUSE_IN_PROGRESS		REG_BIT(7)
> +#define  HDCP_FUSE_ERROR		REG_BIT(6)
> +#define  HDCP_FUSE_DONE			REG_BIT(5)
> +#define  HDCP_KEY_LOAD_STATUS		REG_BIT(1)
> +#define  HDCP_KEY_LOAD_DONE		REG_BIT(0)
>  #define HDCP_AKSV_LO			_MMIO(0x66c10)
>  #define HDCP_AKSV_HI			_MMIO(0x66c14)
> 
>  /* HDCP Repeater Registers */
>  #define HDCP_REP_CTL			_MMIO(0x66d00)
> -#define  HDCP_TRANSA_REP_PRESENT	BIT(31)
> -#define  HDCP_TRANSB_REP_PRESENT	BIT(30)
> -#define  HDCP_TRANSC_REP_PRESENT	BIT(29)
> -#define  HDCP_TRANSD_REP_PRESENT	BIT(28)
> -#define  HDCP_DDIB_REP_PRESENT		BIT(30)
> -#define  HDCP_DDIA_REP_PRESENT		BIT(29)
> -#define  HDCP_DDIC_REP_PRESENT		BIT(28)
> -#define  HDCP_DDID_REP_PRESENT		BIT(27)
> -#define  HDCP_DDIF_REP_PRESENT		BIT(26)
> -#define  HDCP_DDIE_REP_PRESENT		BIT(25)
> +#define  HDCP_TRANSA_REP_PRESENT	REG_BIT(31)
> +#define  HDCP_TRANSB_REP_PRESENT	REG_BIT(30)
> +#define  HDCP_TRANSC_REP_PRESENT	REG_BIT(29)
> +#define  HDCP_TRANSD_REP_PRESENT	REG_BIT(28)
> +#define  HDCP_DDIB_REP_PRESENT		REG_BIT(30)
> +#define  HDCP_DDIA_REP_PRESENT		REG_BIT(29)
> +#define  HDCP_DDIC_REP_PRESENT		REG_BIT(28)
> +#define  HDCP_DDID_REP_PRESENT		REG_BIT(27)
> +#define  HDCP_DDIF_REP_PRESENT		REG_BIT(26)
> +#define  HDCP_DDIE_REP_PRESENT		REG_BIT(25)
>  #define  HDCP_TRANSA_SHA1_M0		(1 << 20)
>  #define  HDCP_TRANSB_SHA1_M0		(2 << 20)
>  #define  HDCP_TRANSC_SHA1_M0		(3 << 20)
> @@ -9787,10 +9787,10 @@ enum skl_power_gate {
>  #define  HDCP_DDID_SHA1_M0		(4 << 20)
>  #define  HDCP_DDIF_SHA1_M0		(5 << 20)
>  #define  HDCP_DDIE_SHA1_M0		(6 << 20) /* Bspec says 5? */
> -#define  HDCP_SHA1_BUSY			BIT(16)
> -#define  HDCP_SHA1_READY		BIT(17)
> -#define  HDCP_SHA1_COMPLETE		BIT(18)
> -#define  HDCP_SHA1_V_MATCH		BIT(19)
> +#define  HDCP_SHA1_BUSY			REG_BIT(16)
> +#define  HDCP_SHA1_READY		REG_BIT(17)
> +#define  HDCP_SHA1_COMPLETE		REG_BIT(18)
> +#define  HDCP_SHA1_V_MATCH		REG_BIT(19)
>  #define  HDCP_SHA1_TEXT_32		(1 << 1)
>  #define  HDCP_SHA1_COMPLETE_HASH	(2 << 1)
>  #define  HDCP_SHA1_TEXT_24		(4 << 1)
> @@ -9829,7 +9829,7 @@ enum skl_power_gate {
>  					 TRANS_HDCP_CONF(trans) : \
>  					 PORT_HDCP_CONF(port))
> 
> -#define  HDCP_CONF_CAPTURE_AN		BIT(0)
> +#define  HDCP_CONF_CAPTURE_AN		REG_BIT(0)
>  #define  HDCP_CONF_AUTH_AND_ENC		(BIT(1) | BIT(0))
>  #define PORT_HDCP_ANINIT(port)
> 	_PORT_HDCP_AUTHENC(port, 0x4)
>  #define _TRANSA_HDCP_ANINIT		0x66404
> @@ -9906,16 +9906,16 @@ enum skl_power_gate {
>  					 TRANS_HDCP_STATUS(trans) : \
>  					 PORT_HDCP_STATUS(port))
> 
> -#define  HDCP_STATUS_STREAM_A_ENC	BIT(31)
> -#define  HDCP_STATUS_STREAM_B_ENC	BIT(30)
> -#define  HDCP_STATUS_STREAM_C_ENC	BIT(29)
> -#define  HDCP_STATUS_STREAM_D_ENC	BIT(28)
> -#define  HDCP_STATUS_AUTH		BIT(21)
> -#define  HDCP_STATUS_ENC		BIT(20)
> -#define  HDCP_STATUS_RI_MATCH		BIT(19)
> -#define  HDCP_STATUS_R0_READY		BIT(18)
> -#define  HDCP_STATUS_AN_READY		BIT(17)
> -#define  HDCP_STATUS_CIPHER		BIT(16)
> +#define  HDCP_STATUS_STREAM_A_ENC	REG_BIT(31)
> +#define  HDCP_STATUS_STREAM_B_ENC	REG_BIT(30)
> +#define  HDCP_STATUS_STREAM_C_ENC	REG_BIT(29)
> +#define  HDCP_STATUS_STREAM_D_ENC	REG_BIT(28)
> +#define  HDCP_STATUS_AUTH		REG_BIT(21)
> +#define  HDCP_STATUS_ENC		REG_BIT(20)
> +#define  HDCP_STATUS_RI_MATCH		REG_BIT(19)
> +#define  HDCP_STATUS_R0_READY		REG_BIT(18)
> +#define  HDCP_STATUS_AN_READY		REG_BIT(17)
> +#define  HDCP_STATUS_CIPHER		REG_BIT(16)
>  #define  HDCP_STATUS_FRAME_CNT(x)	(((x) >> 8) & 0xff)
> 
>  /* HDCP2.2 Registers */
> @@ -9938,10 +9938,10 @@ enum skl_power_gate {
>  #define _TRANSB_HDCP2_AUTH		0x66598
>  #define TRANS_HDCP2_AUTH(trans)		_MMIO_TRANS(trans,
> _TRANSA_HDCP2_AUTH, \
>  						    _TRANSB_HDCP2_AUTH)
> -#define   AUTH_LINK_AUTHENTICATED	BIT(31)
> -#define   AUTH_LINK_TYPE		BIT(30)
> -#define   AUTH_FORCE_CLR_INPUTCTR	BIT(19)
> -#define   AUTH_CLR_KEYS			BIT(18)
> +#define   AUTH_LINK_AUTHENTICATED	REG_BIT(31)
> +#define   AUTH_LINK_TYPE		REG_BIT(30)
> +#define   AUTH_FORCE_CLR_INPUTCTR	REG_BIT(19)
> +#define   AUTH_CLR_KEYS			REG_BIT(18)
>  #define HDCP2_AUTH(dev_priv, trans, port) \
>  					(INTEL_GEN(dev_priv) >= 12 ? \
>  					 TRANS_HDCP2_AUTH(trans) : \
> @@ -9952,7 +9952,7 @@ enum skl_power_gate {
>  #define _TRANSB_HDCP2_CTL		0x665B0
>  #define TRANS_HDCP2_CTL(trans)		_MMIO_TRANS(trans,
> _TRANSA_HDCP2_CTL, \
>  						    _TRANSB_HDCP2_CTL)
> -#define   CTL_LINK_ENCRYPTION_REQ	BIT(31)
> +#define   CTL_LINK_ENCRYPTION_REQ	REG_BIT(31)
>  #define HDCP2_CTL(dev_priv, trans, port) \
>  					(INTEL_GEN(dev_priv) >= 12 ? \
>  					 TRANS_HDCP2_CTL(trans) : \
> @@ -9964,9 +9964,9 @@ enum skl_power_gate {
>  #define TRANS_HDCP2_STATUS(trans)	_MMIO_TRANS(trans, \
>  						    _TRANSA_HDCP2_STATUS,
> \
>  						    _TRANSB_HDCP2_STATUS)
> -#define   LINK_TYPE_STATUS		BIT(22)
> -#define   LINK_AUTH_STATUS		BIT(21)
> -#define   LINK_ENCRYPTION_STATUS	BIT(20)
> +#define   LINK_TYPE_STATUS		REG_BIT(22)
> +#define   LINK_AUTH_STATUS		REG_BIT(21)
> +#define   LINK_ENCRYPTION_STATUS	REG_BIT(20)
>  #define HDCP2_STATUS(dev_priv, trans, port) \
>  					(INTEL_GEN(dev_priv) >= 12 ? \
>  					 TRANS_HDCP2_STATUS(trans) : \
> @@ -9987,8 +9987,8 @@ enum skl_power_gate {
>  #define TRANS_HDCP2_STREAM_STATUS(trans)	_MMIO_TRANS(trans,
> \
> 
> _TRANSA_HDCP2_STREAM_STATUS, \
> 
> _TRANSB_HDCP2_STREAM_STATUS)
> -#define   STREAM_ENCRYPTION_STATUS	BIT(31)
> -#define   STREAM_TYPE_STATUS		BIT(30)
> +#define   STREAM_ENCRYPTION_STATUS	REG_BIT(31)
> +#define   STREAM_TYPE_STATUS		REG_BIT(30)
>  #define HDCP2_STREAM_STATUS(dev_priv, trans, port) \
>  					(INTEL_GEN(dev_priv) >= 12 ? \
> 
> TRANS_HDCP2_STREAM_STATUS(trans) : \ @@ -10004,7 +10004,7 @@
> enum skl_power_gate {
>  #define TRANS_HDCP2_AUTH_STREAM(trans)	_MMIO_TRANS(trans, \
> 
> _TRANSA_HDCP2_AUTH_STREAM, \
> 
> _TRANSB_HDCP2_AUTH_STREAM)
> -#define   AUTH_STREAM_TYPE		BIT(31)
> +#define   AUTH_STREAM_TYPE		REG_BIT(31)
>  #define HDCP2_AUTH_STREAM(dev_priv, trans, port) \
>  					(INTEL_GEN(dev_priv) >= 12 ? \
> 
> TRANS_HDCP2_AUTH_STREAM(trans) : \
> --
> 2.20.1

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
