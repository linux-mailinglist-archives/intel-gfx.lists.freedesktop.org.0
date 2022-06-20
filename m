Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 9BB8B5512C2
	for <lists+intel-gfx@lfdr.de>; Mon, 20 Jun 2022 10:30:20 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 1ABD210E1B5;
	Mon, 20 Jun 2022 08:30:19 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga05.intel.com (mga05.intel.com [192.55.52.43])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 3A0F010E033
 for <intel-gfx@lists.freedesktop.org>; Mon, 20 Jun 2022 08:30:17 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1655713817; x=1687249817;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:reply-to:content-transfer-encoding: mime-version;
 bh=RaluQTmes+wxWT14rx6JqHhOfnFtUBcvOeQVLA2NvpI=;
 b=OobNlMNeg+kfoyf34ZohxAXRHCCFl7MkVWauyF0CBJpfmlPs2XKfHhDc
 Ga9GadJ4M5AiWmH+rn3C1CATLcTXo/ewtfX33qFR3QPBZSjinvkjFTB3u
 IRIlG7t8E+VbAwyg3Ebg2XHB1WwBCqo0lUrY9MvYlIRLnmYWs2luZ7Tvt
 tVwuflUX2vnjOV7e20tCBSD1hoVxRWKLGlb25Ld4orXYeMfTzMygSGOPD
 Akr86Dojb5vnl9vo7R+SFISIHXAXYqLhyY7EaxJlGrOw9ec4KJNmV5hDL
 /akxY7LnTz+4kC+ieQWqNey3j5svSsH0XCI8SH7vDPsqzFWu5ydIRZUly A==;
X-IronPort-AV: E=McAfee;i="6400,9594,10380"; a="366163326"
X-IronPort-AV: E=Sophos;i="5.92,306,1650956400"; d="scan'208";a="366163326"
Received: from fmsmga007.fm.intel.com ([10.253.24.52])
 by fmsmga105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 20 Jun 2022 01:30:16 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.92,306,1650956400"; d="scan'208";a="591073966"
Received: from fmsmsx604.amr.corp.intel.com ([10.18.126.84])
 by fmsmga007.fm.intel.com with ESMTP; 20 Jun 2022 01:30:16 -0700
Received: from fmsmsx602.amr.corp.intel.com (10.18.126.82) by
 fmsmsx604.amr.corp.intel.com (10.18.126.84) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2308.27; Mon, 20 Jun 2022 01:30:16 -0700
Received: from fmsedg602.ED.cps.intel.com (10.1.192.136) by
 fmsmsx602.amr.corp.intel.com (10.18.126.82) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2308.27 via Frontend Transport; Mon, 20 Jun 2022 01:30:16 -0700
Received: from NAM11-BN8-obe.outbound.protection.outlook.com (104.47.58.168)
 by edgegateway.intel.com (192.55.55.71) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2308.27; Mon, 20 Jun 2022 01:30:16 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=Ww46AUrya3/Ya57xDXXJZ50nbXPRdkAnzcgQvNEOiXxi6NEFarnBzVPpRPkoo8nEJVGJnPwQL4BI/TEaJhIPY7KENeE9zB7lSIJbuZxhI5CJdvkBbsnDiMf+429Mr3iiZE2CnvLBlRROJEDrqtYqBYMvuP5XH7PexwTR0H4qH2Xa7ZdtFOXVN5Tm56B6owOur4WGhHHgXzlgA5A4AVcfZFDgnYkEvaNIKcZPCXA03yTooin95SVJQnuzF3VOhdNAfzk9ICu/lBeN/+QMeMz5guWymLoSJlyK/arTF9HuOcHTI0F95+/JgXw335CsOELL98bdKCBhzKARi7lPCSI4Ig==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=mlhT7QS8EMCTkyKXhmRRUCmtya6DmEoCghojNUmAwNE=;
 b=a9nFTZxPaHYy8KQnBaJik62h0/I89JN6ps8E7hscWzILSn1A35laaAktUE6OXpv0MO4CWXlaoqHW0H1GxJNBYuiYGxrIyEvnRQnrnjmm7YOoSWUAbcX9H6jU7+CIARVHw5FuJ3lQ7ocDzARHcR21spdtSFTuhpQz2pZjmdUeT783MbG7TzaR7KJDHnf7Dk/oWd5V6kIm6KAXt7UroMRCQ2zvGUrdnBNxFg8cVCwYgkVDHjR8ict5q2/OFW1b9izmTo6lgCuDiaxVBMZwzJg0jdQOzN5Q0mJyxgJCrjQvllu407uO3J6WCSPDYk97x7cMmJL/3kpmTdPXHCTG1OEN0w==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from SJ0PR11MB5894.namprd11.prod.outlook.com (2603:10b6:a03:42a::19)
 by DS7PR11MB5990.namprd11.prod.outlook.com (2603:10b6:8:71::5) with
 Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.5353.15; Mon, 20 Jun 2022 08:30:14 +0000
Received: from SJ0PR11MB5894.namprd11.prod.outlook.com
 ([fe80::e417:840c:8c39:3668]) by SJ0PR11MB5894.namprd11.prod.outlook.com
 ([fe80::e417:840c:8c39:3668%7]) with mapi id 15.20.5353.015; Mon, 20 Jun 2022
 08:30:14 +0000
From: "Tseng, William" <william.tseng@intel.com>
To: Jani Nikula <jani.nikula@linux.intel.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
Thread-Topic: [PATCH v4] drm/i915/dsi: add payload receiving code
Thread-Index: AQHYhHtnhJOs5uTtw0WxOdLllr3zca1X8PiAgAACsiA=
Date: Mon, 20 Jun 2022 08:30:14 +0000
Message-ID: <SJ0PR11MB5894F4022DE1476C3BB09BBEF1B09@SJ0PR11MB5894.namprd11.prod.outlook.com>
References: <20220616050348.24683-1-william.tseng@intel.com>
 <20220620075720.23274-1-william.tseng@intel.com> <87zgi7u580.fsf@intel.com>
In-Reply-To: <87zgi7u580.fsf@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
dlp-reaction: no-action
dlp-version: 11.6.500.17
dlp-product: dlpe-windows
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: da01f445-a52e-4d21-a303-08da5297194d
x-ms-traffictypediagnostic: DS7PR11MB5990:EE_
x-ld-processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
x-microsoft-antispam-prvs: <DS7PR11MB599072E79C5338830695890FF1B09@DS7PR11MB5990.namprd11.prod.outlook.com>
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: rUUocE06EbiCAUIbnSllSRH8BIxyizFfJ+4BNIhE+vdUAkhstj4d4UAjwp/P+4dmVeQIv0nSPfrYoyFnMuOVUWqb07klvuZhaunSu89iMwQ87tSiXHx981v3lRrAWmNYkQp81dIOZxqchnsefP6gFGrbsquBD2Siwl4pIgBw2aIhdvJ5XAvVmIuBu0KU2Spi7OW5NmVAYkgow65Re3qrWTK1/SKMfXv1SexWxTdC6asXeptL7sAulbvOS3ja3PMXBgol7lv1CoQVjKtQUJJz6Y8A5Z3iHqEpTeSSwJld2USQSSNRMCL8DrID2nPvMMKR64k84bbVKR3YsmQ7t91N/cuvXDD8g4UvN3xNFMYxQ5fwuE0YK/la3W7W74Uz2aWXabvjLUgBRpzA1Qx4zkN9bIxoFHsBgOz+ts/r3c8+YJ+0hQ1N7KXB64I2tmLS87WQCn7RgxPX7lGF6WkCkxlMUsX9Wzd+VGuJ8qeYi4tYFQc7bXO17g6w1/YD9zMSwL8xsWal4zT+t0FT01Bf7kpeOfQaLZ/RCS32Ae86bsuaMDhKoDVcSWzw+Vs6O/PadA6MnIacsqIjVpmD8TvRAaWyjij8WdFLNoEKtJKti9tG8kOPb9T1efA5SqcVN9ZipJSlL3hsYh1hjHOSDjgA6bEPfP89Do6nrxKIwga6vSiTPRIP3rD9MtuoGnIGj/vYDhpkvqOEmFxL13bi8MUf2rTJRQ==
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:SJ0PR11MB5894.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230016)(136003)(346002)(376002)(396003)(366004)(39860400002)(66946007)(66476007)(55016003)(86362001)(38070700005)(66556008)(38100700002)(6506007)(8676002)(53546011)(71200400001)(64756008)(33656002)(7696005)(52536014)(9686003)(83380400001)(8936002)(186003)(66574015)(4326008)(478600001)(66446008)(26005)(122000001)(41300700001)(8796002)(110136005)(316002)(5660300002)(54906003)(2906002)(82960400001)(76116006);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?iso-8859-1?Q?vK9Iai2ujFZzcWUKAoTuH7MuXTNSUPg5ENCWk3b8kLk1NA4/pmLDvIbqJe?=
 =?iso-8859-1?Q?a98MmQhlYWvulTW0mh0mC754xDMg4E5snFvOYaAbJj8MJQ9XDGZMaQG5aA?=
 =?iso-8859-1?Q?WDYyUnbyeu0wCP3pZr0tUxz3YlJPPGsy2o6TSFDW5c+XyThdRtC1PMvdFC?=
 =?iso-8859-1?Q?YrijEBrfn/983v6fQD6o2vwc+p0t+grq0TxeWwMHMv6N0Gr7IrYwH3+2cr?=
 =?iso-8859-1?Q?G+Zrnf4I/qy9Clzz5ZZA3MKufoKeEsLpwboOZiTDLTgswf8og7EdLgKF/Y?=
 =?iso-8859-1?Q?ehIkT3Zwoinf1CadGk42pC3ZTU38xyWcG36ABOYPJB5OAqZE/R98T6LYEx?=
 =?iso-8859-1?Q?haOC/3F6Y12zKXUXHlLlOn3+Rve5MOxHxxKnuFwnAUr9yd49Ef7UKQUp1e?=
 =?iso-8859-1?Q?wXdwfs0N8zMxLtyie+KR5b+FL/0o6fk4XkK+aZjwFX2iRBs/dUgZUPbx9B?=
 =?iso-8859-1?Q?BG3wFthU2BbofbOH6J7WWarA+bMZ4uRt3Ak5RJDCHllmV4kNwsXzpVqnzG?=
 =?iso-8859-1?Q?ucJYSRjcv4uEMNh1qV31FOK4Vtg0Kg7w9+ElQWQ+/DwteQJcPlSFw6pgRG?=
 =?iso-8859-1?Q?htkHYo6wuOWGp1muvTkuuCMdKVUcdtRH65KIsbOaw3e9p8vKIPQi0VLHrh?=
 =?iso-8859-1?Q?GweRnA42lAU0qcH61M9tmUNKtUqKpVU6WRcevQNcjfR18XW0XLgaK8lVkv?=
 =?iso-8859-1?Q?f6cjOYF/OHXMIDHWbxw1fptbivZAJ2i5etBWm4H+k5rl9vVEl9emg8aLoz?=
 =?iso-8859-1?Q?IOFlxYmeL8FWBHJzDPISOdIrsYYBXjGInrIqdV4VI2BK3VnaKkuAFbPjP0?=
 =?iso-8859-1?Q?SVti5h2NGMOc9sTLbJt/7lQUopqU/eoNtMOEOmSDCIYSu79+Zv9MoXQjyQ?=
 =?iso-8859-1?Q?rbQu7x09gGYhvQrKxXnu28VxQ+zqSlJi9+LaCe1pTPPRoZTKrvzADT172A?=
 =?iso-8859-1?Q?rAuKREfvpC44FdQSvdTNxAPZ84Dx3gUbVEp7/SHoEHKpuQ6nN9HiEduIK+?=
 =?iso-8859-1?Q?aTI+EBT3cJmM2F+ZHaZq/Yr4OM6ZLMHEuRFWH93tP4B/7CQ5u/ezmZbwYF?=
 =?iso-8859-1?Q?E4QC9Ryn+eMV1hTXhnhEIG79mUQhM9LzgbG1/WOpwU1aQ4N7iDR4VDimK7?=
 =?iso-8859-1?Q?Md+u7XKkYV2tQw927uCGFBk1oZBiZeOXp0KvT94S4OVBmr2XzygmsXTZpW?=
 =?iso-8859-1?Q?QiK3g19WeW1G87QSyt25HhrIJBTk/INK89elrK8lRv1WMvwwXwQYxG11CC?=
 =?iso-8859-1?Q?RWeOoUMrTziIlXfrjmiKnai7AOdVGV06s/P2ZIsoVcTNE4KPFhkaTg7nx8?=
 =?iso-8859-1?Q?eDQTSBiyU7/d6FiBfJUwfxB9AUUGBST4MiadKOz98OGcDyjzJTzMvn2+2N?=
 =?iso-8859-1?Q?ZnCORXag8/TLNfibtkFkYIXD9xkj987l7N7jYKMyfUIoDfu1tSGei7tjP5?=
 =?iso-8859-1?Q?+NYi9/X6M4eWXIy78+1NoNzFoKeIfouzunxAF75G15rmDwe28T9mttWZY8?=
 =?iso-8859-1?Q?e9gCtjzlJsx235gJV2WUwzkh4BI1m+EStx9Z0Bv3KnU12RDobJrNBcZ+FB?=
 =?iso-8859-1?Q?Uj4aIQOVgJUZV7MSG9RgiozvbKO5xNorzw+I2kFDCFlpceg+egRW8sFYtp?=
 =?iso-8859-1?Q?Bp/FHZoEQL7AUdn6gN/KV4NaPX6+T6wOrS0EPu8l/shlbFL0bCJdQjrxOf?=
 =?iso-8859-1?Q?7oimjvqnGsaofVM+/hFpHfvXyH8DJW0T1ZzIvYppTQjlcc54FFKWi9v3TR?=
 =?iso-8859-1?Q?bXO/jCZWz6wX78rX20qX8fshvZZS+Zby2FnA0ng+2uOMuTBY5L98a5LmqY?=
 =?iso-8859-1?Q?dcdoUvYZkA=3D=3D?=
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: SJ0PR11MB5894.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: da01f445-a52e-4d21-a303-08da5297194d
X-MS-Exchange-CrossTenant-originalarrivaltime: 20 Jun 2022 08:30:14.3934 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: fTIvWV2D2C1rxQtPjkm3R0H7OVQTK70lzE8WwK0RHIeqJtomO/B9z+Rk8ILIQVD8WJDOFsD3qF/D20CA1qjI2w==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DS7PR11MB5990
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] [PATCH v4] drm/i915/dsi: add payload receiving code
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
Reply-To: "20220620075720.23274-1-william.tseng@intel.com"
 <20220620075720.23274-1-william.tseng@intel.com>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Hi Jani

Thank you for the comment.
I will submit one patch with the change history.


Regards
William

-----Original Message-----
From: Jani Nikula <jani.nikula@linux.intel.com>=20
Sent: Monday, June 20, 2022 4:09 PM
To: Tseng, William <william.tseng@intel.com>; intel-gfx@lists.freedesktop.o=
rg
Cc: Tseng, William <william.tseng@intel.com>; Ville Syrj=E4l=E4 <ville.syrj=
ala@linux.intel.com>; Kulkarni, Vandita <vandita.kulkarni@intel.com>; Lee, =
Shawn C <shawn.c.lee@intel.com>
Subject: Re: [PATCH v4] drm/i915/dsi: add payload receiving code

On Mon, 20 Jun 2022, William Tseng <william.tseng@intel.com> wrote:
> To support Host to read data from Peripheral after a DCS read command=20
> is sent over DSI.

You keep resending this. Are you changing something? If yes, what?
Where's the changelog?

BR,
Jani.


>
> Cc: Jani Nikula <jani.nikula@linux.intel.com>
> Cc: Ville Syrj=E4l=E4 <ville.syrjala@linux.intel.com>
> Cc: Vandita Kulkarni <vandita.kulkarni@intel.com>
> Cc: Lee Shawn C <shawn.c.lee@intel.com>
> Signed-off-by: William Tseng <william.tseng@intel.com>
> ---
>  drivers/gpu/drm/i915/display/icl_dsi.c      | 75 +++++++++++++++++++--
>  drivers/gpu/drm/i915/display/icl_dsi_regs.h | 13 ++++
>  2 files changed, 83 insertions(+), 5 deletions(-)
>
> diff --git a/drivers/gpu/drm/i915/display/icl_dsi.c=20
> b/drivers/gpu/drm/i915/display/icl_dsi.c
> index 19bf717fd4cb..b2aa3c7902f3 100644
> --- a/drivers/gpu/drm/i915/display/icl_dsi.c
> +++ b/drivers/gpu/drm/i915/display/icl_dsi.c
> @@ -201,6 +201,69 @@ static int dsi_send_pkt_hdr(struct intel_dsi_host *h=
ost,
>  	return 0;
>  }
> =20
> +static int dsi_read_pkt_payld(struct intel_dsi_host *host,
> +			      u8 *rx_buf, size_t rx_len)
> +{
> +	struct intel_dsi *intel_dsi =3D host->intel_dsi;
> +	struct drm_i915_private *dev_priv =3D to_i915(intel_dsi->base.base.dev)=
;
> +	enum transcoder dsi_trans =3D dsi_port_to_transcoder(host->port);
> +	u32 tmp, /*hdr_data, */payld_data;
> +	u32 payld_dw;
> +	size_t payld_read;
> +	u8 i;
> +
> +	/* step2: place a BTA reque */
> +	/* check if header credit available */
> +	if (!wait_for_header_credits(dev_priv, dsi_trans, 1)) {
> +		drm_err(&dev_priv->drm, "not ready to recive payload\n");
> +		return -EBUSY;
> +	}
> +
> +	/* place BTA request */
> +	tmp =3D intel_de_read(dev_priv, DSI_LP_MSG(dsi_trans));
> +	tmp |=3D LINK_BTA;
> +	intel_de_write(dev_priv, DSI_LP_MSG(dsi_trans), tmp);
> +
> +	tmp =3D intel_de_read(dev_priv, DSI_LP_MSG(dsi_trans));
> +
> +	/* step2a:  */
> +	/* step2ai: set Turn-Around Timeout */
> +	tmp =3D intel_de_read(dev_priv, DSI_TA_TO(dsi_trans));
> +	tmp &=3D ~TA_TIMEOUT_VALUE_MASK;
> +	tmp |=3D TA_TIMEOUT_VALUE(intel_dsi->turn_arnd_val);
> +	intel_de_write(dev_priv, DSI_TA_TO(dsi_trans), tmp);
> +
> +	tmp =3D intel_de_read(dev_priv, DSI_TA_TO(dsi_trans));
> +
> +	/* step2aii: set maximum allowed time */
> +	tmp =3D intel_de_read(dev_priv, DSI_LPRX_HOST_TO(dsi_trans));
> +	tmp &=3D ~LPRX_TIMEOUT_VALUE_MASK;
> +	tmp |=3D LPRX_TIMEOUT_VALUE(intel_dsi->lp_rx_timeout);
> +	intel_de_write(dev_priv, DSI_LPRX_HOST_TO(dsi_trans), tmp);
> +
> +	tmp =3D intel_de_read(dev_priv, DSI_LPRX_HOST_TO(dsi_trans));
> +
> +	/* step4a: wait and read payload */
> +	if (wait_for_us(((intel_de_read(dev_priv, DSI_CMD_RXCTL(dsi_trans)) &
> +		NUMBER_RX_PLOAD_DW_MASK) >> NUMBER_RX_PLOAD_DW_SHIFT) > 0, 100000)) {
> +		drm_err(&dev_priv->drm, "DSI fails to receive payload\n");
> +		return -EBUSY;
> +	}
> +
> +	tmp =3D intel_de_read(dev_priv, DSI_CMD_RXCTL(dsi_trans));
> +	payld_dw =3D (tmp & NUMBER_RX_PLOAD_DW_MASK) >> NUMBER_RX_PLOAD_DW_SHIF=
T;
> +	payld_read =3D min(rx_len, (size_t)(4 * payld_dw));
> +
> +	for (i =3D 0; i < payld_read; i++) {
> +		if ((i % 4) =3D=3D 0)
> +			payld_data =3D intel_de_read(dev_priv, DSI_CMD_RXPYLD(dsi_trans));
> +
> +		*(rx_buf + i) =3D (payld_data >> (8 * (i % 4))) & 0xff;
> +	}
> +
> +	return (int)payld_read;
> +}
> +
>  void icl_dsi_frame_update(struct intel_crtc_state *crtc_state)  {
>  	struct intel_crtc *crtc =3D to_intel_crtc(crtc_state->uapi.crtc);
> @@ -1078,8 +1141,8 @@ static void gen11_dsi_setup_timeouts(struct intel_e=
ncoder *encoder,
>  	mul =3D 8 * 1000000;
>  	hs_tx_timeout =3D DIV_ROUND_UP(intel_dsi->hs_tx_timeout * mul,
>  				     divisor);
> -	lp_rx_timeout =3D DIV_ROUND_UP(intel_dsi->lp_rx_timeout * mul, divisor)=
;
> -	ta_timeout =3D DIV_ROUND_UP(intel_dsi->turn_arnd_val * mul, divisor);
> +	lp_rx_timeout =3D intel_dsi->lp_rx_timeout;
> +	ta_timeout =3D intel_dsi->turn_arnd_val;
> =20
>  	for_each_dsi_port(port, intel_dsi->ports) {
>  		dsi_trans =3D dsi_port_to_transcoder(port); @@ -1837,9 +1900,11 @@=20
> static ssize_t gen11_dsi_host_transfer(struct mipi_dsi_host *host,
>  	if (ret < 0)
>  		return ret;
> =20
> -	//TODO: add payload receive code if needed
> -
> -	ret =3D sizeof(dsi_pkt.header) + dsi_pkt.payload_length;
> +	/* add payload receive code if needed */
> +	if (msg->rx_buf && msg->rx_len > 0)
> +		ret =3D dsi_read_pkt_payld(intel_dsi_host, msg->rx_buf, msg->rx_len);
> +	else
> +		ret =3D sizeof(dsi_pkt.header) + dsi_pkt.payload_length;
> =20
>  	return ret;
>  }
> diff --git a/drivers/gpu/drm/i915/display/icl_dsi_regs.h=20
> b/drivers/gpu/drm/i915/display/icl_dsi_regs.h
> index f78f28b8dd94..a77a49b42d60 100644
> --- a/drivers/gpu/drm/i915/display/icl_dsi_regs.h
> +++ b/drivers/gpu/drm/i915/display/icl_dsi_regs.h
> @@ -251,6 +251,18 @@
>  #define  NUMBER_RX_PLOAD_DW_MASK	(0xff << 0)
>  #define  NUMBER_RX_PLOAD_DW_SHIFT	0
> =20
> +#define _DSI_CMD_RXHDR_0		0x6b0e0
> +#define _DSI_CMD_RXHDR_1		0x6b8e0
> +#define DSI_CMD_RXHDR(tc)		_MMIO_DSI(tc,	\
> +						  _DSI_CMD_RXHDR_0,\
> +						  _DSI_CMD_RXHDR_1)
> +
> +#define _DSI_CMD_RXPYLD_0		0x6b0e4
> +#define _DSI_CMD_RXPYLD_1		0x6b8e4
> +#define DSI_CMD_RXPYLD(tc)		_MMIO_DSI(tc,	\
> +						  _DSI_CMD_RXPYLD_0,\
> +						  _DSI_CMD_RXPYLD_1)
> +
>  #define _DSI_CMD_TXCTL_0		0x6b0d0
>  #define _DSI_CMD_TXCTL_1		0x6b8d0
>  #define DSI_CMD_TXCTL(tc)		_MMIO_DSI(tc,	\
> @@ -294,6 +306,7 @@
>  #define  LPTX_IN_PROGRESS		(1 << 17)
>  #define  LINK_IN_ULPS			(1 << 16)
>  #define  LINK_ULPS_TYPE_LP11		(1 << 8)
> +#define  LINK_BTA			(1 << 1)
>  #define  LINK_ENTER_ULPS		(1 << 0)
> =20
>  /* DSI timeout registers */

--
Jani Nikula, Intel Open Source Graphics Center
