Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 9F08B798183
	for <lists+intel-gfx@lfdr.de>; Fri,  8 Sep 2023 07:25:16 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id A9AFF10E0A9;
	Fri,  8 Sep 2023 05:25:12 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.55.52.120])
 by gabe.freedesktop.org (Postfix) with ESMTPS id C8DDB10E0A9
 for <intel-gfx@lists.freedesktop.org>; Fri,  8 Sep 2023 05:25:10 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1694150710; x=1725686710;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=uaOZDRdwU/BL5MxSC/JemaqPlS1THA+q6vhEQLyHOkE=;
 b=GLGctHhWzI1at/WwSCxM0ZT28dlCm59479slVdyr46v1MHFgqBlvTiMK
 X5mwYf8REsiyrBY0SNrCD+NZWdxDgyfI7e1+erZhnLzVAquK1RghAT1Zu
 efpcRVZJXCXOsfgxqB8Gy6aULgiEUC30ClAGEIcjETTmqRoX492G+kFBv
 gHKENDYfxnJhHMOTzd1uYHLMPRUtqT/AHY9IIwPC5NkkZDjL4a8nCBrXn
 uZeAi1v1VloGopzMPJfLfrsBYDYEMRHO7PbmXqdK8irMgJoMgh7Y5G53z
 tTywEr27YMc8Bp5oOuroOwgUZmKuXMdIUw0+SswMgSkT4suRycTcVoHCx Q==;
X-IronPort-AV: E=McAfee;i="6600,9927,10826"; a="376473557"
X-IronPort-AV: E=Sophos;i="6.02,236,1688454000"; d="scan'208";a="376473557"
Received: from orsmga001.jf.intel.com ([10.7.209.18])
 by fmsmga104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 07 Sep 2023 22:25:10 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10826"; a="777419091"
X-IronPort-AV: E=Sophos;i="6.02,236,1688454000"; d="scan'208";a="777419091"
Received: from orsmsx603.amr.corp.intel.com ([10.22.229.16])
 by orsmga001.jf.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 07 Sep 2023 22:25:09 -0700
Received: from orsmsx610.amr.corp.intel.com (10.22.229.23) by
 ORSMSX603.amr.corp.intel.com (10.22.229.16) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.32; Thu, 7 Sep 2023 22:25:08 -0700
Received: from orsedg603.ED.cps.intel.com (10.7.248.4) by
 orsmsx610.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.32 via Frontend Transport; Thu, 7 Sep 2023 22:25:08 -0700
Received: from NAM11-DM6-obe.outbound.protection.outlook.com (104.47.57.170)
 by edgegateway.intel.com (134.134.137.100) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.27; Thu, 7 Sep 2023 22:25:08 -0700
Received: from SJ1PR11MB6129.namprd11.prod.outlook.com (2603:10b6:a03:488::12)
 by CY8PR11MB7268.namprd11.prod.outlook.com (2603:10b6:930:9b::9) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6768.30; Fri, 8 Sep
 2023 05:25:05 +0000
Received: from SJ1PR11MB6129.namprd11.prod.outlook.com
 ([fe80::f525:287c:b2c:81c5]) by SJ1PR11MB6129.namprd11.prod.outlook.com
 ([fe80::f525:287c:b2c:81c5%6]) with mapi id 15.20.6768.029; Fri, 8 Sep 2023
 05:25:05 +0000
From: "Borah, Chaitanya Kumar" <chaitanya.kumar.borah@intel.com>
To: "Nikula, Jani" <jani.nikula@intel.com>, "dri-devel@lists.freedesktop.org"
 <dri-devel@lists.freedesktop.org>
Thread-Topic: [Intel-gfx] [PATCH 2/6] drm/eld: replace uint8_t with u8
Thread-Index: AQHZ4W3JsB3Rv2YBxEyVrw5iYV4iNbAQZnhw
Date: Fri, 8 Sep 2023 05:25:05 +0000
Message-ID: <SJ1PR11MB61294BEF388B31C7C3898C58B9EDA@SJ1PR11MB6129.namprd11.prod.outlook.com>
References: <cover.1694078430.git.jani.nikula@intel.com>
 <ac358f6e84d80db208e78e0c7a892d4b30b073a8.1694078430.git.jani.nikula@intel.com>
In-Reply-To: <ac358f6e84d80db208e78e0c7a892d4b30b073a8.1694078430.git.jani.nikula@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: SJ1PR11MB6129:EE_|CY8PR11MB7268:EE_
x-ms-office365-filtering-correlation-id: a512502b-499a-4f26-447e-08dbb02bf580
x-ld-processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: 7gANeuN1SCLjDOKe5zCZta4aJvUz4vnY1DUMX+uJsd3YJo5b3g2ORS3U6wHLYrz52J2Ql2jrxC+n/3ui8NuZR77EHqUfaB2SK8Flzr/aFyZfMZ05bkM3pZPgPrkmV36unxmtqu6q3Ov75tszMypb5Zqg423FAERBmOP1OICCGqTft0jNI5nal8o2/pHt/OEZV1GuX+mF7jiRB9saTSeEcJHHWgV2MatdJ77KlLOhN4vfWuYT7zcTrIW7iarubuG5AbKB6RvGahbkrvR0qFeCOF4k9WmuqLPSEEt425Mw4XU655cJMJhSwTaFxDM3IYP7OGNAuxX57IXk7jsZJ+P+paH7k5c8f4HDWS5PoMCZanGuvahAP2HNwFiaa+MpCaaTbDzFZj5hnmWWzirTxCwhQbjLL1MowHmj/v8+jbGCU0z7/W5ku7pQNL3HoIuzwblE4eK0ZBkXfP5rK95OsN301qUKUVZsZdntHfHTYM9hhp3lhJdrArO8iIiSAnCinUO3UBt0/IdASUwspwXYDQQcdV2W9UZxmSxb19tGDACXHTc3n9eN4rF+IVHdfCE2QZzqc8PwupmejBMPSrGntetxHSO6TQaSjiGEwnPfMwbFblI=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:SJ1PR11MB6129.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230031)(346002)(366004)(39860400002)(396003)(376002)(136003)(186009)(1800799009)(451199024)(53546011)(6506007)(7696005)(41300700001)(316002)(122000001)(2906002)(478600001)(33656002)(86362001)(66946007)(66556008)(66476007)(66446008)(110136005)(64756008)(76116006)(54906003)(38100700002)(38070700005)(82960400001)(71200400001)(55016003)(83380400001)(5660300002)(52536014)(8936002)(8676002)(4326008)(450100002)(26005)(9686003);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?7yBBvzidlBWtlNuTU4CJ8ABRuL/PH66CYwRysHkIPvxwAHdZgGOZWVrdORdh?=
 =?us-ascii?Q?HuxoAfeS3QebtCW0+sJPQ6Qkk6Sefdqtuu/3nqMB8Lrm5TETxX5/3K1VZREz?=
 =?us-ascii?Q?zpfTtmFDO69XYLSujGpimT9BEKV0XCBwbbaR/sBTsSGU2y8CTAefRPFsxRNq?=
 =?us-ascii?Q?NZfrVT9ZV/aC0iOCqD0E+mgO/PT25zq2IwPTMO4Xbq21eRcJH0Net2RyU1mE?=
 =?us-ascii?Q?iUAnmLRIMYx1PK9ePBExD/w7s1QfUZG2tIS11h6pw3GRykvYEOMVh16SiQsH?=
 =?us-ascii?Q?RKptgg+vrBs1Lw1ongRlZDRaUREkIzWi6qRkKLFapy79WMTax9XTbiGZzZBc?=
 =?us-ascii?Q?WiRPp9DSiPF3jx2zd1nxwA2/JeF74GKr6uuQsI0xsuPSCAeUuEw9C1MG1LR1?=
 =?us-ascii?Q?eeDvJWT+VtMrm5ajqz9qArZattBzSBm+NZvqTY02rG8NW7wIAoIUn29NnG7J?=
 =?us-ascii?Q?rCVywMUl/wxjJ/LFCtySKWgEjJw1bTQc8xbVEHksw+Nqp5fe/DwqqkmzRKP7?=
 =?us-ascii?Q?SKs1+aRRN9XuK2N27gslA3XhmySLppDFuZqFkK4WSAuR+QBkeH3y9k3ll7/z?=
 =?us-ascii?Q?iB2XnwW+HzzkmUmLEORYbGaWW9zha9N7euUmPL/V5hhkOvcY28E9Xlp13EOi?=
 =?us-ascii?Q?raazWilzlTgMLWBGeiUiTCHHEdLcxm4+mPNEfBnAl0CsyjgiZ3JRz/C1Mx8F?=
 =?us-ascii?Q?9dVjGJybQ8beXun1sYe5US5pAxjxBMnUgmnXDWMHhNiSp5CLqKi3u0Kum4UD?=
 =?us-ascii?Q?HYLbsuCUsXnSok+2QbxAc99jwE+CfZqBfbqq1MthQHWbiJDUr0YGMig4DsJ5?=
 =?us-ascii?Q?SKVPrSjyVKzVw79/GH1bvOKs87/JQy0klEPQri8AkFLkyG07MX0mene4kydA?=
 =?us-ascii?Q?mFejyj3ZicGHy5U3oOck8lWlpcThAeD/L5dv2ESIWyNsUUBL41DS0hNK+mqg?=
 =?us-ascii?Q?VueOBr37cL0+kHYFHmhU6IuTGe/+Vg1Ju1RReZS6TnecrnukNaBF8e5SpfDi?=
 =?us-ascii?Q?amxq19h2E6pBo/cAvVB4/xLAoMiy+oVOyn3SxZAMB7nNONvCpMo03o6zESMJ?=
 =?us-ascii?Q?PpsxVs+zOy6OLjet0EOK6PKZyR2tohwdhqGoYJjEgi4irUBZ7c+MFEKbUPvE?=
 =?us-ascii?Q?EVk/QKK604Vzro4mgI2bZURaJ3Z4XaCbvzzmtsQhH1rXwjisK9jvIlT5NH9+?=
 =?us-ascii?Q?q8ofPJu1d0jwzpQ6UCMDcBX46hUJg4EpuHso4kre2ZFEGKc+hjEiIHLIGXhw?=
 =?us-ascii?Q?bcTuICaqbBraf0gVk+5XQbb3ThPF1btgi2kduMZJLF0DtgeyxzJ+AOeOV13e?=
 =?us-ascii?Q?GltgFgZ102aakBFhtBTErLseRTdUctczET31blxvxMjQ2FbMnbccb9EldbFx?=
 =?us-ascii?Q?t239VIlkflPk74GaKc6AjGlCgb32gF4AoIZ1gduwOT/ESPLOIjyqk8maND87?=
 =?us-ascii?Q?pL2Hw2S+bEJSZK+aNtzrw87jqQSKaILDtHL/p8LlluCD13YJ1aylKelL8nPr?=
 =?us-ascii?Q?Qq7zgriOjLOx3QCA0nIzPhz9Ln6oDMNwgs43mk+ZHAfs6sp0/KQ7qzQPgB2m?=
 =?us-ascii?Q?roAnc51LzwFGLpy+K7F9AkfkYDx+6VsWVx5iqcjnz8VFa39aE2nwheVlAslM?=
 =?us-ascii?Q?jQ=3D=3D?=
arc-seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=Scl1EAiuaP/Wd0fIBaMMOJml6+ryVDc99MHw0Tccd81/4hwSQJ08VLIEp/vWEQmeYMc3vvUrB0sJkD84/y3KJWdtwiQ7uTlArt0MUpjdSWTfC3BgjIbxqImtHGrnpTQV0BK106txJPyhnJZWZbmy+ZKHXgrzMXla5gUfBCYIrKc5b+VUGDSK7/m3G8MaI9O2hutyIDvgWHsASl0QPn1xd4VJilhcydQOel/JBEdCLEceIQHxlXPvyHToav8R4cPsVcbO0MQ56DDRXhh8e6ySkZB1idDJNNbTpHrdgTDfVXoCuPmfw7hNadR3Ui5uDf+UMviVzh7qFKLFwESqvq1Ahg==
arc-message-signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=8Siwd66OHy5mVioVuC6loLn7cjb9OlR9d7CkTtUosTU=;
 b=OfZp/yectTbi8NzRuAuIgmktjvXuLW/f1X3uhtbyZVl9eZRcevYTdCekDZ3CqTyKGoEnVJBt9anO1roCSFk8A7ADeT99OMvDA0S4YyAIeAI3n5grWxRGI5uVkFAki+guXfqxkE+cdtq3incYe6iit06ZPNoJJZz/S0BUn0+nonceYdVxtiBoUkjO3jx4Da2Ci+8rmKk4yE15EkFujD37bc+lZ3bzKrxbtnUuEfrCPITJG8CtEtHJhNVasx0tj8iEcUETWxYuX2eUuFhwZB8TgC/Ata05CcWL28KQiTe39v3IGpDPTLxfoNDlU++xGy8nDbESaiIu3ipVnJfwrYJmNA==
arc-authentication-results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
x-ms-exchange-crosstenant-authas: Internal
x-ms-exchange-crosstenant-authsource: SJ1PR11MB6129.namprd11.prod.outlook.com
x-ms-exchange-crosstenant-network-message-id: a512502b-499a-4f26-447e-08dbb02bf580
x-ms-exchange-crosstenant-originalarrivaltime: 08 Sep 2023 05:25:05.1740 (UTC)
x-ms-exchange-crosstenant-fromentityheader: Hosted
x-ms-exchange-crosstenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
x-ms-exchange-crosstenant-mailboxtype: HOSTED
x-ms-exchange-crosstenant-userprincipalname: RcaX9iI/2nmVSiaNMPEMEX+M2fWqO2pKolDVM9ouHFfTDHXnEnEnnNAZWWOwpfZWL3dzE7pXQI/WrueeNoVRX1YcnpyDBgRwwsMN68NW9+k=
x-ms-exchange-transport-crosstenantheadersstamped: CY8PR11MB7268
x-originatororg: intel.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
Subject: Re: [Intel-gfx] [PATCH 2/6] drm/eld: replace uint8_t with u8
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
Cc: "Nikula, Jani" <jani.nikula@intel.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>



> -----Original Message-----
> From: Intel-gfx <intel-gfx-bounces@lists.freedesktop.org> On Behalf Of Ja=
ni
> Nikula
> Sent: Thursday, September 7, 2023 2:58 PM
> To: dri-devel@lists.freedesktop.org
> Cc: Nikula, Jani <jani.nikula@intel.com>; intel-gfx@lists.freedesktop.org
> Subject: [Intel-gfx] [PATCH 2/6] drm/eld: replace uint8_t with u8
>
> Unify on kernel types.
>
> Cc: Mitul Golani <mitulkumar.ajitkumar.golani@intel.com>
> Signed-off-by: Jani Nikula <jani.nikula@intel.com>

LGTM

Reviewed-by: Chaitanya Kumar Borah <chaitanya.kumar.borah@intel.com>

> ---
>  include/drm/drm_eld.h | 14 +++++++-------
>  1 file changed, 7 insertions(+), 7 deletions(-)
>
> diff --git a/include/drm/drm_eld.h b/include/drm/drm_eld.h index
> 9bde89bd96ea..7b674256b9aa 100644
> --- a/include/drm/drm_eld.h
> +++ b/include/drm/drm_eld.h
> @@ -70,7 +70,7 @@
>   * drm_eld_mnl - Get ELD monitor name length in bytes.
>   * @eld: pointer to an eld memory structure with mnl set
>   */
> -static inline int drm_eld_mnl(const uint8_t *eld)
> +static inline int drm_eld_mnl(const u8 *eld)
>  {
>       return (eld[DRM_ELD_CEA_EDID_VER_MNL] &
> DRM_ELD_MNL_MASK) >> DRM_ELD_MNL_SHIFT;  } @@ -79,7 +79,7 @@
> static inline int drm_eld_mnl(const uint8_t *eld)
>   * drm_eld_sad - Get ELD SAD structures.
>   * @eld: pointer to an eld memory structure with sad_count set
>   */
> -static inline const uint8_t *drm_eld_sad(const uint8_t *eld)
> +static inline const u8 *drm_eld_sad(const u8 *eld)
>  {
>       unsigned int ver, mnl;
>
> @@ -98,7 +98,7 @@ static inline const uint8_t *drm_eld_sad(const uint8_t
> *eld)
>   * drm_eld_sad_count - Get ELD SAD count.
>   * @eld: pointer to an eld memory structure with sad_count set
>   */
> -static inline int drm_eld_sad_count(const uint8_t *eld)
> +static inline int drm_eld_sad_count(const u8 *eld)
>  {
>       return (eld[DRM_ELD_SAD_COUNT_CONN_TYPE] &
> DRM_ELD_SAD_COUNT_MASK) >>
>               DRM_ELD_SAD_COUNT_SHIFT;
> @@ -111,7 +111,7 @@ static inline int drm_eld_sad_count(const uint8_t *el=
d)
>   * This is a helper for determining the payload size of the baseline blo=
ck, in
>   * bytes, for e.g. setting the Baseline_ELD_Len field in the ELD header =
block.
>   */
> -static inline int drm_eld_calc_baseline_block_size(const uint8_t *eld)
> +static inline int drm_eld_calc_baseline_block_size(const u8 *eld)
>  {
>       return DRM_ELD_MONITOR_NAME_STRING -
> DRM_ELD_HEADER_BLOCK_SIZE +
>               drm_eld_mnl(eld) + drm_eld_sad_count(eld) * 3; @@ -127,7
> +127,7 @@ static inline int drm_eld_calc_baseline_block_size(const uint8_=
t
> *eld)
>   *
>   * The returned value is guaranteed to be a multiple of 4.
>   */
> -static inline int drm_eld_size(const uint8_t *eld)
> +static inline int drm_eld_size(const u8 *eld)
>  {
>       return DRM_ELD_HEADER_BLOCK_SIZE +
> eld[DRM_ELD_BASELINE_ELD_LEN] * 4;  } @@ -139,7 +139,7 @@ static inline
> int drm_eld_size(const uint8_t *eld)
>   * The returned value is the speakers mask. User has to use
> %DRM_ELD_SPEAKER
>   * field definitions to identify speakers.
>   */
> -static inline u8 drm_eld_get_spk_alloc(const uint8_t *eld)
> +static inline u8 drm_eld_get_spk_alloc(const u8 *eld)
>  {
>       return eld[DRM_ELD_SPEAKER] & DRM_ELD_SPEAKER_MASK;  } @@ -
> 151,7 +151,7 @@ static inline u8 drm_eld_get_spk_alloc(const uint8_t *eld=
)
>   * The caller need to use %DRM_ELD_CONN_TYPE_HDMI or
> %DRM_ELD_CONN_TYPE_DP to
>   * identify the display type connected.
>   */
> -static inline u8 drm_eld_get_conn_type(const uint8_t *eld)
> +static inline u8 drm_eld_get_conn_type(const u8 *eld)
>  {
>       return eld[DRM_ELD_SAD_COUNT_CONN_TYPE] &
> DRM_ELD_CONN_TYPE_MASK;  }
> --
> 2.39.2

