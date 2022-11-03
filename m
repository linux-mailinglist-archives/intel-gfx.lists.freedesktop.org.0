Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 7777C617B73
	for <lists+intel-gfx@lfdr.de>; Thu,  3 Nov 2022 12:23:46 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 55D9610E27B;
	Thu,  3 Nov 2022 11:23:42 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga07.intel.com (mga07.intel.com [134.134.136.100])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 04E3410E27B
 for <intel-gfx@lists.freedesktop.org>; Thu,  3 Nov 2022 11:23:39 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1667474620; x=1699010620;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:reply-to:content-transfer-encoding: mime-version;
 bh=57dZUYxKYFfFI4bZnr8yku9sV1243rLdSnXdLC7KmZI=;
 b=UoQDhqnQogvEJgV7ZqLbY6hASLLdyVmxBp5XKZP1KloCbt32Zkk1+F+r
 tevUyRiKkg/IHcxqlxs+Ne5u8hKbUYK7D/3jkh8CDBE7vvzFFqg1GgSkV
 Thdr2sJPP4UoKfEH9BhEazYTttPIrN9c7Pzn1JW8EJP3EvODqT5sCqKDQ
 2S8N7ZApI+BPuxzhwf/ccm+AaOr2RRan+afiph1eEnTNLLSuRjx2B+Ul6
 G7VeT9lCE8WDgZngmR4SVUl/gFLQIK2R3I24iILkVkx5kBxfFXhz6GN/V
 lzG3O2YLBBhro+TXImVVZVAY+LijI0vdr4ecI3mLYcUQNKtgfA9uxtW2G Q==;
X-IronPort-AV: E=McAfee;i="6500,9779,10519"; a="373885538"
X-IronPort-AV: E=Sophos;i="5.95,235,1661842800"; d="scan'208";a="373885538"
Received: from orsmga006.jf.intel.com ([10.7.209.51])
 by orsmga105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 03 Nov 2022 04:23:39 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10519"; a="612613852"
X-IronPort-AV: E=Sophos;i="5.95,235,1661842800"; d="scan'208";a="612613852"
Received: from fmsmsx602.amr.corp.intel.com ([10.18.126.82])
 by orsmga006.jf.intel.com with ESMTP; 03 Nov 2022 04:23:37 -0700
Received: from fmsmsx611.amr.corp.intel.com (10.18.126.91) by
 fmsmsx602.amr.corp.intel.com (10.18.126.82) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2375.31; Thu, 3 Nov 2022 04:23:37 -0700
Received: from fmsmsx610.amr.corp.intel.com (10.18.126.90) by
 fmsmsx611.amr.corp.intel.com (10.18.126.91) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2375.31; Thu, 3 Nov 2022 04:23:36 -0700
Received: from fmsedg601.ED.cps.intel.com (10.1.192.135) by
 fmsmsx610.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2375.31 via Frontend Transport; Thu, 3 Nov 2022 04:23:36 -0700
Received: from NAM12-BN8-obe.outbound.protection.outlook.com (104.47.55.170)
 by edgegateway.intel.com (192.55.55.70) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2375.31; Thu, 3 Nov 2022 04:23:36 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=f70sg2Q4oZAs6DtcillQPaMfwpYeokg5cUWqDtPpYQWKB1sALFb6IOs9TyUzZUj6Cn2BmgrJvGzJnmq4adq/Og9KlVTtyYUzK/kz2DZb11rt7JsiB7z7cTm2ZImoDG3JgL3VqSv+GTLIh3shUoAPBO0uTQWwrnefaoR9YYb5pC01uKhCyxA56pCN1gwm/Nje0mrQBFdCjuKJZciGW409O+RU2f0cddZcEqOhrTPY/1bic1yfjkmD35aCDjXBFz194Y/fFmWL2czUMRWYWwJbJkiJ6BR52r5re6hdFBI1l23rIasTgTveZrR8b4+kd7A+7cIyLr14u2SAAX+BeuMWcw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=gP8IjbeamGpI4n8ay3/0msE0U0786sdm/4g0r7TCD9U=;
 b=kirrfT4TIetwkGsk+iXWE9+yW0iJ/iYHXp+ZfIo8bXiAyEO31CdRmytSauZ45mT07IyOwPM+qrYZa//cr4ZY04WVkW0WQiHqdEkLtzTN2lcvmBfxFBNvzslWQFuapWMhVzvK5hfPIltj+LoG6GR9oxdmMOyiFg5YOukv+LLo+E1C3xzoQt7rGle4XnT8onfCM1hdcDj60t7wpwkja2bZAwYZxK5S3NAOjo+3NXJSlDZcuKKjJXX3UJ9XA4J9fx2uVhjnKqpvztKhk14V7GxOYtMo4gs1jbBqiicG6pDiphLBlrBUttcN4M300UYqGvQMabwFCUmrGfqtfUuRtFbWPA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from BYAPR11MB2710.namprd11.prod.outlook.com (2603:10b6:a02:c7::24)
 by DS7PR11MB6127.namprd11.prod.outlook.com (2603:10b6:8:9d::15) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.5769.16; Thu, 3 Nov
 2022 11:23:32 +0000
Received: from BYAPR11MB2710.namprd11.prod.outlook.com
 ([fe80::1640:90e1:d157:ebda]) by BYAPR11MB2710.namprd11.prod.outlook.com
 ([fe80::1640:90e1:d157:ebda%7]) with mapi id 15.20.5769.021; Thu, 3 Nov 2022
 11:23:32 +0000
From: "Lee, Shawn C" <shawn.c.lee@intel.com>
To: Jani Nikula <jani.nikula@linux.intel.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
Thread-Topic: [v3] drm/i915/pps: improve eDP power on flow
Thread-Index: AQHY7xz6EjzA/ffDwEawIuLdqHSBKq4tCKGAgAAE0EA=
Date: Thu, 3 Nov 2022 11:23:32 +0000
Message-ID: <BYAPR11MB2710C74EC10711A56EAEB6C4A3389@BYAPR11MB2710.namprd11.prod.outlook.com>
References: <20221024064004.1879-1-shawn.c.lee@intel.com>
 <20221103004006.24904-1-shawn.c.lee@intel.com> <87sfj0b8wa.fsf@intel.com>
In-Reply-To: <87sfj0b8wa.fsf@intel.com>
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
x-ms-traffictypediagnostic: BYAPR11MB2710:EE_|DS7PR11MB6127:EE_
x-ms-office365-filtering-correlation-id: 119ceda2-4f1d-47c2-e5c3-08dabd8dd74b
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: 5fI6k1pTOCTlhaZ6pCb9OyJhrIL0xiQzHquICqsyXcVW3//wjv2fT6JvEBtCfwrc8vOnKS/1Z0fNffACYS2+hMKGQZJvgWGDqEDHrrHKaag93bE9/vPxuLgb/KfKfso87OdsfhBKLIegUE0RQlTEnv+gJ7Myd6LaGlHxgCOf/V2ZGgFPwtbKbQRH0qa13qtSNov1Zks+0PZJxVJuHxdzX1c9wv7YuIGiHP7jPo0hDJDkDbQBLB5Kmnv4bG2ik+9hv5ggfkpJINn/mGlg7lZOeBWTkVOvChXmQd//e0VX7t03fgylg/qGF9hnEpgk8Cj6RDX/Y9KiB2eh5UWsdQg7jQjHP9gFa8/SkIPXKEEbqWp1uMQCIvlPQVLdUWKmLGUTAU10nvQV/lHPN7wMsqIr+Hvwc8Xmxl42EDpS8gaCx1uXcU3ACf0kzGH/0nZghPynudnMnQVRsmywVnBDsyITiEyQ2Ba/n4GW4Ml31Ldz7RCZOzRwa+eyfZ/rXp7m4EkQpd7M+CgqWl6Zg9wOq14txq8kriNz4I/M8RK2/a8edHHaohzetEgYHqD0ec1elGG2MbWiehKgML3Ls3BSKOS46ERLpHU7TJJIgTXVQatIstkyp31QIC+Iyl6PwZPrF5EFbRzALg34c6zAi8uVl2bVGr6ZNFaf5lwEfPJplZI69vY+w9zCmEjdkkc/Qkp/y4N4cIzYD7VKxISlfqYeh35dFQ==
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:BYAPR11MB2710.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230022)(346002)(376002)(396003)(136003)(366004)(39860400002)(451199015)(186003)(966005)(2906002)(66574015)(83380400001)(66446008)(66556008)(64756008)(7696005)(6506007)(478600001)(5660300002)(4326008)(66476007)(66946007)(8676002)(76116006)(55236004)(53546011)(38100700002)(71200400001)(86362001)(82960400001)(122000001)(8936002)(52536014)(8796002)(9686003)(316002)(54906003)(110136005)(55016003)(41300700001)(33656002)(38070700005)(26005);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?iso-8859-1?Q?wNIlxw2pdIioES/bZwunX64ddvtWr+cpiqFy1deHrQPDEYMOG0PAptuUXw?=
 =?iso-8859-1?Q?2xcBcds7TFGdOEvWnJ+QQ65u5ms0tlWTrutTHNYTqy93YBiSP3reCWBtTN?=
 =?iso-8859-1?Q?COaWQ8nsL9cdu7EixnrsHUO7d3f1PF0SQK0PmW5zdk/fglNkuEfn7VC42T?=
 =?iso-8859-1?Q?EnbtMtSmUEIxCwfTisaVIUIMzUxUz5fGT6Ks6jsxlT5ThwsP0iEZRSk+BY?=
 =?iso-8859-1?Q?RoDceLZfT5ZDsnahzKHXDzdIF4Eb4JTNPQmC8gK5/kur1MKZ1WKVK4HptJ?=
 =?iso-8859-1?Q?id4BkY8jj7NS4KCqrV9d5Acbv6nlnprkCfh9tH+x6Y4BD0llC6pG5+czZt?=
 =?iso-8859-1?Q?9MslGPtr3oo6CPxdk8dAKGfW+z18FA3K87q27t+SL4T+21Wq4qvG6iJxtF?=
 =?iso-8859-1?Q?AjZpuM+dYUzq3pX7sUhTPYJEpk7MCu/QL+XLMoglLgt0MFYZUZZo2gLybR?=
 =?iso-8859-1?Q?M3nsbaryv4ss1iiDXo4wWgT7/R9PDuAg+binBRy2+w0nPBUwErLu9iQIb8?=
 =?iso-8859-1?Q?ah/0xMfWosyp/cHV+Bfu3sfGZy7L0FCnXd4rUV7fNC/WVF+U4/Jim88ghQ?=
 =?iso-8859-1?Q?OEh03q6Z6Ah0eqUPxeg/O9e27rQwtDFcpHtwJi7edYpJ/qLx0f+BkIqKg/?=
 =?iso-8859-1?Q?chfCriXBa8S6NVAMY4GxkVoxWJLMDTw8Jg9GXt8nNP1FDTb7GKdnPLzxe4?=
 =?iso-8859-1?Q?b6ircklwj4H4KmIs0YmzonxBUn7QqUMZU5LRPFoPVdDc5SsIregW3RCDyh?=
 =?iso-8859-1?Q?LIM+lacxEl9/e5jAJbubF8uV922NnN/HDbbwlcOiA9IdhjAAiSO+y0gNJX?=
 =?iso-8859-1?Q?PUFSJooQmIcmVjSGFnopWKbpuoaZDNUIEy81dNiNfkcAO72x28We7e9xVL?=
 =?iso-8859-1?Q?jGAOS4FAkDm5bQDptAhBu+uKmYFO/8CPiCSilWOK2VA7n8j/vkUewxNdIL?=
 =?iso-8859-1?Q?KmIz42pMOZlJTQfes65/pef16jfFO3KFlIS0Z4t/N122C0gZtVrUVSBy9c?=
 =?iso-8859-1?Q?SPkNASgOG+j4e7BK2p9S5WPssI46QiikactTY2ZmujZ8DahmGwFsKbr+ZE?=
 =?iso-8859-1?Q?QapkNx143rHyBle571L/Wu7kGPSInm9Zus9ft7cl/MCWUWFv8gP9zh/hWt?=
 =?iso-8859-1?Q?gWmePeBR4ybwPr+beHSrEUH44+eHCYr186wLJuYswi++E5uXIiI9FYbekO?=
 =?iso-8859-1?Q?0zccF+UGdrPv00ta9oiURYOh3Lcp7O7KY40iFzGGr4gvA/c84pO/4ktFgE?=
 =?iso-8859-1?Q?fZaLk0a2/uKJBjZ+YOhKLk17CMDVBf0xRdERtA5aVkv+/2UJzSLY6LGFGj?=
 =?iso-8859-1?Q?DG0LSjXmjPuhEQjqcONUovnVKKT8beJnqCGEjkGFXBaEd0cvKFQAESLYNM?=
 =?iso-8859-1?Q?LJAXGTerAFpYRKQJU98PP2rfPv8OjPtVXO+Iqe8KOnIu/8rU5peAor0CXy?=
 =?iso-8859-1?Q?0gqV5lQCp5VuPb9azb/t22/vOGWguwoG/G8OgWrGQwPOBcWsXB4U2W30/e?=
 =?iso-8859-1?Q?X9OkO8ut3LI8TINknnNyxHNeGgIwiZ8j+jAvyGGw5imXR8LTHfmfRlJQv7?=
 =?iso-8859-1?Q?/M9YNgFuWKOKzSwHyjD0lIBmbKU8nkNBiAbMrx92ItmE2Dm5jEuU4669Hy?=
 =?iso-8859-1?Q?i1UN+RQSfZDnsCSnMS+LcNrLvdzlBE7nJE?=
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: BYAPR11MB2710.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 119ceda2-4f1d-47c2-e5c3-08dabd8dd74b
X-MS-Exchange-CrossTenant-originalarrivaltime: 03 Nov 2022 11:23:32.5991 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: vCgDoqLTYIMEkfHS7+PbNuoyfRGztJDVUyog1nlJVc8oU6VZ4yrADy/qNK9nr93uUYxma6iyh4r5hW93N7jPJw==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DS7PR11MB6127
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] [v3] drm/i915/pps: improve eDP power on flow
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
Reply-To: "20221103004006.24904-1-shawn.c.lee@intel.com"
 <20221103004006.24904-1-shawn.c.lee@intel.com>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Thursday, November 3, 2022 7:00 PM, Jani Nikula <jani.nikula@linux.intel=
.com> wrote:
>On Thu, 03 Nov 2022, Lee Shawn C <shawn.c.lee@intel.com> wrote:
>> After i915 dirver initialized, a panel power off cycle delay always=20
>> append before turn eDP on. If eDP display did not power on before.=20
>> With this change, power off duration might longer than power cycle=20
>> delay. So driver can save power cycle delay to speed up driver=20
>> initialization time.
>>
>> v2: fix commit messages
>> v3: refine panel_power_off_time default value and modify
>>     commit messages
>>
>> Cc: Shankar Uma <uma.shankar@intel.com>
>> Cc: Jani Nikula <jani.nikula@linux.intel.com>
>> Cc: Ville Syrj=E4l=E4 <ville.syrjala@linux.intel.com>
>> Signed-off-by: Lee Shawn C <shawn.c.lee@intel.com>
>> ---
>>  drivers/gpu/drm/i915/display/intel_pps.c | 2 +-
>>  1 file changed, 1 insertion(+), 1 deletion(-)
>>
>> diff --git a/drivers/gpu/drm/i915/display/intel_pps.c=20
>> b/drivers/gpu/drm/i915/display/intel_pps.c
>> index 21944f5bf3a8..a394bb1c92d0 100644
>> --- a/drivers/gpu/drm/i915/display/intel_pps.c
>> +++ b/drivers/gpu/drm/i915/display/intel_pps.c
>> @@ -1098,7 +1098,7 @@ bool intel_pps_have_panel_power_or_vdd(struct=20
>> intel_dp *intel_dp)
>> =20
>>  static void pps_init_timestamps(struct intel_dp *intel_dp)  {
>> -	intel_dp->pps.panel_power_off_time =3D ktime_get_boottime();
>> +	intel_dp->pps.panel_power_off_time =3D 0;
>
>So this is just copy-paste from [1] where we discuss the problems with thi=
s approach, specifically module reload ignoring the power off time.
>Why would you post this without even mentioning the problem?
>

OK, we will stop commit any patch until we have proper solution. Could you =
please share your opinion about next step? Thanks!

Best regards,
Shawn

>
>BR,
>Jani.
>
>
>[1] https://gitlab.freedesktop.org/drm/intel/-/issues/7417#note_1619118
>
>>  	intel_dp->pps.last_power_on =3D jiffies;
>>  	intel_dp->pps.last_backlight_off =3D jiffies;  }
>
>--
>Jani Nikula, Intel Open Source Graphics Center
