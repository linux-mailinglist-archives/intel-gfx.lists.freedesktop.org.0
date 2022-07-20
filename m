Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id A4E0757AB50
	for <lists+intel-gfx@lfdr.de>; Wed, 20 Jul 2022 03:09:22 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 72BC811A1EA;
	Wed, 20 Jul 2022 01:09:18 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 9C5171124E9
 for <intel-gfx@lists.freedesktop.org>; Wed, 20 Jul 2022 01:09:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1658279356; x=1689815356;
 h=from:to:subject:date:message-id:reply-to:
 content-transfer-encoding:mime-version;
 bh=0Gl5XhMp15F5Wx3v4Tgd0ihmVD5ntzwkLxOHep3Dbqo=;
 b=nwWJsSOhvQYMgahWYJSatYILXuu0ygVBjJ7DdhVJSdnXWNL75OK008aq
 VrhamIp03GWbAs6nwhgG9VRvPnEc0BknP77fmjllPqGNMyMOxhoJAbWfC
 wcQqgLHn+gFXk2KZntonZqjGkW0sTDBjVn6Iydn+csrAM/Bi0E+CtgUXH
 yn4yvcMEEhBpjlTxHu1ax47khB8MbCVdCgi4cKYrluaWyq4S/zxqCOBPR
 5iI89a6qE1pQYgKlEKXn8fHmyWfns80twmI39ImjtTDZbXvmahiB/gS22
 fyWi2yKHrKX4tmrSKqUzV/nkL3q58esg3i8pPx2LvxbDVMGhXidzdVp+9 Q==;
X-IronPort-AV: E=McAfee;i="6400,9594,10413"; a="287394632"
X-IronPort-AV: E=Sophos;i="5.92,285,1650956400"; d="scan'208";a="287394632"
Received: from orsmga002.jf.intel.com ([10.7.209.21])
 by orsmga102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 19 Jul 2022 18:09:16 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.92,285,1650956400"; d="scan'208";a="597883608"
Received: from fmsmsx606.amr.corp.intel.com ([10.18.126.86])
 by orsmga002.jf.intel.com with ESMTP; 19 Jul 2022 18:09:15 -0700
Received: from fmsmsx609.amr.corp.intel.com (10.18.126.89) by
 fmsmsx606.amr.corp.intel.com (10.18.126.86) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2375.28; Tue, 19 Jul 2022 18:09:15 -0700
Received: from fmsmsx605.amr.corp.intel.com (10.18.126.85) by
 fmsmsx609.amr.corp.intel.com (10.18.126.89) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2308.27; Tue, 19 Jul 2022 18:09:15 -0700
Received: from FMSEDG603.ED.cps.intel.com (10.1.192.133) by
 fmsmsx605.amr.corp.intel.com (10.18.126.85) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2375.28 via Frontend Transport; Tue, 19 Jul 2022 18:09:15 -0700
Received: from NAM04-BN8-obe.outbound.protection.outlook.com (104.47.74.43) by
 edgegateway.intel.com (192.55.55.68) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2308.27; Tue, 19 Jul 2022 18:09:14 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=aq8N0foCSaVbqASWZvMwrOwGKUyDS/6AE1vl5Cx2z92qpZvCixY0s9Md79hO6w/q0TngswCU0awV3cAcN7ZlkVJULJEJKO6R90uRQ4lvNoSEBahwyOaNzRu/AdeleQdwtPvq/LT1I0H5Io9D82eW/psUMB+3EVnkDruZN7mG90++Q0dgq6COvAEDymPDk2kGLyR8lhCbeCFOukUHyl2BEbkj4Oi9m0GXI6Utp7yKmZ130Mws2qQVsw3JiJSYmvY1082mtNzWm2aE5soyyi35Qa2iImksns6iIcoKOXYso3767PNj93QhJhZdSCB4BIsqzU3YF5jTnOjQrd5Vp8NK5g==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=W7UMCc60EDNredo6dNYxH2HpSAPPQl66Ot3Li8Q/mwU=;
 b=gnFyE79ziitmvfBffC9wkCCKwqlYKVWO/oiyWOIRsaz41h1pqaRK6FBQtxdmGvYmi6VT+8y7Efq2dnfKSBKOAvcJ+67mIF3O+9sjKzFZklbmRtiMiPnDChU7E66SYWuVn3Ltdw/BjRTr3itRnZ41lA+U2erdwFPRBoEIWUM6mjmQt/U++htzrANfzglIPnMS71OEAvKAfflkLIe+lkc9QdOWXaZOpmzGWzGVIdLkqkSJayl7g2MsIv8Pt8d1pRxiWEBfQAG1KmtBUetC2M+gBrHyz9HSgT8S+2VBRSMbbJJ2crigd8Gq8hYLCD+2qfUL5HFp6Ji87IwtdrmmKOMTsQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from BYAPR11MB2710.namprd11.prod.outlook.com (2603:10b6:a02:c7::24)
 by SA2PR11MB4860.namprd11.prod.outlook.com (2603:10b6:806:11b::10)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.5438.17; Wed, 20 Jul
 2022 01:09:12 +0000
Received: from BYAPR11MB2710.namprd11.prod.outlook.com
 ([fe80::6d55:a3b5:8edf:8488]) by BYAPR11MB2710.namprd11.prod.outlook.com
 ([fe80::6d55:a3b5:8edf:8488%6]) with mapi id 15.20.5438.023; Wed, 20 Jul 2022
 01:09:12 +0000
From: "Lee, Shawn C" <shawn.c.lee@intel.com>
To: "Nikula, Jani" <jani.nikula@intel.com>, "Syrjala, Ville"
 <ville.syrjala@intel.com>, "intel-gfx@lists.freedesktop.org"
 <intel-gfx@lists.freedesktop.org>
Thread-Topic: [v4,1/2] drm/i915/edid: convert DP, HDMI and LVDS to drm_edid
Thread-Index: Adib1R+iPnNYLCXFTN6+oqYiHZ8nLQ==
Date: Wed, 20 Jul 2022 01:09:12 +0000
Message-ID: <BYAPR11MB271074899BB953C863FA4155A38E9@BYAPR11MB2710.namprd11.prod.outlook.com>
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
x-ms-office365-filtering-correlation-id: 4ddce2a8-19bc-45e8-f88d-08da69ec74e9
x-ms-traffictypediagnostic: SA2PR11MB4860:EE_
x-ld-processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: 3xtkwFlQXCyP9wJI5bu8WA8HOqSU1aaN6Chku8Zl6GkVIdfUhi8zQVGuPDhrIR6iISKUGU0ec/iB+l3l0nZZghYhMJuJhA+9KBNOJhmB7363bt1xO0ajqldkzQMArc0h2XEFQOqtRpYeRqbJDhPVMn0jfM/v9oK10oDRsmQubZDBYOFIUvRaospZSztI03iJmvThmngdVAtbmW9z/bWjT+kaVTiu9WTvS1RKzgeqVTAo6mOUM4gUhBXjVSJrmaxAyoJiG7iXMtbgu5L5OXdB/QykXWm9rolKjoWeXkO1rnP5XOnZA2Mc+CHTNEUCdB2vFD0hx7AiIcJUvwmcOWa5SPshh7U09lHcbpg5vgosbK45qluZF6Sm5lj/NzISkt/XWNph2na4dqrkn7UYskW1GLpgqeZbZ2FteXrTwp53NKNrVNQKZ7pWEvL6F4QvKcGTe7D0/OySVPgn2Rjbgp3Fv0Juy15k8L9Su5d+dqAOjyCqwC8DqxiWad9cOGgP2JKzkXxd9u+BX9JxCWxmxRY5DJAKvxxRT2lGzwGCpttbQfbUglGE/n89gHQfnioxrVbct3cS8byZ2kx9kkOPHne9kSIqNT826pUsKYLFz+ucVAdTt8z8ESyKE2BLZQ2cdLZcUKCcHY49ci8OPiOt1eB4VA9NQym96J9XtTSsOc7v6ArdmSzAGW+aDRTvf92d2kJHof4oiMg67MHDiha3/H9VrcH3+F0iM99jhMrZZzPnlXlHW3VUe/8hwhPI5QesyDiTMAc9o6IZWAfBqbGqg0bDWmek7lneSr1UhQ5Bhib5TdalrqCyp3rTKRq/vflZCkDS
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:BYAPR11MB2710.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230016)(136003)(376002)(396003)(346002)(39860400002)(366004)(110136005)(83380400001)(55016003)(66946007)(186003)(66476007)(66556008)(86362001)(30864003)(38070700005)(66446008)(8676002)(76116006)(82960400001)(8936002)(316002)(8796002)(5660300002)(64756008)(7696005)(122000001)(38100700002)(9686003)(66574015)(33656002)(71200400001)(55236004)(26005)(6506007)(52536014)(2906002)(478600001)(41300700001);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?iso-8859-1?Q?bQ+357wes9j2MQ5pknqOqEXaC1CO/EXR8/vqGjjqY/a/GaoIJLknrbFkyD?=
 =?iso-8859-1?Q?F1KGS0usMm57qnz+zVYF2a7GFJ/SZLQZkxP9ylMDHFpVpUEN9W4QR73VKY?=
 =?iso-8859-1?Q?hp142pfKQmYjmNrhWI1zcf0PinqKk4I4IxuQFg711lhhaoQo8bsj6qFSgP?=
 =?iso-8859-1?Q?LfGecdJxNqjkNOsM0Ffo+0yyqXbPCfXVDT9nuWMhlCYSnXLYOlf871v0rL?=
 =?iso-8859-1?Q?98ZS9pJDEUD+IzWuWcw/KHNis2ieeSiFIPUY+/65aTAR0KKNYMzwjP02rN?=
 =?iso-8859-1?Q?6H3PtLzuo+szvHUJUolzRWaiJ90lEsWNjYV4STEOQ1HY1NQS2i6lxwa6xr?=
 =?iso-8859-1?Q?a2RKvk25KB2AZrfqqVHE3Gx1tXXPzcLeRT7V7HDDQYTCe6UD7NfNLdB1G7?=
 =?iso-8859-1?Q?ylvc9Y1cCsl0eZpB5e12290cdMZ1fhMqUcUHX/XDq+R2k+zCrqnBQXnSmD?=
 =?iso-8859-1?Q?g1S94Gmah5lLuU2MGPehh8gUrS0/q+wW+1/84BkmN5ebEsYLzLPJITTGuP?=
 =?iso-8859-1?Q?nvLNM2wwSTchAelp/WNBgvb1W5+O57yxkDPIg2WQouBltSYMvdtVRIG9oP?=
 =?iso-8859-1?Q?MhxHEnJ1pGztqMHF3I36JrKWR1RzCURtIpgpUFJt6/5uZG3nepwX7xe9Ml?=
 =?iso-8859-1?Q?pvejqgldLvEfkJRlipbBnnIQw/tc7BK0LoW7OfycRPpQu3r/Iin6/7vlJM?=
 =?iso-8859-1?Q?nc1UrHxKm577sTF0+l4hXQ8EQVVpsBFCNqbsHTgCNHYoeIE2UpEccNnHZ0?=
 =?iso-8859-1?Q?OmKqY9dzERK7IbgCaDv7YnBmyP1NaVU9UVfiL/qu8MTi2MFTCe+Gryyjgh?=
 =?iso-8859-1?Q?VJ/vUrEKkQH4KffmYwBvBdGRRRy2ems7KmkKkjl4zVN5Y4So7csGau722r?=
 =?iso-8859-1?Q?FGJyEeVZHqiWrknWqcuyLOK+dy3LUGbkD7XyGyDpTcs2r7NdrRvPH+M/mc?=
 =?iso-8859-1?Q?vol1AZ0qsVKSqUmM8hRYxzuIVAkwCavW75w4p3w1ALuyy0p6y02BEyqHRE?=
 =?iso-8859-1?Q?6Zr0xbgv+cu58qaD+S82tqhtPnVpNZrdXaqW4MP9L/Q7l6tke414NQNXp1?=
 =?iso-8859-1?Q?tTfa4ZQrkrrHwT28lLgS9fQEn4Vqw6g0WZ9dRH910rrzj7eAxL+qou2FT3?=
 =?iso-8859-1?Q?QC4WZZP1mVPXRjAgyEpeEnNX/3nK+uIzPhzP+6b4pvxAGQ+Fu78sd8ePLn?=
 =?iso-8859-1?Q?6uCv1AI/50kDDp/bzDJQTQZIfRv1sjU7W32Bz3RXbjJGaqgg6oVckWDgSC?=
 =?iso-8859-1?Q?M5MLJ5BdPYBKDC9SG89qr9iv29E6S1iloEzbthiOeS5wd/CFwVBTaIYE4W?=
 =?iso-8859-1?Q?4HprKaGSls1yW7x/O01dRyDYPY9lWVeE4xa1n2xUODECUrl8eueITCAbuR?=
 =?iso-8859-1?Q?7RmdCOh9+rrgDEVh21hXZjWBO1yyMdB76O7wexXOiuUSyQcCEe39C0iZ6T?=
 =?iso-8859-1?Q?5SSfZMfQnrd1KHsJMJcYom1KpBSrzDt/VCf/hNYPgXLyLLGoWj5bm6ITX2?=
 =?iso-8859-1?Q?C7NUs8SlXG/tcnvM2wf9aUaxMCUdyTlIitqy9d0P6f8cq9o7QiiJjDBRgO?=
 =?iso-8859-1?Q?MPVdME8Kh9vdHMagX6cPk8H2Ag+8ZB4sgcrveoWr/JKSRV9i30GYAOGZ+Z?=
 =?iso-8859-1?Q?Q2FPZBvwq4q+EKKBMF8IQtC3otVcySwkl7?=
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: BYAPR11MB2710.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 4ddce2a8-19bc-45e8-f88d-08da69ec74e9
X-MS-Exchange-CrossTenant-originalarrivaltime: 20 Jul 2022 01:09:12.0722 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: FoOSNW2/E7/5RGQlEqiCC4+0hntB6SAGlZJzZDoDyeazoT/OTNXJ397Cv84DDtEajKtPNPvqzV6/oHzN1N8Rgw==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SA2PR11MB4860
X-OriginatorOrg: intel.com
Subject: [Intel-gfx] [v4, 1/2] drm/i915/edid: convert DP,
 HDMI and LVDS to drm_edid
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
Reply-To: "368510f2fe8ef8651c54b3512eb366da1fcef2b2.1656665533.git.jani.nikula@intel.com"
 <368510f2fe8ef8651c54b3512eb366da1fcef2b2.1656665533.git.jani.nikula@intel.com>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Fri, Jul 01, 2022 at 12:57:38PM +0300, Ville Syrj=E4l=E4 wrote:
>On Fri, Jul 01, 2022 at 11:55:38AM +0300, Jani Nikula wrote:
>> Convert all the connectors that use cached connector edid and
>> detect_edid to drm_edid.
>>=20
>> Since drm_get_edid() calls drm_connector_update_edid_property() while
>> drm_edid_read*() do not, we need to call drm_edid_connector_update()
>> separately, in part due to the EDID caching behaviour in HDMI and
>> DP. Especially DP depends on the details parsed from EDID. (The big
>> behavioural change conflating EDID reading with parsing and property
>> update was done in commit 5186421cbfe2 ("drm: Introduce epoch counter to
>> drm_connector"))
>>=20
>> v4: Call drm_edid_connector_update() after reading HDMI/DP EDID
>>=20
>> v3: Don't leak vga switcheroo EDID in LVDS init (Ville)
>>=20
>> v2: Don't leak opregion fallback EDID (Ville)
>>=20
>> Signed-off-by: Jani Nikula <jani.nikula@intel.com>
>> ---
>>  .../gpu/drm/i915/display/intel_connector.c    |  4 +-
>>  .../drm/i915/display/intel_display_types.h    |  4 +-
>>  drivers/gpu/drm/i915/display/intel_dp.c       | 80 +++++++++++--------
>>  drivers/gpu/drm/i915/display/intel_hdmi.c     | 28 ++++---
>>  drivers/gpu/drm/i915/display/intel_lvds.c     | 37 +++++----
>>  5 files changed, 87 insertions(+), 66 deletions(-)
>>=20
>> diff --git a/drivers/gpu/drm/i915/display/intel_connector.c b/drivers/gp=
u/drm/i915/display/intel_connector.c
>> index 1dcc268927a2..d83b2a64f618 100644
>> --- a/drivers/gpu/drm/i915/display/intel_connector.c
>> +++ b/drivers/gpu/drm/i915/display/intel_connector.c
>> @@ -95,12 +95,12 @@ void intel_connector_destroy(struct drm_connector *c=
onnector)
>>  {
>>  	struct intel_connector *intel_connector =3D to_intel_connector(connect=
or);
>> =20
>> -	kfree(intel_connector->detect_edid);
>> +	drm_edid_free(intel_connector->detect_edid);
>> =20
>>  	intel_hdcp_cleanup(intel_connector);
>> =20
>>  	if (!IS_ERR_OR_NULL(intel_connector->edid))
>> -		kfree(intel_connector->edid);
>> +		drm_edid_free(intel_connector->edid);
>> =20
>>  	intel_panel_fini(intel_connector);
>> =20
>> diff --git a/drivers/gpu/drm/i915/display/intel_display_types.h b/driver=
s/gpu/drm/i915/display/intel_display_types.h
>> index 0da9b208d56e..d476df0ac9df 100644
>> --- a/drivers/gpu/drm/i915/display/intel_display_types.h
>> +++ b/drivers/gpu/drm/i915/display/intel_display_types.h
>> @@ -592,8 +592,8 @@ struct intel_connector {
>>  	struct intel_panel panel;
>> =20
>>  	/* Cached EDID for eDP and LVDS. May hold ERR_PTR for invalid EDID. */
>> -	struct edid *edid;
>> -	struct edid *detect_edid;
>> +	const struct drm_edid *edid;
>> +	const struct drm_edid *detect_edid;
>> =20
>>  	/* Number of times hotplug detection was tried after an HPD interrupt =
*/
>>  	int hotplug_retries;
>> diff --git a/drivers/gpu/drm/i915/display/intel_dp.c b/drivers/gpu/drm/i=
915/display/intel_dp.c
>> index 32292c0be2bd..8a3b2dbebe04 100644
>> --- a/drivers/gpu/drm/i915/display/intel_dp.c
>> +++ b/drivers/gpu/drm/i915/display/intel_dp.c
>> @@ -3577,12 +3577,11 @@ static u8 intel_dp_autotest_edid(struct intel_dp=
 *intel_dp)
>>  				    intel_dp->aux.i2c_defer_count);
>>  		intel_dp->compliance.test_data.edid =3D INTEL_DP_RESOLUTION_FAILSAFE;
>>  	} else {
>> -		struct edid *block =3D intel_connector->detect_edid;
>> +		/* FIXME: Get rid of drm_edid_raw() */
>> +		const struct edid *block =3D drm_edid_raw(intel_connector->detect_edi=
d);
>> =20
>> -		/* We have to write the checksum
>> -		 * of the last block read
>> -		 */
>> -		block +=3D intel_connector->detect_edid->extensions;
>> +		/* We have to write the checksum of the last block read */
>> +		block +=3D block->extensions;
>> =20
>>  		if (drm_dp_dpcd_writeb(&intel_dp->aux, DP_TEST_EDID_CHECKSUM,
>>  				       block->checksum) <=3D 0)
>> @@ -4461,7 +4460,7 @@ bool intel_digital_port_connected(struct intel_enc=
oder *encoder)
>>  	return is_connected;
>>  }
>> =20
>> -static struct edid *
>> +static const struct drm_edid *
>>  intel_dp_get_edid(struct intel_dp *intel_dp)
>>  {
>>  	struct intel_connector *intel_connector =3D intel_dp->attached_connect=
or;
>> @@ -4472,18 +4471,22 @@ intel_dp_get_edid(struct intel_dp *intel_dp)
>>  		if (IS_ERR(intel_connector->edid))
>>  			return NULL;
>> =20
>> -		return drm_edid_duplicate(intel_connector->edid);
>> +		return drm_edid_dup(intel_connector->edid);
>>  	} else
>> -		return drm_get_edid(&intel_connector->base,
>> -				    &intel_dp->aux.ddc);
>> +		return drm_edid_read_ddc(&intel_connector->base,
>> +					 &intel_dp->aux.ddc);
>>  }
>> =20
>>  static void
>>  intel_dp_update_dfp(struct intel_dp *intel_dp,
>> -		    const struct edid *edid)
>> +		    const struct drm_edid *drm_edid)
>>  {
>>  	struct drm_i915_private *i915 =3D dp_to_i915(intel_dp);
>>  	struct intel_connector *connector =3D intel_dp->attached_connector;
>> +	const struct edid *edid;
>> +
>> +	/* FIXME: Get rid of drm_edid_raw() */
>> +	edid =3D drm_edid_raw(drm_edid);
>> =20
>>  	intel_dp->dfp.max_bpc =3D
>>  		drm_dp_downstream_max_bpc(intel_dp->dpcd,
>> @@ -4583,21 +4586,27 @@ intel_dp_set_edid(struct intel_dp *intel_dp)
>>  {
>>  	struct drm_i915_private *i915 =3D dp_to_i915(intel_dp);
>>  	struct intel_connector *connector =3D intel_dp->attached_connector;
>> -	struct edid *edid;
>> +	const struct drm_edid *drm_edid;
>> +	const struct edid *edid;
>>  	bool vrr_capable;
>> =20
>>  	intel_dp_unset_edid(intel_dp);
>> -	edid =3D intel_dp_get_edid(intel_dp);
>> -	connector->detect_edid =3D edid;
>> +	drm_edid =3D intel_dp_get_edid(intel_dp);
>> +	connector->detect_edid =3D drm_edid;
>> +
>> +	/* Below we depend on display info having been updated */
>> +	drm_edid_connector_update(&connector->base, drm_edid);
>
>Hmm. Just the VRR thing needs it for the moment I guess?
>
>Oh, and IIRC there was also a patch to replace
>drm_detect_hdmi_monitor() with display_info floating around
>somewhere. That one might have fallen through the cracks...
>
>Anyways, I think what's going to happen now is we're going to=20
>add all the modes to the probed_modes list twice (first from
>.detect()->set_edid() and a second time from .get_modes()).
>I suppose that's not a huge problem as the duplicates should
>just get discarded by drm_connector_list_update(). But it is
>a bit wasteful.
>
>OTOH using display_info without having it fully populated
>(which only gets done if we do the full mode parsing) is super
>sketchy. So I suppose this is better than the alterntive.
>
>Reviewed-by: Ville Syrj=E4l=E4 <ville.syrjala@linux.intel.com>
>
>> =20
>>  	vrr_capable =3D intel_vrr_is_capable(connector);
>>  	drm_dbg_kms(&i915->drm, "[CONNECTOR:%d:%s] VRR capable: %s\n",
>>  		    connector->base.base.id, connector->base.name, str_yes_no(vrr_cap=
able));
>>  	drm_connector_set_vrr_capable_property(&connector->base, vrr_capable);
>> =20
>> -	intel_dp_update_dfp(intel_dp, edid);
>> +	intel_dp_update_dfp(intel_dp, drm_edid);
>>  	intel_dp_update_420(intel_dp);
>> =20
>> +	/* FIXME: Get rid of drm_edid_raw() */
>> +	edid =3D drm_edid_raw(drm_edid);
>>  	if (edid && edid->input & DRM_EDID_INPUT_DIGITAL) {
>>  		intel_dp->has_hdmi_sink =3D drm_detect_hdmi_monitor(edid);
>>  		intel_dp->has_audio =3D drm_detect_monitor_audio(edid);
>> @@ -4612,7 +4621,7 @@ intel_dp_unset_edid(struct intel_dp *intel_dp)
>>  	struct intel_connector *connector =3D intel_dp->attached_connector;
>> =20
>>  	drm_dp_cec_unset_edid(&intel_dp->aux);
>> -	kfree(connector->detect_edid);
>> +	drm_edid_free(connector->detect_edid);
>>  	connector->detect_edid =3D NULL;
>> =20
>>  	intel_dp->has_hdmi_sink =3D false;
>> @@ -4776,12 +4785,11 @@ intel_dp_force(struct drm_connector *connector)
>>  static int intel_dp_get_modes(struct drm_connector *connector)
>>  {
>>  	struct intel_connector *intel_connector =3D to_intel_connector(connect=
or);
>> -	struct edid *edid;
>> +	const struct drm_edid *drm_edid;
>>  	int num_modes =3D 0;
>> =20
>> -	edid =3D intel_connector->detect_edid;
>> -	if (edid)
>> -		num_modes =3D intel_connector_update_modes(connector, edid);
>> +	drm_edid =3D intel_connector->detect_edid;
>> +	num_modes =3D drm_edid_connector_update(connector, drm_edid);
>> =20
>>  	/* Also add fixed mode, which may or may not be present in EDID */
>>  	if (intel_dp_is_edp(intel_attached_dp(intel_connector)))
>> @@ -4790,7 +4798,7 @@ static int intel_dp_get_modes(struct drm_connector=
 *connector)
>>  	if (num_modes)
>>  		return num_modes;
>> =20
>> -	if (!edid) {
>> +	if (!drm_edid) {
>>  		struct intel_dp *intel_dp =3D intel_attached_dp(intel_connector);
>>  		struct drm_display_mode *mode;
>> =20
>> @@ -5198,7 +5206,7 @@ static bool intel_edp_init_connector(struct intel_=
dp *intel_dp,
>>  	struct intel_encoder *encoder =3D &dp_to_dig_port(intel_dp)->base;
>>  	bool has_dpcd;
>>  	enum pipe pipe =3D INVALID_PIPE;
>> -	struct edid *edid;
>> +	const struct drm_edid *drm_edid;
>> =20
>>  	if (!intel_dp_is_edp(intel_dp))
>>  		return true;
>> @@ -5231,29 +5239,33 @@ static bool intel_edp_init_connector(struct inte=
l_dp *intel_dp,
>>  	}
>> =20
>>  	mutex_lock(&dev->mode_config.mutex);
>> -	edid =3D drm_get_edid(connector, &intel_dp->aux.ddc);
>> -	if (!edid) {
>> +	drm_edid =3D drm_edid_read_ddc(connector, &intel_dp->aux.ddc);
>> +	if (!drm_edid) {
>> +		const struct edid *edid;
>> +
>>  		/* Fallback to EDID from ACPI OpRegion, if any */
>> +		/* FIXME: Make intel_opregion_get_edid() return drm_edid */
>>  		edid =3D intel_opregion_get_edid(intel_connector);
>> -		if (edid)
>> +		if (edid) {
>> +			drm_edid =3D drm_edid_alloc(edid, (edid->extensions + 1) * EDID_LENG=
TH);
>>  			drm_dbg_kms(&dev_priv->drm,
>>  				    "[CONNECTOR:%d:%s] Using OpRegion EDID\n",
>>  				    connector->base.id, connector->name);
>> -	}
>> -	if (edid) {
>> -		if (drm_add_edid_modes(connector, edid)) {
>> -			drm_connector_update_edid_property(connector, edid);
>> -		} else {
>>  			kfree(edid);
>> -			edid =3D ERR_PTR(-EINVAL);
>> +		}
>> +	}
>> +	if (drm_edid) {
>> +		if (!drm_edid_connector_update(connector, drm_edid)) {
>> +			drm_edid_free(drm_edid);
>> +			drm_edid =3D ERR_PTR(-EINVAL);
>>  		}
>>  	} else {
>> -		edid =3D ERR_PTR(-ENOENT);
>> +		drm_edid =3D ERR_PTR(-ENOENT);
>>  	}
>> -	intel_connector->edid =3D edid;
>> +	intel_connector->edid =3D drm_edid;
>> =20
>> -	intel_bios_init_panel(dev_priv, &intel_connector->panel,
>> -			      encoder->devdata, IS_ERR(edid) ? NULL : edid);
>> +	intel_bios_init_panel(dev_priv, &intel_connector->panel, encoder->devd=
ata,
>> +			      IS_ERR_OR_NULL(drm_edid) ? NULL : drm_edid_raw(drm_edid));
>> =20
>>  	intel_panel_add_edid_fixed_modes(intel_connector,
>>  					 intel_connector->panel.vbt.drrs_type !=3D DRRS_TYPE_NONE,
>> diff --git a/drivers/gpu/drm/i915/display/intel_hdmi.c b/drivers/gpu/drm=
/i915/display/intel_hdmi.c
>> index 1ae09431f53a..81f24185e3a0 100644
>> --- a/drivers/gpu/drm/i915/display/intel_hdmi.c
>> +++ b/drivers/gpu/drm/i915/display/intel_hdmi.c
>> @@ -2340,7 +2340,7 @@ intel_hdmi_unset_edid(struct drm_connector *connec=
tor)
>>  	intel_hdmi->dp_dual_mode.type =3D DRM_DP_DUAL_MODE_NONE;
>>  	intel_hdmi->dp_dual_mode.max_tmds_clock =3D 0;
>> =20
>> -	kfree(to_intel_connector(connector)->detect_edid);
>> +	drm_edid_free(to_intel_connector(connector)->detect_edid);
>>  	to_intel_connector(connector)->detect_edid =3D NULL;
>>  }
>> =20
>> @@ -2407,7 +2407,8 @@ intel_hdmi_set_edid(struct drm_connector *connecto=
r)
>>  	struct drm_i915_private *dev_priv =3D to_i915(connector->dev);
>>  	struct intel_hdmi *intel_hdmi =3D intel_attached_hdmi(to_intel_connect=
or(connector));
>>  	intel_wakeref_t wakeref;
>> -	struct edid *edid;
>> +	const struct drm_edid *drm_edid;
>> +	const struct edid *edid;
>>  	bool connected =3D false;
>>  	struct i2c_adapter *i2c;
>> =20
>> @@ -2415,21 +2416,26 @@ intel_hdmi_set_edid(struct drm_connector *connec=
tor)
>> =20
>>  	i2c =3D intel_gmbus_get_adapter(dev_priv, intel_hdmi->ddc_bus);
>> =20
>> -	edid =3D drm_get_edid(connector, i2c);
>> +	drm_edid =3D drm_edid_read_ddc(connector, i2c);
>> =20
>> -	if (!edid && !intel_gmbus_is_forced_bit(i2c)) {
>> +	if (!drm_edid && !intel_gmbus_is_forced_bit(i2c)) {
>>  		drm_dbg_kms(&dev_priv->drm,
>>  			    "HDMI GMBUS EDID read failed, retry using GPIO bit-banging\n");
>>  		intel_gmbus_force_bit(i2c, true);
>> -		edid =3D drm_get_edid(connector, i2c);
>> +		drm_edid =3D drm_edid_read_ddc(connector, i2c);
>>  		intel_gmbus_force_bit(i2c, false);
>>  	}
>> =20
>> -	intel_hdmi_dp_dual_mode_detect(connector, edid !=3D NULL);
>> +	drm_edid_connector_update(connector, drm_edid);
>> +
>> +	intel_hdmi_dp_dual_mode_detect(connector, drm_edid !=3D NULL);
>> =20
>>  	intel_display_power_put(dev_priv, POWER_DOMAIN_GMBUS, wakeref);
>> =20
>> -	to_intel_connector(connector)->detect_edid =3D edid;
>> +	to_intel_connector(connector)->detect_edid =3D drm_edid;
>> +
>> +	/* FIXME: Get rid of drm_edid_raw() */
>> +	edid =3D drm_edid_raw(drm_edid);
>>  	if (edid && edid->input & DRM_EDID_INPUT_DIGITAL) {
>>  		intel_hdmi->has_audio =3D drm_detect_monitor_audio(edid);
>>  		intel_hdmi->has_hdmi_sink =3D drm_detect_hdmi_monitor(edid);
>> @@ -2501,13 +2507,11 @@ intel_hdmi_force(struct drm_connector *connector=
)
>> =20
>>  static int intel_hdmi_get_modes(struct drm_connector *connector)
>>  {
>> -	struct edid *edid;
>> +	const struct drm_edid *drm_edid;
>> =20
>> -	edid =3D to_intel_connector(connector)->detect_edid;
>> -	if (edid =3D=3D NULL)
>> -		return 0;
>> +	drm_edid =3D to_intel_connector(connector)->detect_edid;
>> =20
>> -	return intel_connector_update_modes(connector, edid);
>> +	return drm_edid_connector_update(connector, drm_edid);
>>  }
>> =20
>>  static struct i2c_adapter *
>> diff --git a/drivers/gpu/drm/i915/display/intel_lvds.c b/drivers/gpu/drm=
/i915/display/intel_lvds.c
>> index 730480ac3300..98c07fd3bd3e 100644
>> --- a/drivers/gpu/drm/i915/display/intel_lvds.c
>> +++ b/drivers/gpu/drm/i915/display/intel_lvds.c
>> @@ -479,7 +479,7 @@ static int intel_lvds_get_modes(struct drm_connector=
 *connector)
>> =20
>>  	/* use cached edid if we have one */
>>  	if (!IS_ERR_OR_NULL(intel_connector->edid))
>> -		return drm_add_edid_modes(connector, intel_connector->edid);
>> +		return drm_edid_connector_update(connector, intel_connector->edid);
>> =20
>>  	return intel_panel_get_modes(intel_connector);
>>  }
>> @@ -829,7 +829,7 @@ void intel_lvds_init(struct drm_i915_private *dev_pr=
iv)
>>  	struct intel_connector *intel_connector;
>>  	struct drm_connector *connector;
>>  	struct drm_encoder *encoder;
>> -	struct edid *edid;
>> +	const struct drm_edid *drm_edid;

It will be good to assign NULL pointer to drm_edid.

Best regards,
Shawn

>>  	i915_reg_t lvds_reg;
>>  	u32 lvds;
>>  	u8 pin;
>> @@ -948,27 +948,32 @@ void intel_lvds_init(struct drm_i915_private *dev_=
priv)
>>  	 * preferred mode is the right one.
>>  	 */
>>  	mutex_lock(&dev->mode_config.mutex);
>> -	if (vga_switcheroo_handler_flags() & VGA_SWITCHEROO_CAN_SWITCH_DDC)
>> +	if (vga_switcheroo_handler_flags() & VGA_SWITCHEROO_CAN_SWITCH_DDC) {
>> +		const struct edid *edid;
>> +
>> +		/* FIXME: Make drm_get_edid_switcheroo() return drm_edid */
>>  		edid =3D drm_get_edid_switcheroo(connector,
>> -				    intel_gmbus_get_adapter(dev_priv, pin));
>> -	else
>> -		edid =3D drm_get_edid(connector,
>> -				    intel_gmbus_get_adapter(dev_priv, pin));
>> -	if (edid) {
>> -		if (drm_add_edid_modes(connector, edid)) {
>> -			drm_connector_update_edid_property(connector,
>> -								edid);
>> -		} else {
>> +					       intel_gmbus_get_adapter(dev_priv, pin));
>> +		if (edid) {
>> +			drm_edid =3D drm_edid_alloc(edid, (edid->extensions + 1) * EDID_LENG=
TH);
>>  			kfree(edid);
>> -			edid =3D ERR_PTR(-EINVAL);
>>  		}
>>  	} else {
>> -		edid =3D ERR_PTR(-ENOENT);
>> +		drm_edid =3D drm_edid_read_ddc(connector,
>> +					     intel_gmbus_get_adapter(dev_priv, pin));
>> +	}
>> +	if (drm_edid) {
>> +		if (!drm_edid_connector_update(connector, drm_edid)) {
>> +			drm_edid_free(drm_edid);
>> +			drm_edid =3D ERR_PTR(-EINVAL);
>> +		}
>> +	} else {
>> +		drm_edid =3D ERR_PTR(-ENOENT);
>>  	}
>> -	intel_connector->edid =3D edid;
>> +	intel_connector->edid =3D drm_edid;
>> =20
>>  	intel_bios_init_panel(dev_priv, &intel_connector->panel, NULL,
>> -			      IS_ERR(edid) ? NULL : edid);
>> +			      IS_ERR_OR_NULL(drm_edid) ? NULL : drm_edid_raw(drm_edid));
>> =20
>>  	/* Try EDID first */
>>  	intel_panel_add_edid_fixed_modes(intel_connector,
>> --=20
>> 2.30.2
