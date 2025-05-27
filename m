Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 97645AC4A92
	for <lists+intel-gfx@lfdr.de>; Tue, 27 May 2025 10:47:33 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id EE5FE10E3DA;
	Tue, 27 May 2025 08:47:31 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="bcutjQAR";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.18])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 104A810E3DA
 for <intel-gfx@lists.freedesktop.org>; Tue, 27 May 2025 08:47:29 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1748335649; x=1779871649;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:reply-to:content-transfer-encoding: mime-version;
 bh=PPHH0C+fbvnV396LxM08iJXdV+DsEsRUViTJ4cauRs8=;
 b=bcutjQARgOKcaJtZeuZDz0cQloxLlcNsj7O6tZGgIcEW/E1QiMuuWcmL
 k7ozzWumDAddLshNyNOuhNj0Dg5b0vBnRizUvL2c8/s56yq9tqY+Z8GQX
 gySz2jtsBy6NYRd5PVcGo+Yv+5BtjnczfSTDbiISKS4ZXqW9RUkCmTR6K
 rYzz0oI0wRDsOYAhHGL0pa5aY1qXjLr+mUZ5AZKqmzwa/Xp+E4GS2UOeh
 R3wyTqIZPpKMOga7eod+Ei3QKlKzDSbyummnaMafGIkffjPvGjlUOyk0F
 3QJPv57yK9YAR94E5wlYKvpxJ+jkwPbPA598mqC/hrz0PDD4cS7pkEsvN A==;
X-CSE-ConnectionGUID: l9S3bO7fTuSkWhyp1ZriCA==
X-CSE-MsgGUID: nTdDNvKoRmqeec0FrW/pUA==
X-IronPort-AV: E=McAfee;i="6700,10204,11445"; a="49568421"
X-IronPort-AV: E=Sophos;i="6.15,317,1739865600"; d="scan'208";a="49568421"
Received: from fmviesa006.fm.intel.com ([10.60.135.146])
 by fmvoesa112.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 27 May 2025 01:47:26 -0700
X-CSE-ConnectionGUID: KyMZquvrRdWIyyYTSzhGDQ==
X-CSE-MsgGUID: cWnoI29wS1OYL9sfbAbw1A==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.15,317,1739865600"; d="scan'208";a="142576933"
Received: from orsmsx903.amr.corp.intel.com ([10.22.229.25])
 by fmviesa006.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 27 May 2025 01:47:25 -0700
Received: from ORSMSX902.amr.corp.intel.com (10.22.229.24) by
 ORSMSX903.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1544.25; Tue, 27 May 2025 01:47:25 -0700
Received: from orsedg603.ED.cps.intel.com (10.7.248.4) by
 ORSMSX902.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1544.25 via Frontend Transport; Tue, 27 May 2025 01:47:25 -0700
Received: from NAM04-BN8-obe.outbound.protection.outlook.com (40.107.100.72)
 by edgegateway.intel.com (134.134.137.100) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.55; Tue, 27 May 2025 01:47:25 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=pzHn/JSpUDRaErH4QKOw0Lt6tp1FOE0d/HzTKgvTmijSB4dEDpKZQjOF6A9ycoXxYBZ52PaV3KV8JiSWn8eWgjozBdU7llZl3W/70fgxFDMOP1pUO1MtxtBeHyNrWC8kT3BOg2WAtYYAbyZca9ETgOgXYr5ANe3qLO+XMoIPboU5Li5DNGcVof2MbNLA3eZ2YknVC4S0LDrhVTnYryksVm2nWvsPud000UCpr8YWOGgCv5hTydqfvKRti/OEUjIJ35JxeVmpIWX9DrawLIZepFyJCGWf8hODpyyCKN7NWil/HzAxqD7Dq0WxLXNNgfG2iDuNF3ar1bGDJ0E4GmvPJQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=KYn4cwuuqcdw9W80La6AZUVDZCIxSHGSkgNJt7TviWU=;
 b=vkofa4c7u2NAiGoDAkEKLi3L/c8RoDjzSRFOfzx6vfkwH8NVegC4L2dsDfsR60Wvkz3V9UMurlgUai9Tl6gDVrd8l5Gwz+638D8JHMFvio+GK3k0dfKk8LwvTY5VM/TwE2puojQZjHihspfqKC+QFCDPJZ27wuC+4oeyxPJwe0zFuCDH1XkczBA4angj7UD48rUS51BdTis0NsyQdK3JELyoMKL4AEMCm63OZokkSVhQ79eVQaNS+udGqEnKB2a84IBSDvxgTqIqhoKqdhP4ncGzIyEs2QsFn6WltxpIPr/XQ+SJmZBdWg49xCiMnzYbco2tdiKQYFRnxmVWhrxUfQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from DS0PR11MB7578.namprd11.prod.outlook.com (2603:10b6:8:141::16)
 by DM4PR11MB6093.namprd11.prod.outlook.com (2603:10b6:8:b0::22) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8769.24; Tue, 27 May
 2025 08:46:42 +0000
Received: from DS0PR11MB7578.namprd11.prod.outlook.com
 ([fe80::ba7:2682:35a5:945c]) by DS0PR11MB7578.namprd11.prod.outlook.com
 ([fe80::ba7:2682:35a5:945c%4]) with mapi id 15.20.8769.025; Tue, 27 May 2025
 08:46:42 +0000
From: "Lee, Shawn C" <shawn.c.lee@intel.com>
To: Jani Nikula <jani.nikula@linux.intel.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
CC: "Shankar, Uma" <uma.shankar@intel.com>, =?iso-8859-1?Q?Ville_Syrj=E4l=E4?=
 <ville.syrjala@linux.intel.com>
Subject: RE: [PATCH] drm/i915/dp: Enable DSC on external DP display if VBT
 allows
Thread-Topic: [PATCH] drm/i915/dp: Enable DSC on external DP display if VBT
 allows
Thread-Index: AQHbzt1Y9aSlHuwEZEWFLrs0707sRbPmItCAgAABdAA=
Date: Tue, 27 May 2025 08:46:42 +0000
Message-ID: <DS0PR11MB7578B85883255DF9C1D32EE5A364A@DS0PR11MB7578.namprd11.prod.outlook.com>
References: <20250527075906.65542-1-shawn.c.lee@intel.com>
 <3ece87d79ad1414be4777d3b252e8e8b74f8cb96@intel.com>
In-Reply-To: <3ece87d79ad1414be4777d3b252e8e8b74f8cb96@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: DS0PR11MB7578:EE_|DM4PR11MB6093:EE_
x-ms-office365-filtering-correlation-id: ca70b594-4351-4415-251e-08dd9cfb00e1
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0; ARA:13230040|376014|366016|1800799024|38070700018;
x-microsoft-antispam-message-info: =?iso-8859-1?Q?7+fNdOI7K/JjWHAzmuICvfhJCWNdSP/7y8Pkt4GTiyotUOJA8Y3drv4pA9?=
 =?iso-8859-1?Q?ot2xyXRW3bS4Mf+5U3TcVzGJeUJdgVnTKbRurItvpFB5WTnB9Q4o6VH8Iz?=
 =?iso-8859-1?Q?k6aKDXU5VTXpdCyYsDJDTf12d9ObatuK5qIKDSCLwQro+Fmqn8xFdQ3qUp?=
 =?iso-8859-1?Q?w3/0BkY8WWe8Ia6zuEPn6+SmivZj2iOMzwG4t83g3UPEoSd082j0t10o1s?=
 =?iso-8859-1?Q?pkwdjyhx8ebFLcqoK7C1nPBm2vl/Bvv6eeuxY7CQByDcO5V5musWwPY3gN?=
 =?iso-8859-1?Q?0Z6y/dFaK7R2eVNADoDBN+OBtx+c/dCEPpe/u4UHq2Njt8NJhnk5a6mZNI?=
 =?iso-8859-1?Q?uXnO5ZkxU0hy/qBLSTY2n2MjjFT6vSPvfQSg2w1LBol9pJasWcd7aK6fDU?=
 =?iso-8859-1?Q?1ZYQmUTNAOhRqGWnNiGbUzlk8STds9ZT3CrfG1HZlOqVUOdx0jf7d4RLMq?=
 =?iso-8859-1?Q?/NKo2U12L3Na0Yrzrmts3FHnNCPjPnGptdeoaxpLZt0vMW1KFRFAD6+7WJ?=
 =?iso-8859-1?Q?2MKVrUxhURyhAmzXrToYypbDNoPS0sjjzvZL08S5XPFAldo+tvGTO9GkUW?=
 =?iso-8859-1?Q?upblD3MBkjP5WexIbUP3rcx6hGSIO5OfQCQZgGA+pAgEF7VNCOuHWMlZ7r?=
 =?iso-8859-1?Q?1VUHkP9tq4DiPCMFugTTNYBI0z9y913i5NssxeTk9a6qqfU067F8Gw8c6h?=
 =?iso-8859-1?Q?2FyLp567gTdxik6PjtVOywQ2PPxjTVjnLgx5x+JHu/z9EVfskx0/HPrg5m?=
 =?iso-8859-1?Q?VqMA2LYG43icW6grn+ZQ+eqGoKuuRnRbxRy4Rv4TVL5XdQcSWsP/o7lilD?=
 =?iso-8859-1?Q?2TGwHoAZvR8PuSMOVIRMv7n1ffmYoHdVs/CJa5JkiP/WDuZg0vP5iwDhCW?=
 =?iso-8859-1?Q?OJ5nV1FR0X/MFfshrdRRRR4YC6esyZzS+Krm6OIzBTTJ6EI4JQCbWgisgF?=
 =?iso-8859-1?Q?sZ1HUvvAe3yD34Y03jZNP0hjRktLA21Iq6kkV+j7/GW24ALuT9cNS1nAq/?=
 =?iso-8859-1?Q?t2+hrkjyGIlgQrRug9C2P2FJQtyWlR75lKW+R/9H5i0mClmOHB2BJmSswm?=
 =?iso-8859-1?Q?8gZzF7kLZePOrpqcZcPffAJqwHNqT/Vbs1R1IwHCCEeB6lizlHuv/0qu0y?=
 =?iso-8859-1?Q?mFEXCsutCpQG2qYWNBrjCNpa4FLxY2kOehf6NitaPZnl8OvxMbAtzfByCC?=
 =?iso-8859-1?Q?UeSfErcQQnyiXzcmXK+RUbmF1caDFkhZh/BKUeaBUCaQL7gNFTAXaeyc53?=
 =?iso-8859-1?Q?lowN0rrKbj0AtjfdpjseJmXWD+H5s2wxXedQiZaarmrcdbouJ5H/nRrnxk?=
 =?iso-8859-1?Q?Yvm7OlIFMPWg5BLNxYkB1iwj1QVXrFN+Kn6RZ9xRluhZ1aUZc+a2ZwwHk9?=
 =?iso-8859-1?Q?y+Ll11obDKsUWAsBoulsRgHp/iCP5LjYNP5t90DoP8R0G3NYmZAoCRVLnA?=
 =?iso-8859-1?Q?BHLfIT86s4+ac+lRGSJZQ4joHaBvImqJduddPlJnQvinVTt3Q6ikBV0BHJ?=
 =?iso-8859-1?Q?xwb0nurJ5FgnGV2fyZEtXpjrkvMfyfc76VrSzamOZU7g=3D=3D?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DS0PR11MB7578.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(376014)(366016)(1800799024)(38070700018); DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?iso-8859-1?Q?jAqDX6qdLjyFOzA+oHrmz92qr2YeRNHOQL6QzYqAetwpDiqwYTMDaHdw6E?=
 =?iso-8859-1?Q?gXtB9fvDaK+qlziTWoSdOHP39jaOJ9QvtweYMgSfAue4Sf/Sa4ThShtiAc?=
 =?iso-8859-1?Q?ey4XZi1wo5cNcB4aN6WnxmFA7wX5qYsvn4nLXxLAcgQ5QNC5FfPSAJkktC?=
 =?iso-8859-1?Q?vOlQkLQXl9hoHyLLfgIMTH6Ny9oU7h8onKmwu3lCRfP6BjUQ9nIj4Ju4jj?=
 =?iso-8859-1?Q?ne8RhkwWHbuXaLFU2pr8IBZMXp4QgrSlCW00p7oTQzjGWPb/jx9+TTD7YO?=
 =?iso-8859-1?Q?0FOYIzavDmtnWCsJsY3fQImr8uEvUWY7Di0rrUr7mPUPHGh/ESxITPmkRq?=
 =?iso-8859-1?Q?Ni5ZjCAwesP5Jk/1lJcGORKMSLl+HBozXAV7U6MMUFoEO4iFMDuvZzeIHv?=
 =?iso-8859-1?Q?u3A4NgxKF2RvJJ9BULDIGFavfHfu2mhHosIJ/dBr8dwsouTFCk+0V+vAm2?=
 =?iso-8859-1?Q?HulaXSDy0iE6wg5txY9kKh+wY+/ML0B8CLrCIeZf4GfscIFR84K2NCS0ZM?=
 =?iso-8859-1?Q?vwchT0wVN4EzUXbAkylzFDNwn6vVUGAk1I50ra0HcKWApGMPrJA4RXc7MM?=
 =?iso-8859-1?Q?DTaeBz2Tp4evU8SmlZ509iJ/+50YLcYKJJAg8jnDxA20VP9VXxPb7zjgiu?=
 =?iso-8859-1?Q?Nq+x1CJbzOUXcEZwnN3j1djTwoBgyylqqCAg4KNI6lpJFpDPSy5PISk6ha?=
 =?iso-8859-1?Q?DdjYfC6ayb6a6XEJy6ZDzum+XF8RD6hYrNWgVUwD5jliS0tGLII54Lpp7Z?=
 =?iso-8859-1?Q?eIH2ItEheut/y0RYD2OE5epyTy/WW4cfYn4STnYrnaAd6hQG92E6MpMhkq?=
 =?iso-8859-1?Q?7bezeUnR1/zDMCguTjgdY+RyndnO+ZPZAT5xkHMeIlxN5kQMNwlv1onLRr?=
 =?iso-8859-1?Q?7uL7EhVunOv8i+05MwG3VKeV3/Wp7RBuqVUibaG5mnzj28fMSlkfIbWTjT?=
 =?iso-8859-1?Q?xc5lUGjWqH4LSqYZ8nyxvQJKBN9EEVY3kGikbxYHQXpv6j0oIw7C8UDFX6?=
 =?iso-8859-1?Q?T6P8T8ZGXsvxU40YBC2sb6IaWRAuxWwHtM79aVHQ9WPwVTBtyZWTJtXxDb?=
 =?iso-8859-1?Q?jUnGb3ns7k3v+PhtiPRyiaiiak1d2StZCZ6Ovl2wfmp0XY1ZecdJCoK4SB?=
 =?iso-8859-1?Q?ErNyVlMwXpdRCvAWtReVnvKe5GIdFs9kJWpyxo1/3XYow+YJ/J3LSKjjZS?=
 =?iso-8859-1?Q?12j+Db/9P4L0nG3Urfekxyw5Kkb8iausu3XtLcrzRlxrPq52dkRIjHVWXS?=
 =?iso-8859-1?Q?RyvnDDcKNL2YK9fgcY3vvC94uVG2f0vn8PS/Cf+yDgv65dwcJdMS+zTPLr?=
 =?iso-8859-1?Q?qVmMh0aas4VCLTE85gSTYOAIGO8EaQWi52DMmcAfvuuEAcNxrZg/gp1xfJ?=
 =?iso-8859-1?Q?9gp5dcPBWhTIxFn6Y8eoA1cNqZynde+jFbnkHyvBO8ks0WloiajvMZ3H4h?=
 =?iso-8859-1?Q?LIzfiCgeKA5i1Q9mvy77q2ViIWbR4Uisr8gGkvChUwJ1uIJLh/BeWMXweC?=
 =?iso-8859-1?Q?ePjQDJU9etNfrHFIOAcLKmKUCwO6yoiPG/dZTArgD1VGGJ4nXi046EaQx0?=
 =?iso-8859-1?Q?vrH2E1fwD+ORDJiomVEUsAwnopOE7KYRakqrybo8SCJwr40GCbFgs3u3v6?=
 =?iso-8859-1?Q?d8hcqA7gLMBTe06DDGBV+/f2tT2Ug47MHh?=
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: DS0PR11MB7578.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: ca70b594-4351-4415-251e-08dd9cfb00e1
X-MS-Exchange-CrossTenant-originalarrivaltime: 27 May 2025 08:46:42.1892 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: 78hGmNJqpTCaj2uGPvONI6Wd38WDNw6nQdcv6Hp0rziPYaCCm1T1wdzOuaqsalsxl+DjNBlNRu3IlXwDXSaA2A==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DM4PR11MB6093
X-OriginatorOrg: intel.com
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
Reply-To: "20250527075906.65542-1-shawn.c.lee@intel.com"
 <20250527075906.65542-1-shawn.c.lee@intel.com>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Tue, 27 May 2025, Jani Nikula <jani.nikula@linux.intel.com> wrote:
>On Tue, 27 May 2025, Lee Shawn C <shawn.c.lee@intel.com> wrote:
>> A DSC setting has been available in VBT since version 251, which=20
>> allows users to enable or disable the DSC feature based on their system =
design.
>> With this in mind, DP driver should reference this setting and avoid=20
>> enabling DSC if this value is not allowed.
>>
>> Cc: Shankar Uma <uma.shankar@intel.com>
>> Cc: Jani Nikula <jani.nikula@linux.intel.com>
>> Cc: Ville Syrj=E4l=E4 <ville.syrjala@linux.intel.com>
>> Signed-off-by: Lee Shawn C <shawn.c.lee@intel.com>
>> ---
>>  drivers/gpu/drm/i915/display/intel_bios.c   |  8 ++++++++
>>  drivers/gpu/drm/i915/display/intel_bios.h   |  1 +
>>  drivers/gpu/drm/i915/display/intel_dp.c     | 12 +++++++++---
>>  drivers/gpu/drm/i915/display/intel_dp.h     |  2 +-
>>  drivers/gpu/drm/i915/display/intel_dp_mst.c |  2 +-
>>  5 files changed, 20 insertions(+), 5 deletions(-)
>>
>> diff --git a/drivers/gpu/drm/i915/display/intel_bios.c=20
>> b/drivers/gpu/drm/i915/display/intel_bios.c
>> index ba7b8938b17c..f08dd54fe4d4 100644
>> --- a/drivers/gpu/drm/i915/display/intel_bios.c
>> +++ b/drivers/gpu/drm/i915/display/intel_bios.c
>> @@ -3548,6 +3548,14 @@ bool intel_bios_get_dsc_params(struct intel_encod=
er *encoder,
>>  	return false;
>>  }
>> =20
>> +bool intel_bios_encoder_ext_display_dsc_disabled(const struct=20
>> +intel_bios_encoder_data *devdata)
>
>Prefer positive instead of negative, and follow naming conventions.
>
>intel_bios_encoder_supports_dsc().
>

Sure! I will rename this function.

>> +{
>> +	if (!devdata || devdata->display->vbt.version < 251)
>> +		return false;
>> +
>> +	return devdata->child.disable_compression_for_ext_disp;
>> +}
>> +
>>  static const u8 adlp_aux_ch_map[] =3D {
>>  	[AUX_CH_A] =3D DP_AUX_A,
>>  	[AUX_CH_B] =3D DP_AUX_B,
>> diff --git a/drivers/gpu/drm/i915/display/intel_bios.h=20
>> b/drivers/gpu/drm/i915/display/intel_bios.h
>> index 6cd7a011b8c4..901ba63e205d 100644
>> --- a/drivers/gpu/drm/i915/display/intel_bios.h
>> +++ b/drivers/gpu/drm/i915/display/intel_bios.h
>> @@ -258,6 +258,7 @@ bool=20
>> intel_bios_encoder_supports_dp_dual_mode(const struct=20
>> intel_bios_encoder_da  bool intel_bios_encoder_is_lspcon(const struct=20
>> intel_bios_encoder_data *devdata);  bool=20
>> intel_bios_encoder_lane_reversal(const struct intel_bios_encoder_data=20
>> *devdata);  bool intel_bios_encoder_hpd_invert(const struct=20
>> intel_bios_encoder_data *devdata);
>> +bool intel_bios_encoder_ext_display_dsc_disabled(const struct=20
>> +intel_bios_encoder_data *devdata);
>>  enum port intel_bios_encoder_port(const struct=20
>> intel_bios_encoder_data *devdata);  enum aux_ch=20
>> intel_bios_dp_aux_ch(const struct intel_bios_encoder_data *devdata); =20
>> int intel_bios_dp_boost_level(const struct intel_bios_encoder_data=20
>> *devdata); diff --git a/drivers/gpu/drm/i915/display/intel_dp.c=20
>> b/drivers/gpu/drm/i915/display/intel_dp.c
>> index 640c43bf62d4..eb1e6de0148a 100644
>> --- a/drivers/gpu/drm/i915/display/intel_dp.c
>> +++ b/drivers/gpu/drm/i915/display/intel_dp.c
>> @@ -1389,9 +1389,11 @@ int intel_dp_num_joined_pipes(struct intel_dp *in=
tel_dp,
>>  	return 1;
>>  }
>> =20
>> -bool intel_dp_has_dsc(const struct intel_connector *connector)
>> +bool intel_dp_has_dsc(struct intel_dp *intel_dp,
>
>There's no need to pass that in.
>

intel_bios_encoder_supports_dsc() need intel_bios_encoder_data.
That's why we pass intel_dp and use it to get ecoder data.
Do you mean we can get encoder data from intel_connector?

>> +		      const struct intel_connector *connector)
>>  {
>>  	struct intel_display *display =3D to_intel_display(connector);
>> +	struct intel_encoder *encoder =3D &dp_to_dig_port(intel_dp)->base;
>> =20
>>  	if (!HAS_DSC(display))
>>  		return false;
>> @@ -1403,6 +1405,10 @@ bool intel_dp_has_dsc(const struct intel_connecto=
r *connector)
>>  	    connector->panel.vbt.edp.dsc_disable)
>>  		return false;
>> =20
>> +	if (connector->base.connector_type =3D=3D DRM_MODE_CONNECTOR_DisplayPo=
rt=20
>> +&&
>
>It's just absolutely bonkers that the field is for external HDMI/DP, there=
's a separate field for eDP DSC disable, and there's a separate field for D=
SI DSC.
>
>Anyway, I am wondering if the output type check should be in
>intel_bios_encoder_supports_dsc() instead.
>
>(intel_bios_encoder_supports_dp() && !intel_bios_encoder_supports_edp()) |=
| intel_bios_encoder_supports_hdmi().
>

Sounds good! Let's move this checking into intel_bios_encoder_supports_dsc(=
).

Best regards,
Shawn

>BR,
>Jani.
>
>> +	    intel_bios_encoder_ext_display_dsc_disabled(encoder->devdata))
>> +		return false;
>> +
>>  	if (!drm_dp_sink_supports_dsc(connector->dp.dsc_dpcd))
>>  		return false;
>> =20
>> @@ -1463,7 +1469,7 @@ intel_dp_mode_valid(struct drm_connector *_connect=
or,
>>  	mode_rate =3D intel_dp_link_required(target_clock,
>>  					   intel_dp_mode_min_output_bpp(connector, mode));
>> =20
>> -	if (intel_dp_has_dsc(connector)) {
>> +	if (intel_dp_has_dsc(intel_dp, connector)) {
>>  		enum intel_output_format sink_format, output_format;
>>  		int pipe_bpp;
>> =20
>> @@ -1650,7 +1656,7 @@ bool intel_dp_supports_dsc(struct intel_dp *intel_=
dp,
>>  			   const struct intel_connector *connector,
>>  			   const struct intel_crtc_state *crtc_state)  {
>> -	if (!intel_dp_has_dsc(connector))
>> +	if (!intel_dp_has_dsc(intel_dp, connector))
>>  		return false;
>> =20
>>  	if (intel_crtc_has_type(crtc_state, INTEL_OUTPUT_DP) && diff --git=20
>> a/drivers/gpu/drm/i915/display/intel_dp.h=20
>> b/drivers/gpu/drm/i915/display/intel_dp.h
>> index 742ae26ac4a9..309dad5b1b47 100644
>> --- a/drivers/gpu/drm/i915/display/intel_dp.h
>> +++ b/drivers/gpu/drm/i915/display/intel_dp.h
>> @@ -83,7 +83,7 @@ void intel_dp_audio_compute_config(struct=20
>> intel_encoder *encoder,  bool intel_dp_has_hdmi_sink(struct intel_dp=20
>> *intel_dp);  bool intel_dp_is_edp(struct intel_dp *intel_dp);  bool=20
>> intel_dp_is_uhbr(const struct intel_crtc_state *crtc_state); -bool=20
>> intel_dp_has_dsc(const struct intel_connector *connector);
>> +bool intel_dp_has_dsc(struct intel_dp *intel_dp, const struct=20
>> +intel_connector *connector);
>>  int intel_dp_link_symbol_size(int rate);  int=20
>> intel_dp_link_symbol_clock(int rate);  bool=20
>> intel_dp_is_port_edp(struct intel_display *display, enum port port);=20
>> diff --git a/drivers/gpu/drm/i915/display/intel_dp_mst.c=20
>> b/drivers/gpu/drm/i915/display/intel_dp_mst.c
>> index c1fd6aceec2c..4f18059d9913 100644
>> --- a/drivers/gpu/drm/i915/display/intel_dp_mst.c
>> +++ b/drivers/gpu/drm/i915/display/intel_dp_mst.c
>> @@ -1508,7 +1508,7 @@ mst_connector_mode_valid_ctx(struct drm_connector =
*_connector,
>>  		return 0;
>>  	}
>> =20
>> -	if (intel_dp_has_dsc(connector)) {
>> +	if (intel_dp_has_dsc(intel_dp, connector)) {
>>  		/*
>>  		 * TBD pass the connector BPC,
>>  		 * for now U8_MAX so that max BPC on that platform would be picked
>
>--
>Jani Nikula, Intel
>
