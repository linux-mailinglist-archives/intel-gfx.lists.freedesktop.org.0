Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 851A0403A5E
	for <lists+intel-gfx@lfdr.de>; Wed,  8 Sep 2021 15:11:51 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 792206E1AA;
	Wed,  8 Sep 2021 13:11:48 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga07.intel.com (mga07.intel.com [134.134.136.100])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 23F5B6E1AA
 for <intel-gfx@lists.freedesktop.org>; Wed,  8 Sep 2021 13:11:47 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6200,9189,10100"; a="284184892"
X-IronPort-AV: E=Sophos;i="5.85,278,1624345200"; d="scan'208";a="284184892"
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
 by orsmga105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 Sep 2021 06:11:46 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.85,278,1624345200"; d="scan'208";a="547817876"
Received: from fmsmsx601.amr.corp.intel.com ([10.18.126.81])
 by fmsmga002.fm.intel.com with ESMTP; 08 Sep 2021 06:11:45 -0700
Received: from fmsmsx609.amr.corp.intel.com (10.18.126.89) by
 fmsmsx601.amr.corp.intel.com (10.18.126.81) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2242.12; Wed, 8 Sep 2021 06:11:45 -0700
Received: from fmsmsx610.amr.corp.intel.com (10.18.126.90) by
 fmsmsx609.amr.corp.intel.com (10.18.126.89) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2242.12; Wed, 8 Sep 2021 06:11:44 -0700
Received: from fmsedg602.ED.cps.intel.com (10.1.192.136) by
 fmsmsx610.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2242.12 via Frontend Transport; Wed, 8 Sep 2021 06:11:44 -0700
Received: from NAM04-MW2-obe.outbound.protection.outlook.com (104.47.73.173)
 by edgegateway.intel.com (192.55.55.71) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2242.12; Wed, 8 Sep 2021 06:11:43 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=NEM179/W70zgRmkXJEow6ZD75QQxNs80XlL/yPFfqS/S2XGUbqkK5zTZ1k/XeLux4XS5C67WTW8vjOB4S6YykvimYsUvYHGIP8Qsp0WoMFAfOC9RXdutpNpA4jcQB5REKaVXTxRPQDJwJAbnpf1zioNUETxFB27RM1PxLiiGqevP9xaEuZrr5yCdBxSnVl1twz5FMYmR6JM1LgH9DlqnsLt+vPL1FEqQMyqL3YHSDVHYdaIEyuh0dQ2Hbg6Yumg5a+4x82lrNtGoMiU/s0jF8rE3Mhw662wbu9h48uMDutz705AjFEQ0ziuDpFjMzBRCVAFb2wv7L7ggP2CRvOfiEw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version; 
 bh=NFxW++UWHBEVTCYc8R2KvNzxeoI9HSNzEyhGbTrC/ig=;
 b=MUjwKjL9GNaaAMORPsaCfw/jnxwMJ4NL3LdS6dL1A1iHmfAEaV3Ua0bjgXABtFFD9cuGzMpYPb6AHI84L0QO2UQl7Rb9Gk/KSoQYxtPcSvdiRGe3Hx9PKttpIjjJ1viVHXwKQV4CfXyKWxjZA9TxWdU+5Y54qYONLm5seLhKK8n+v+U7GR7Ye1emE/mBPS8GafwO8LJRBZFnFZB0LV6IEIFqyP7kn8r8GRSFhoGpxxVNrYaKZZIjoEQzLhKjgYFGxkCPBU8wrnXEA2+8ugWkpdgFsbrmX5+5keAk98wPlzE2wSSQu3RiPZcDpXdjfCcs/wnn0ggD+peOGUMJNqZ8Vg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=intel.onmicrosoft.com; 
 s=selector2-intel-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=NFxW++UWHBEVTCYc8R2KvNzxeoI9HSNzEyhGbTrC/ig=;
 b=Jqv/k4nDkzledjKzKYQisjM6agzcPd5P7ngvRpaC5zzTsqOXK8MhBKuWdRoDww9OAdszEIN1LPQ6ScdSVtryMCc9S5JkzymeHpaiZVmax9gDYJq8ELxueGyrfizo3SB3slEUuzDR70gXWpdyKrmwFgw9Z14h9XlRMo89Yak5oSc=
Received: from CO6PR11MB5651.namprd11.prod.outlook.com (2603:10b6:5:356::20)
 by CO6PR11MB5633.namprd11.prod.outlook.com (2603:10b6:303:13c::16) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.4500.15; Wed, 8 Sep
 2021 13:11:38 +0000
Received: from CO6PR11MB5651.namprd11.prod.outlook.com
 ([fe80::d92:b64a:8b59:cf4a]) by CO6PR11MB5651.namprd11.prod.outlook.com
 ([fe80::d92:b64a:8b59:cf4a%9]) with mapi id 15.20.4500.016; Wed, 8 Sep 2021
 13:11:38 +0000
From: "Lee, Shawn C" <shawn.c.lee@intel.com>
To: "Nikula, Jani" <jani.nikula@intel.com>, "intel-gfx@lists.freedesktop.org"
 <intel-gfx@lists.freedesktop.org>
CC: "ville.syrjala@linux.intel.com" <ville.syrjala@linux.intel.com>,
 "Kulkarni, Vandita" <vandita.kulkarni@intel.com>, "Chiou, Cooper"
 <cooper.chiou@intel.com>, "Tseng, William" <william.tseng@intel.com>
Thread-Topic: [v4 0/5] DSI driver improvement
Thread-Index: AQHXpKwOzxgTVFm4SUaKx/p8ESIU5auaG+5A
Date: Wed, 8 Sep 2021 13:11:38 +0000
Message-ID: <CO6PR11MB565118CF686E455D794FF196A3D49@CO6PR11MB5651.namprd11.prod.outlook.com>
References: <20210908115607.9633-1-shawn.c.lee@intel.com>
 <87ilzb45s9.fsf@intel.com>
In-Reply-To: <87ilzb45s9.fsf@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
dlp-reaction: no-action
dlp-version: 11.5.1.3
dlp-product: dlpe-windows
authentication-results: intel.com; dkim=none (message not signed)
 header.d=none;intel.com; dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 926f2555-3373-4d3a-49ee-08d972ca3131
x-ms-traffictypediagnostic: CO6PR11MB5633:
x-ld-processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <CO6PR11MB56332603B8489F16F21B3053A3D49@CO6PR11MB5633.namprd11.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:1186;
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: 0rpEu9kuCgu9P8n32oRX4JuDHBxY52t1rLIhEla+//DKK2E670W8HbZHLj+NrAJ3r+H9CxBwviUnvAc2vj8qBz5zQvBtZH7518yAbUHCzbgTd+TaHw7Hxfm66M1lkEDbSAfwXbgNFlp9eYaM7qdvZhH3pGrSKkTKrCQsKTfuyTV5bVDr+rQ2oJFGqJA8Xij54WYGu3CKsi+BUQEdCqqVkfwd9GTHZ+fhmtZNpuiRB4XiCjmm/1NQNMfndCRnaTHM8FyRjS0COapu/bF/0MIexzKG/UoPo/mL0rIFPMtDP5b99ToPN+bH90ZSAoIGuQXSeDVglqMABW6EdkoDYFgycjDxjpT1cyWwwABJ7xra4oB6Y1uC4FBHQ3LOfFbxwRZem/EsuKYRY97tyvwBqwcjJivlh0VEPbmkGuoYctcvfui3LKgBxi/aEJqDAA3u4RGEBQYlA20Olz+ec6tdXtyUhA6KvZedTN2x3Al1P9GUsxM1zOtYu9pPD7mRpY9fQhecHxtSG0dQHQcHE5YiFWJn5E7TeBGqqB4jE1NDqmnrzzC+XML567n5HOSzT4NW51+2/Ek6YVxjT5uCemSoKpn1ULdTCyfBPcf5FBdXROn/ogUmmLL0HskRkt7UkXC+b9vxC57dZ7n9fWUDrmLzuyS0J+0kdAckMvqLVSHmtHSQhMPcArqeXlLsldbs64vntceJ+RpLwzH8kIn5d7/3E6QydQ==
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:CO6PR11MB5651.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(4636009)(366004)(38070700005)(52536014)(26005)(186003)(83380400001)(71200400001)(5660300002)(33656002)(9686003)(8936002)(55016002)(316002)(8676002)(66556008)(66946007)(4326008)(38100700002)(64756008)(66476007)(66446008)(7696005)(2906002)(6506007)(122000001)(55236004)(54906003)(86362001)(110136005)(508600001)(76116006);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?y/mb0IyBd3EAPQKCAteqjJnGNSxA1v6EAMJvjcGA8p7g4syFtkwf8VmeaABQ?=
 =?us-ascii?Q?C3aCyS8ZOMtUgB/db0Ug7V0Et+EKcfUM8HdahbCQdU3+3033u7hgNh7NKzPt?=
 =?us-ascii?Q?vc6juMnDmQ93mkDUfnvvVmKjY5NEPQMwuCM7QC31SnaAKWLG40xynqcaPw8X?=
 =?us-ascii?Q?iBHHp3B6uYr9H6Z/HkicJezd3U5xyDB9Ex6eXPIzpikeZl1GbCpZISdJE+rC?=
 =?us-ascii?Q?1tHOqxm1kOC3KgMGkH3afUFMIHDM3GrajryHP6PSUOIyDz4fsxYQ3GPTawqd?=
 =?us-ascii?Q?XpEy1ebfR1gxHbEfTeK84kytcpuL8vPDiSU4TmOoYDDL6nJFjSnPd/mcg6Ef?=
 =?us-ascii?Q?bo0b3OR/sSel8oXxEIBY1naVjSHw6Oi71t5w3pXhOpbjk4gOZAF8X+VuCZji?=
 =?us-ascii?Q?60uJxm9L6bQ8uXpj7Hb1qW/Efhmbu9DKs1VY/2SuIK1DSkexH10NuGqU87Ai?=
 =?us-ascii?Q?qN4bktvDYs8fyOCcuIUTotZ0QIxaEYUF4eeV9HExYgt8e33cSfBuWZC2SUxe?=
 =?us-ascii?Q?0VotleEiYiww/kucMOIotLziBlK7K+RnYrWD+dDU1rjRSsKy9qZA7DmSp8zX?=
 =?us-ascii?Q?b4iUWhrRnI3XgqISiWfzt1oBCpeuJmWOLW9L1tGbF160z/Kfek5dVpSOGjVZ?=
 =?us-ascii?Q?3tnD5PX+DS8F19FR6YGA8X+v8qI5BLZgMsxPm3tDJY8JyM3LNzXkMn/HsxqD?=
 =?us-ascii?Q?zPQI9q5EsjyjvnKKqfWiW0yJrcIjrZeZxv16P6tBTS6tmyRSTUav4/HdLNqN?=
 =?us-ascii?Q?yavU5dIoMTC5xfdTb3JoE5tLtdjw4Lst2tArbyo4azWN0sJNFfE4OShFIiKF?=
 =?us-ascii?Q?nWgZ4kNVTpXl6HfercP58EWzWwUKTUd/eqUXqF0/zOKqB2h+Qe88fw9a23SB?=
 =?us-ascii?Q?Cimdqfr7FULAJkGDJNI1zUGk/dMkTuH8+HoxJkJL++8inGm13AsIB3ZrtnMR?=
 =?us-ascii?Q?+WWUQfFK9gLva8evP1izSw2X5RYbTZzRp7pHu25JmN8UQsGutEuWTMmazb3v?=
 =?us-ascii?Q?GdbQA72HGEEgCB2fE6bKTYaYUfr8wQ0aooY+tNm2fw8CtEQyZrVkdowp9SSe?=
 =?us-ascii?Q?FDXZrI4qs24eN+U7ktdq9dYGwwvVMLC/KqYPNVoex8TwnEeNpWAREdT94C+4?=
 =?us-ascii?Q?D2GD/45v+lKkhsJX5bdGsMhUpdEV9+RC8r92t8WZ5EJCUWSUgYU9pl7gBpKx?=
 =?us-ascii?Q?6j10Sm/HpyzBlTtaLBC7yb+RQNpW33rtwNQvR5lKUt/mY0q9mlkALNh/hQSP?=
 =?us-ascii?Q?dMSMwQvlx8Sjra8VZLyuZqlspTxFNZBEfT9zKQO4u/taOrXA1WnscnjRs8T0?=
 =?us-ascii?Q?8vxboyUKmqk8VQoEdkq9ro+x?=
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: CO6PR11MB5651.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 926f2555-3373-4d3a-49ee-08d972ca3131
X-MS-Exchange-CrossTenant-originalarrivaltime: 08 Sep 2021 13:11:38.2525 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: bx9fam8bORgFRSQbgQWVrG+ZQZD36CuJW6RZS/HB6YhrF4ojHy+iIrD4a/QzOeQ36p9DPZnVLq2094oI8s37pg==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CO6PR11MB5633
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] [v4 0/5] DSI driver improvement
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

On Wed, 08 Sep 2021, Jani Nikula <jani.nikula@intel.com> wrote:
>On Wed, 08 Sep 2021, Lee Shawn C <shawn.c.lee@intel.com> wrote:
>> v2: Get data length of brightness value more easily while driver try to
>>     read/write MIPI_DCS_DISPLAY_BRIGHTNESS command.
>> v3: fix checkpatch warning.
>
>The series is v4, what's new here?
>
>BR,
>Jani.
>

We don't change anything, just rebase.

Best regards,
Shawn

>
>>
>> Signed-off-by: Lee Shawn C <shawn.c.lee@intel.com>
>>
>> Lee Shawn C (5):
>>   drm/i915/dsi: wait for header and payload credit available
>>   drm/i915/dsi: refine send MIPI DCS command sequence
>>   drm/i915: Get proper min cdclk if vDSC enabled
>>   drm/i915/dsi: Retrieve max brightness level from VBT
>>   drm/i915/dsi: Read/write proper brightness value via MIPI DCS command
>>
>>  drivers/gpu/drm/i915/display/icl_dsi.c        | 50 +++++++++----------
>>  drivers/gpu/drm/i915/display/intel_bios.c     |  3 ++
>>  drivers/gpu/drm/i915/display/intel_cdclk.c    | 10 ++++
>>  .../i915/display/intel_dsi_dcs_backlight.c    | 33 ++++++++----
>>  drivers/gpu/drm/i915/i915_drv.h               |  1 +
>>  5 files changed, 62 insertions(+), 35 deletions(-)
>
>--=20
>Jani Nikula, Intel Open Source Graphics Center
>
