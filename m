Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id A99C4ADDBA8
	for <lists+intel-gfx@lfdr.de>; Tue, 17 Jun 2025 20:52:18 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 206E710E0BE;
	Tue, 17 Jun 2025 18:52:17 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="NCJiOHUi";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.20])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 212B610E778;
 Tue, 17 Jun 2025 18:52:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1750186336; x=1781722336;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=5TUduxvQDn/sMWeAjjIB0qzoBvpv3YApckS1Km9jJsw=;
 b=NCJiOHUinl83fYv6G7R7UD8lVL7dvbqZCF05+Rc4aroLaqonkwzzU07q
 omWhi0RL1sKAroyGmhuF4p7drDyMU3cAJfaMy+mksPFQY4+WFzsI7qLoH
 854YFA5NyrhcBMsx5PSoPm09PqPWalXocOhAp220Hf+8R3VJPdyL/MYmZ
 t0Rnb7/wZllYwsrUEzwKnyFaCDDe8+JYk9aW7SR59hXZCLzX1hkcrZ+J4
 rBS2zBQ1NK8Igu3DCE7USrfiWpafss5lSuOZeQQ2waKEwTbppnHPfQfBw
 G6LnPRNO//6hg043ylmbKmpV2JRDhVrAJb75lBdVWs+KL9CAj2C25IssP w==;
X-CSE-ConnectionGUID: Er70gZMrT66iyYYTXRPOUg==
X-CSE-MsgGUID: /DRCjFYjRDuD08jAA5YFMw==
X-IronPort-AV: E=McAfee;i="6800,10657,11467"; a="52084218"
X-IronPort-AV: E=Sophos;i="6.16,244,1744095600"; d="scan'208";a="52084218"
Received: from orviesa010.jf.intel.com ([10.64.159.150])
 by orvoesa112.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 17 Jun 2025 11:52:15 -0700
X-CSE-ConnectionGUID: HoDdMy+zSUa+gpWkeyinjw==
X-CSE-MsgGUID: vvnPrja1S5Wis4Nkrx/R1w==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.16,244,1744095600"; d="scan'208";a="148777282"
Received: from orsmsx901.amr.corp.intel.com ([10.22.229.23])
 by orviesa010.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 17 Jun 2025 11:52:16 -0700
Received: from ORSMSX901.amr.corp.intel.com (10.22.229.23) by
 ORSMSX901.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1544.25; Tue, 17 Jun 2025 11:52:15 -0700
Received: from ORSEDG901.ED.cps.intel.com (10.7.248.11) by
 ORSMSX901.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1544.25 via Frontend Transport; Tue, 17 Jun 2025 11:52:15 -0700
Received: from NAM11-DM6-obe.outbound.protection.outlook.com (40.107.223.85)
 by edgegateway.intel.com (134.134.137.111) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1544.25; Tue, 17 Jun 2025 11:52:14 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=pxmE4y3BsjWpVJj58cmxQWrGVFcm7LcrvydxL1o6//pB3gxHV//eNMzgtNZDYdzEmMr8QHsyo9lFUbCv72s6ox5J2+nr3FiIn/fl8cBsfDOoLRgbPjlNEdo0NhD21gltbQYa1g8w4cTRjFRyCQ5x4dmd1jnsfVM5ywvsdVu2321UfilR/YXNKPCCnlNS/th6vYRvZTuEcpU0Fa5zY4GoQpCUcSnYF0EHcfVimiiNQ4ezFBM1ZaDu8ZvRfZCrVCnuBIym8Q09g7HzDUOZNTZpu4NA1DscYE6Z1I4i+PEB6YirOhp+WmdyIxN+w7XycaRDW/jyxCoxsgsPeOG0JujG6w==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=FtpGGs96FnX+/m2sPx1tuwzKi6areOj5gxOUZTa7+p8=;
 b=K/MJAKo7szNgrMRazyRAralI6OneL9vHswbIkKiXm/0p719T6lZsvQzOxCvzcOi8kGZEvQjkXBQl1GjRC9Bw3LqJSqOWYdzwrNCsfow2GyMc32SY9PdD6CNauHjLHh2JWegc6YGYK2zJGkLqYBokXeHC3vPkRNj4jzYB5P58qC59TLhTf6CCG/0fy4yLd5vaKh3bBRwG6+BV6lqwGfUzL9P3GQ3vovi/be1CGmPazc9A7zFB0/j8mpz4UlmBXH6RDWPZ81ln63/XF2Le6L85opaqqbUWtKdy7g/8/VFM/fh6G6eh+LwcMoMiUGQskiZMPzmpLxLFWuAE5hp4K3cfTg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from DM4PR11MB6360.namprd11.prod.outlook.com (2603:10b6:8:bd::12) by
 PH8PR11MB6830.namprd11.prod.outlook.com (2603:10b6:510:22e::9) with
 Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.8835.29; Tue, 17 Jun 2025 18:51:45 +0000
Received: from DM4PR11MB6360.namprd11.prod.outlook.com
 ([fe80::8648:3a6b:af5c:b6e6]) by DM4PR11MB6360.namprd11.prod.outlook.com
 ([fe80::8648:3a6b:af5c:b6e6%5]) with mapi id 15.20.8835.027; Tue, 17 Jun 2025
 18:51:45 +0000
From: "Shankar, Uma" <uma.shankar@intel.com>
To: =?iso-8859-1?Q?Ville_Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
CC: "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>,
 "intel-xe@lists.freedesktop.org" <intel-xe@lists.freedesktop.org>
Subject: RE: [PATCH 5/9] drm/i915/dmc: Reload pipe DMC state on TGL when
 enabling pipe A
Thread-Topic: [PATCH 5/9] drm/i915/dmc: Reload pipe DMC state on TGL when
 enabling pipe A
Thread-Index: AQHb2ujyBDRzGKCWL0KWtOD9OMUj9rP/+vZQgAEozYCABpfUMA==
Date: Tue, 17 Jun 2025 18:51:45 +0000
Message-ID: <DM4PR11MB6360A3EE1857AA2D831BCA57F473A@DM4PR11MB6360.namprd11.prod.outlook.com>
References: <20250611155241.24191-1-ville.syrjala@linux.intel.com>
 <20250611155241.24191-6-ville.syrjala@linux.intel.com>
 <DM4PR11MB6360BEA3323D523E9F2E856BF474A@DM4PR11MB6360.namprd11.prod.outlook.com>
 <aEwxH9iOmOkGGiOo@intel.com>
In-Reply-To: <aEwxH9iOmOkGGiOo@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: DM4PR11MB6360:EE_|PH8PR11MB6830:EE_
x-ms-office365-filtering-correlation-id: 2f5ee718-3d20-44b3-4312-08ddadd001e1
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0; ARA:13230040|366016|1800799024|376014|38070700018;
x-microsoft-antispam-message-info: =?iso-8859-1?Q?DTCpCGf0uA+jT7CHsdnPtYpLEgVJcgzSoFQg5i2EoeufatRze6jztoVlJp?=
 =?iso-8859-1?Q?AAUTANUlmq0xu4ReIuCOpeUcEN5bj5hKC/xpj3U1JwRmVtVgZhsteYWyUX?=
 =?iso-8859-1?Q?n3a++DrZ3nCHTevgIO9SYT/XmS4CzCqKGngAF51YkfgU49qRmO2O6EWOVl?=
 =?iso-8859-1?Q?oeXFK/kdSs6qJiaplFL8sJG2Qt8QwgDA9BkemHsyIcHlIGEfvfs2XF5HaJ?=
 =?iso-8859-1?Q?RfScOkRN9LlFtmEFYCCrPYdWQPYykUvt0P7WOVwsPkeyQBr+ZgYiqd5XXZ?=
 =?iso-8859-1?Q?EHRNWgRK1zYEe+6so53KoDhAT84y1Z5lRC9w0R7PPyHJhdTVrul/YpAlRt?=
 =?iso-8859-1?Q?hWiWexghbLrVJErl2RoTbhdDKi7KHwak4S5hth0v6dIq4EgQbP6hsgHlFC?=
 =?iso-8859-1?Q?fIKS22M20kVvAh2F3maAOBcbUV4wdAaq1WKI9gIso8dgcXlvyozDC1LxyV?=
 =?iso-8859-1?Q?BunnuwSZGD9UM6TxuQA5kN1convyRyMchCXi1HMgKqEcw3oGs/PNe9qB37?=
 =?iso-8859-1?Q?PPDGcOphuV/1lENFXA24NqtDCrN5pbyTgWBxQsWONCGfsllJt+zd7MoNUx?=
 =?iso-8859-1?Q?UbJ2eT7YNqX23OK3sz77qdvHI7Hn5Ox106fmrRyLRXRewesyl8Ku3xK2EK?=
 =?iso-8859-1?Q?E3ZQ8bkNL+moFEklQI0L991TsuZ/yoaygb16k47GeBJr5z0BMU/LkVHzhv?=
 =?iso-8859-1?Q?RCJ4GJsbCQc2Am4oBXzgXUpOMlOLj7njULOIHIFhWMdSCXX4f93uMVbVu1?=
 =?iso-8859-1?Q?Q77Kz4IrBQMH/uJxqKqD0COe4ZbsuFIw0H1bObx5+5/q3vdseEt3VSNCda?=
 =?iso-8859-1?Q?9hsD91cowmYPNoNpJkJNRKluuZi/bNa5nWx9Wer8owETeOj9eftewn0Y/h?=
 =?iso-8859-1?Q?H10eTYbGAayLn2pm5gBFZL2I1441/PqFos4rKuOZCPRrTFces3UifuG5DS?=
 =?iso-8859-1?Q?3i2E2wQsYMHsodZLBV5f6jA4Jm3fz9En/9kx6q2zX5xuSYL9gFvz5W2KHP?=
 =?iso-8859-1?Q?ODkLYEpX3l5mW9bfbwJG/kY6mQS+9nAVtcj7rWXp5tSKg6VSZjETS5Ldt+?=
 =?iso-8859-1?Q?IaQxg1OdmtW1ek6nsFv3Sa620GnYqPa0rzfGb9A6slaNdh8FazCQUYFSCH?=
 =?iso-8859-1?Q?op9GDA7GXM0IW0UxnCzr5Yo6M9S9Q0nNcgQlkt1uy4Fo+mu18Mro3nRl4b?=
 =?iso-8859-1?Q?W/YyLQb/1VLIvd9SPTwPxRrU67zqhi+zE8k2cPfyv+5PEXolIo609reUqj?=
 =?iso-8859-1?Q?qCBI/NvIo80TBL5rYsHDiY1uAMoac8hqB4OZjNBJ+zn1cyHZr7jdbHw3cY?=
 =?iso-8859-1?Q?jFwaDaeNTGDWsLnB3cSoqTE9FJcP6ryhj/2d+EeRNzCx9nMCTxE88xpHB0?=
 =?iso-8859-1?Q?8ivzw0/6YRSvyohipS/TOypI1GiHyciaWupzFlVLhy45mtN3LgCf03y91A?=
 =?iso-8859-1?Q?20cOgvZ7iQI+x898Ec0W7gv4AR+wNYgyHn7jzE3Hple/NZqU8en5YdBeJh?=
 =?iso-8859-1?Q?O9HexvP2F81NxJm9ozQmML+/BqqjrOQDNU7IYxVxwQ1A=3D=3D?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM4PR11MB6360.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(366016)(1800799024)(376014)(38070700018); DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?iso-8859-1?Q?jK7D9qITIUVh/WSeNiBypSEf985gdPhlh863sXikv5B15ccvq2ou0h42oY?=
 =?iso-8859-1?Q?KdKmrQ2QwT4oMRswigfDD4UY9lC4M6XFQIjiwaV2yg9aGG7+42QAdcj/RQ?=
 =?iso-8859-1?Q?D9sTH3oatCAsW3Kwqp8Q3ycTc3SbZk2Est1YfxuOlQZ+jNrPNfY/IFHJIS?=
 =?iso-8859-1?Q?xxXDhQrTdjYFAZkAo4l822ZHBMfkEqA2q8jpd3ZQbWnF8B71ivhGOYCjZE?=
 =?iso-8859-1?Q?znA0VKiguCCkssKuZr9rEhGxvD/L8aUH4kAmxZEinbf/xJKZy+w7OiUFQt?=
 =?iso-8859-1?Q?rXT64+75Z1/VUh9PbvzE0tw7vkBo56dEIuQsXYBOvCRFKUthlga93ed1eK?=
 =?iso-8859-1?Q?5VkaDZbPL3/P5RE3uBmJNjoYgf94GnYvi1A5R34sBrOjMW8w1V+xAqKQEW?=
 =?iso-8859-1?Q?UhAmfaWcud5pDCWjKtuTxdJFgJQVRUFRAXnnockE/mOYcNBKhNb56YMsry?=
 =?iso-8859-1?Q?U4zKsHbcWk2ce7rzqzjAC62+ysRPFoTSpr4f1J06+5C5m0fCc3p/UAdm2B?=
 =?iso-8859-1?Q?EbmgPRfttJqheD23RAhJl00DHmF/oaB58Ep+FYdesNmVSXgGEhshFmNZlR?=
 =?iso-8859-1?Q?87qiKTlKRUvVBbKnPwRIxzy+Byc0hhTpHJ2iOKjns/RDufNLe2QJ1jpLoJ?=
 =?iso-8859-1?Q?IR1WR5w8t+3wATx27Q3a8isGx2IZV1NNKSZON0Av7Ol8PqLz4WbU5J8r++?=
 =?iso-8859-1?Q?qbBC5m6G4DeQuBBy31ZgHXp2Uni+ahz5Z9NnmhmwTDCvz8GKKI2bNuDEDb?=
 =?iso-8859-1?Q?vvuQYy9aiF39h6/5MW37ORfo00tGoegKuguHkajQuWN8R3HVQdoRW2djxo?=
 =?iso-8859-1?Q?Slp1FW3ke2MYfy/czhm5blcXIG5EyT3eZNOwXw+veDoHKE68Co632Pu8mo?=
 =?iso-8859-1?Q?WK8U/zBL8hSkisniLpZZevRudy/dzk4PmXVgUtBj9J5R86K7GymcBsUKUC?=
 =?iso-8859-1?Q?gQoN2UIR65rML9QbzDqcdWF3TtBiEnbGxh+SxhZMVuZrgHwSM+qCohOlfX?=
 =?iso-8859-1?Q?JjpSmHbXjGlhN7qUxBs0kuhoHCOS3wVybgkE7qsClTjWJQevPHeSNPOkxJ?=
 =?iso-8859-1?Q?3olGFYZFwK059uZ5ktCtvS/e5raHx50veogStn26kz09cZonDdrQpKpFsR?=
 =?iso-8859-1?Q?M7BA5L7hTngUVfQOKNZGh7huaK/0ppeTpfQPSxT8b+x5ZEB3qosNQewNNk?=
 =?iso-8859-1?Q?dPGdxXj6FaODDJ/SbTMz+AuZzk90Yx5g3HwDx3kCAGLrZMEETA8lirIPAM?=
 =?iso-8859-1?Q?E0nvQbXXLC81q5MOa2Vox1gofaSOyJlOUa6S5Nfrbs0Z0VRZk+GRtqnaJf?=
 =?iso-8859-1?Q?mjOSCbTJGDmOePtMosE2jSDjGExS8Vcsbh3TE9gmbNt4FDWwSXqM0JW9Wu?=
 =?iso-8859-1?Q?GhHnsuwMRnVPdDqLW1M5vCAakS56iBP+e5UQlA6I+D0xvIrcdMaMN6J2E1?=
 =?iso-8859-1?Q?oqDfqWcar3BLNo0y05uvwX8hDEd8O5TPJwAd4aL+Cwgn31YhEQqEZSTrQk?=
 =?iso-8859-1?Q?Si30oZ6t7GYirTuw6KUc7YNpgglfBY7mcpWr3O00zzZ5n2Y09/zcJGmo4I?=
 =?iso-8859-1?Q?ldR7TbtXxbjy6hMbHvesC5Xb6/uRMFDmeCj8TtzN006uuX2iZk67FNu+X+?=
 =?iso-8859-1?Q?6Z+1w0BWX1XJ9CALJkc/v1K4/jxncofYmJ?=
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: DM4PR11MB6360.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 2f5ee718-3d20-44b3-4312-08ddadd001e1
X-MS-Exchange-CrossTenant-originalarrivaltime: 17 Jun 2025 18:51:45.2177 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: YlhudDDjNy/8hlm9kXmnpxCQIQ/psLx+JVfQStUTrSFD7DhfRffp+2GnF0CybWUpv4g53NaAmrKeFYwB8MVsIA==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PH8PR11MB6830
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
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>



> -----Original Message-----
> From: Ville Syrj=E4l=E4 <ville.syrjala@linux.intel.com>
> Sent: Friday, June 13, 2025 7:40 PM
> To: Shankar, Uma <uma.shankar@intel.com>
> Cc: intel-gfx@lists.freedesktop.org; intel-xe@lists.freedesktop.org
> Subject: Re: [PATCH 5/9] drm/i915/dmc: Reload pipe DMC state on TGL when
> enabling pipe A
>=20
> On Thu, Jun 12, 2025 at 08:32:16PM +0000, Shankar, Uma wrote:
> >
> >
> > > -----Original Message-----
> > > From: Intel-xe <intel-xe-bounces@lists.freedesktop.org> On Behalf Of
> > > Ville Syrjala
> > > Sent: Wednesday, June 11, 2025 9:23 PM
> > > To: intel-gfx@lists.freedesktop.org
> > > Cc: intel-xe@lists.freedesktop.org
> > > Subject: [PATCH 5/9] drm/i915/dmc: Reload pipe DMC state on TGL when
> > > enabling pipe A
> >
> > I guess its applicable for all pipes and not just limited to A.
>=20
> Only pipe A has a DMC on these platforms.

Oh ok, got it.

> >
> > > From: Ville Syrj=E4l=E4 <ville.syrjala@linux.intel.com>
> > >
> > > On TGL/derivatives the entire pipe DMC state (program + MMIO) is
> > > lost when
> > > PG1 is disabled, and the main DMC does not restore any of it. Reload
> > > the state when enabling a pipe.
> >
> > It is just the TGL or any other platforms affected ?
> > Current change looks fine though.
> >
> > Reviewed-by: Uma Shankar <uma.shankar@intel.com>
> >
> > > The other option would be to not load the pipe DMC at all since it's
> > > only needed for "fast LACE" (which we don't use) on these platforms.
> > > But let's keep it around just in case we ever decide that "fast LACE"=
 is
> something we want.
> >
> > I agree, it's good to keep it.
> >
> > > Signed-off-by: Ville Syrj=E4l=E4 <ville.syrjala@linux.intel.com>
> > > ---
> > >  drivers/gpu/drm/i915/display/intel_dmc.c | 9 +++++++++
> > >  1 file changed, 9 insertions(+)
> > >
> > > diff --git a/drivers/gpu/drm/i915/display/intel_dmc.c
> > > b/drivers/gpu/drm/i915/display/intel_dmc.c
> > > index 331db28039db..fd99c4645260 100644
> > > --- a/drivers/gpu/drm/i915/display/intel_dmc.c
> > > +++ b/drivers/gpu/drm/i915/display/intel_dmc.c
> > > @@ -599,6 +599,12 @@ static void dmc_load_program(struct
> > > intel_display *display,
> > >  	}
> > >  }
> > >
> > > +static bool need_pipedmc_load_program(struct intel_display *display)=
 {
> > > +	/* On TGL/derivatives pipe DMC state is lost when PG1 is disabled *=
/
> > > +	return DISPLAY_VER(display) =3D=3D 12; }
> > > +
> > >  void intel_dmc_enable_pipe(struct intel_display *display, enum pipe =
pipe)  {
> > >  	enum intel_dmc_id dmc_id =3D PIPE_TO_DMC_ID(pipe); @@ -606,6 +612,9
> > > @@ void intel_dmc_enable_pipe(struct intel_display *display, enum pip=
e pipe)
> > >  	if (!is_valid_dmc_id(dmc_id) || !has_dmc_id_fw(display, dmc_id))
> > >  		return;
> > >
> > > +	if (need_pipedmc_load_program(display))
> > > +		dmc_load_program(display, dmc_id);
> > > +
> > >  	if (DISPLAY_VER(display) >=3D 20) {
> > >  		intel_de_write(display, PIPEDMC_INTERRUPT(pipe),
> > > pipedmc_interrupt_mask(display));
> > >  		intel_de_write(display, PIPEDMC_INTERRUPT_MASK(pipe),
> > > ~pipedmc_interrupt_mask(display));
> > > --
> > > 2.49.0
> >
>=20
> --
> Ville Syrj=E4l=E4
> Intel
