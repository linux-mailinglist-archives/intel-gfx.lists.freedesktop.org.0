Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id D2D978D7D7E
	for <lists+intel-gfx@lfdr.de>; Mon,  3 Jun 2024 10:37:31 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id AA0F310E129;
	Mon,  3 Jun 2024 08:37:29 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="KvAvKREX";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.13])
 by gabe.freedesktop.org (Postfix) with ESMTPS id C949810E309
 for <intel-gfx@lists.freedesktop.org>; Mon,  3 Jun 2024 08:37:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1717403848; x=1748939848;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=WjWCLpraAyXUe2cTsqbHww762mFGbiNRCUOOviDVtiE=;
 b=KvAvKREXSjwc1vtSQaq3lUQjbB/eijoSmkHtxkfrhrSteWMmGiAZsBIe
 qgJnh28ODkN6PWeACJFBtInfQGlPYgoPS7d4jUkjQKazbjc2Vu0txa0Qc
 4TffqpIKFEYSLNC+U34OyhaA1nNNCIfkmVsZHGAz+zSP9GGIjahwYhro2
 irO38/4F6xGsIzn5vKj0v06L5CLWuGSSOV7e/Do0w45yvNSFVEYsCC6eQ
 05teAuh9553apb96TWDGCxBGsQ3ZrW5FqV/OR8qocFo6cCfdNPT6TDuBZ
 /34iqOPbAeaznzQ9EMHBciZ8/yahE8h9TexFdxt8ce8FezMI/zCp57vgQ Q==;
X-CSE-ConnectionGUID: bbfDvyltTJehen3QBFTy9g==
X-CSE-MsgGUID: LnJ+JAeSRo2UwCRWD16RtA==
X-IronPort-AV: E=McAfee;i="6600,9927,11091"; a="25000025"
X-IronPort-AV: E=Sophos;i="6.08,211,1712646000"; d="scan'208";a="25000025"
Received: from orviesa002.jf.intel.com ([10.64.159.142])
 by orvoesa105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 03 Jun 2024 01:37:28 -0700
X-CSE-ConnectionGUID: L96Aw8CvQpCHvOkyTJ6yJg==
X-CSE-MsgGUID: h2C7Nzu9Rqan1FUugkc9Ag==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.08,211,1712646000"; d="scan'208";a="67652693"
Received: from orsmsx602.amr.corp.intel.com ([10.22.229.15])
 by orviesa002.jf.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 03 Jun 2024 01:37:27 -0700
Received: from orsmsx610.amr.corp.intel.com (10.22.229.23) by
 ORSMSX602.amr.corp.intel.com (10.22.229.15) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39; Mon, 3 Jun 2024 01:37:27 -0700
Received: from orsmsx610.amr.corp.intel.com (10.22.229.23) by
 ORSMSX610.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39; Mon, 3 Jun 2024 01:37:26 -0700
Received: from ORSEDG601.ED.cps.intel.com (10.7.248.6) by
 orsmsx610.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39 via Frontend Transport; Mon, 3 Jun 2024 01:37:26 -0700
Received: from NAM02-DM3-obe.outbound.protection.outlook.com (104.47.56.41) by
 edgegateway.intel.com (134.134.137.102) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.39; Mon, 3 Jun 2024 01:37:26 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=VBmH6gnXpuMktERyLRT52ZX4mFCDBfM1C6yAVArbOB9o3PGaXRImQJjQsVUV7Ki+P6NY91LpjZZw9QsFpgU/Crq2GsYjR3DZAxmIUQ+OFJypqWM0IsqNPvTKgugPW8Sp8RlhTy66+sKH+zB777QShxb4LqsFV0obxxhwrffY8+Mu071qjSTc+E8ndSOaFjBYkZ+u6AULaUAYutrWdmhrsIhrLBpWB775y1hNNCHTe0Cfv8taR+LXUdJYtvvQNpdeO00Y+SjGQiA/kkGvWpBPVpxq1dhuOyMvJc1qKxUbRvUYDAJlZ2A8teIH92bdaAxDCntjhJxwZOXc1NwerfK5sA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=+9iDoCfLFF7TyGI0TxyYpPNZn5kLhu2vRGpbMA3cuaI=;
 b=Qz1e1jhljEhs8pQAK4x9SpkmS/+CGl5lbgrwTk/8DxQZWt4bbtrcoWh1wfl/936oez3gYRCWrkc4y+Dazi+n1ochTDTr325Or/gdY8SBF6UucGY3zEWUMnSLhTcetETEWGTvgtHAfkC2of6HXFh5Hz4l87Qk/FnVwZsIS68gUD6G9TFQHrT9Dq8G5+qXhRe5ZXM0W8LvLRLdA44QzodeCZmRGh6GOsMMs+ifu2hDZMWakBZP1mBqCQl3Qk9kwk15DTeWttlq1v8V7xqBDnsA8EQ9yj4lGD+WyqRsISHDYFCXXb5/Xa0+a9KSKGJpBWCS5urNKPRkQKE6eya52aoYdA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from DS0PR11MB6495.namprd11.prod.outlook.com (2603:10b6:8:c1::22) by
 IA1PR11MB7270.namprd11.prod.outlook.com (2603:10b6:208:42a::10) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7633.22; Mon, 3 Jun
 2024 08:37:24 +0000
Received: from DS0PR11MB6495.namprd11.prod.outlook.com
 ([fe80::48a4:1327:8beb:f33a]) by DS0PR11MB6495.namprd11.prod.outlook.com
 ([fe80::48a4:1327:8beb:f33a%3]) with mapi id 15.20.7611.030; Mon, 3 Jun 2024
 08:37:23 +0000
From: "Lobo, Melanie" <melanie.lobo@intel.com>
To: "Roper, Matthew D" <matthew.d.roper@intel.com>
CC: "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>,
 "Heikkila, Juha-pekka" <juha-pekka.heikkila@intel.com>
Subject: RE: [Intel-gfx] [PATCH] drm/i915: Support FP16 compressed formats on
 MTL
Thread-Topic: [Intel-gfx] [PATCH] drm/i915: Support FP16 compressed formats on
 MTL
Thread-Index: AQHaJDQMJYvbLfeoIkWn+WbqFutTo7CVHt4AgSG65gA=
Date: Mon, 3 Jun 2024 08:37:23 +0000
Message-ID: <DS0PR11MB64951E1B47AA4AFDAB379DC188FF2@DS0PR11MB6495.namprd11.prod.outlook.com>
References: <20231011102356.22014-1-melanie.lobo@intel.com>
 <20231201091133.23508-1-melanie.lobo@intel.com>
 <20231202000812.GF1327160@mdroper-desk1.amr.corp.intel.com>
In-Reply-To: <20231202000812.GF1327160@mdroper-desk1.amr.corp.intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: DS0PR11MB6495:EE_|IA1PR11MB7270:EE_
x-ms-office365-filtering-correlation-id: 199572db-47c3-4f07-1a71-08dc83a86416
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0; ARA:13230031|1800799015|366007|376005|38070700009;
x-microsoft-antispam-message-info: =?us-ascii?Q?EFuPX2dzG3/Ym4/PFbhfaWXClQXkEtfyoij36CX6Cvm/377U6JlOpZRXu/1k?=
 =?us-ascii?Q?TjJttMWJAskE8aOaAfBfphRcK2RsNp3tXvERGi9KNWP2AWzJzGGhQouvpefX?=
 =?us-ascii?Q?GU0lSuLo0XQzcnHrwfHHqXASAkYge1l3PJoiu0FWtbs3YvzLPANjoQYZz4ge?=
 =?us-ascii?Q?P7kwCakyMw04ynTkTKc7K/75whXVn5TWERBh1lB03UuEsAG5oEXHSNpXn7/7?=
 =?us-ascii?Q?5l0hvFLt9RENTS3yGdHav8pxmIIMFfB/iL+A5ujNOM4e8DXnl4NB0qv2HfAb?=
 =?us-ascii?Q?1yqgZPo+fgca/C/iuarffeNgs8THnEeqnpviowSlGhrrv4pz5/bhm+HIbRwF?=
 =?us-ascii?Q?eDXmjOiIR9crm3n+iSt2m8A1B7GukM0UMe8rV7zS8d9aAj7TaompMXxnrnep?=
 =?us-ascii?Q?5ZT/f3LZzimP1sjkwqLTxS37bZhfCM/FgZcJ5UKHUBbX8tnFuRnPQvIAPdVr?=
 =?us-ascii?Q?JoKrhAeGubM1EcrR8u8IAm9gFK54t2gYGVQAgwkuxbvXBcQQuSQeQq9wJ2cl?=
 =?us-ascii?Q?81o6eb3wOhz3CwwfYye0v0605WSaTi1aTvlHlWuNC8eEg59yeGEcvprFqEtY?=
 =?us-ascii?Q?1gUquLbRzvovMJS5ThpyCHADdFSB2bv6OPu0I/sQ0tHaH+xw1GrNA56H75+x?=
 =?us-ascii?Q?YTrVB/AmqLx7aIwnlllOlw+gDtgzN1jWZaBkjHErU8Iz2KEbtuz8KaP61PG9?=
 =?us-ascii?Q?fJwSjJQTD1CiJkMlPKSB4hU4nm9KzTMCLpYCzKjdXrp/szbmArIMzHOioEjB?=
 =?us-ascii?Q?cD2EucV7bxkMCNyFACAIaI/7EzZExLGgFk72NvY64OpZmKskw+t49MQm7baT?=
 =?us-ascii?Q?LA6elLlIeQOj5o3bbmyh+v1sYvwp0W//vsnDRDiuh5ycElvGEt76NeTvFW3m?=
 =?us-ascii?Q?MJwwmh+9xnQyl6aeRLdURobUdRYc1YjC7j2Rl9qxNXdED8zyd+oLb83wy5lH?=
 =?us-ascii?Q?WIiwBkc16yhox+PWksZWo/7C5C2yX3th98Saady6UJFD/ABjYmPZ8KADIiGp?=
 =?us-ascii?Q?lpy7Vokz+OtwDfoMU2ahbKgHnBxQXmUxVr1FNW4sdRiqddFAaxIH3pyMGaDG?=
 =?us-ascii?Q?UF0Ef9zDGG8emAUzH/yI3y9WR4lRnX4Wy0O+XX1DaQZm1tV9ho6nf+HtFPrc?=
 =?us-ascii?Q?UQMMvkKXzxyLHXDI3cj3aTNdCJrAYUbFPgjEhfsWOqvggx/kNLHXVkfcgukM?=
 =?us-ascii?Q?8N0kblTOqxfxJr+CGHjUmWu+v8uWS1MbnZ8WsZE4V7u3MMXNVUC0VTctI9Fr?=
 =?us-ascii?Q?d5GZQIf0NFtUfAC2ipqXSNCKUsW2PaKeF086DHYntYCWqb2Ik4kDozucg3E1?=
 =?us-ascii?Q?Sf4=3D?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DS0PR11MB6495.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230031)(1800799015)(366007)(376005)(38070700009); DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?RUTBj3viSwJTemg6ezmeSLyYeECr4nt1rfxp7lIqKM0Uxyuv441R0MfGU4jr?=
 =?us-ascii?Q?5GVKqhYVocSxtKeA1IILqqxjEUxNIEKDXSxr2G79udDJCQpBkQIcStyhTE5T?=
 =?us-ascii?Q?T6ZQ/ysEUJzspUECpEGqh/GlS2bvIKLIW7wk+Bd9RR5JRNy03/xQCDwAsYav?=
 =?us-ascii?Q?OYEdiMxPuWQQQyyxZqoe1H1qbzMUk3rJuhg9H++oAZMFJrfCttgbQwUNJJLl?=
 =?us-ascii?Q?IhBccHqzquDZhMv3rwPQRGaIxbJY2/ER5ma9CEBh6bYnNh0rN2CiPE+4xlD2?=
 =?us-ascii?Q?Fu05BejOg7Rc1vR5GKWC3xS2p2W/zMko8TTzbIfn2VGidkbyK8V6PCA/a3B4?=
 =?us-ascii?Q?Myd6UYSB4r9JDJp2llOpNNye/N4sCChx8K4Qf86H3KpbNwgtU10uWk6Cyo/u?=
 =?us-ascii?Q?9jH8VLPGJBmr+JaNzBBa9vZlHgf2JMoCT8WfNK5s898zHtK2s1WdAzpUhpVB?=
 =?us-ascii?Q?SC0l/aeGd4faD6+LuiYfyD5dGOb8xPFwj8jhj1jfn8xVBdJRK+ZNuFrGGRmF?=
 =?us-ascii?Q?vQB8CZvbut4JNp29+2QteT2Qz8iBeR+lcwapC4N9Q7Jk4vX8vQRluXeIrv4m?=
 =?us-ascii?Q?OUVQHwrR3c8ECPrPdoqoG95rCzi/lv3uinLq7TOt4WdQV53p96rcOEhLtsAO?=
 =?us-ascii?Q?zxRkUVYwEsKIVNILpCuelcXRIAy352QG1LhMjRrmwJwQLJOJoTx0ekPXmQMS?=
 =?us-ascii?Q?oC5enIrVR32OIdJFRCmjqKCQ/PmATxL0FduaQxeCBXNNVuy4r0HoLGbCe3CP?=
 =?us-ascii?Q?9erX0LUXdL53L7u0gVtiIOLJCSnj2CsRc7XcqkYgseXJTkq+bJFQsQegJAA9?=
 =?us-ascii?Q?+kQSRYPCNGlgK6k8nI24TfjDBDv7zNS8wShfP8PgsFjH6vQ1cU0kGe2afVDw?=
 =?us-ascii?Q?ht839Qc5lYQ+ZRgZFX3+ZK84vMtIZHctaZaSJUUrCyyjJm0wOzUxq8If4cMB?=
 =?us-ascii?Q?cw4h/NnvL66ZwpwSfPa/x+0H8dXZ21ISTC2PmQwgn/n/ni2v+8QIcwD45yYr?=
 =?us-ascii?Q?9kQigqYLCpXdFWidyO2tI4Djsit4y3gBLWP14bHIF9lHPf7S28S/lXtv67q0?=
 =?us-ascii?Q?I7PWPpG+tv3VTWiOuCcwfYiHgpsRkKLcVed7/EQ3yOhbBm+pu22ZcA65iRNW?=
 =?us-ascii?Q?YAsKRb0HRYn538fOCiE6OzC03wRbQ79/bSazjca5OZRX/Ff4q0GBUBszNo7s?=
 =?us-ascii?Q?RZBuz1CtrO8shUUoZ4OWaPFAc3KSCVJrk1aByN7H4xn0bJ6xA6NMG4eo3cRo?=
 =?us-ascii?Q?XhCvqhH9zq2SKp3oMRUYIftb1eWdwdukuLzzGmZ5d5m7AiaZPCIWomP7c3j3?=
 =?us-ascii?Q?/DRjjWyyR7a3GTgBWnmhldT45IWn6J0yYlgd6/1BNNPQ52nAH1FgCYAchvN0?=
 =?us-ascii?Q?UIhn6spSxhoQUtMviAlaJ8xtV4lCkuBZYinU6dL1J2Qh2uyhj62bOijRYQiW?=
 =?us-ascii?Q?4fwVS7N1wpuBOwXse+IgGkP8xbAAJqUdjHTtlNVyTqgBioPRQmMLIK3HbFFR?=
 =?us-ascii?Q?4bORnBZr8EkViXI3QAQoSzwdXbdlYrnMnqAj/zLSXlwfHDolmexfe5v+zdw8?=
 =?us-ascii?Q?h4lzTXa2WKT4KWmvDWCLPWPBy4yvGfNkHbEOR9Oy?=
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: DS0PR11MB6495.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 199572db-47c3-4f07-1a71-08dc83a86416
X-MS-Exchange-CrossTenant-originalarrivaltime: 03 Jun 2024 08:37:23.6148 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: YW4x/UtizLsRScXPzufWA6xoNkbXvCN0bS4HiUaW1gQmVefTgIan+rDPx26n63YzWvSQPCeCoRzKjuJTPOTvow==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: IA1PR11MB7270
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
> From: Roper, Matthew D <matthew.d.roper@intel.com>
> Sent: Saturday, December 2, 2023 5:38 AM
> To: Lobo, Melanie <melanie.lobo@intel.com>
> Cc: intel-gfx@lists.freedesktop.org; Heikkila, Juha-pekka <juha-
> pekka.heikkila@intel.com>
> Subject: Re: [Intel-gfx] [PATCH] drm/i915: Support FP16 compressed format=
s on
> MTL
>=20
> On Fri, Dec 01, 2023 at 02:41:33PM +0530, Melanie Lobo wrote:
> > Supports FP16 format which is a binary floating-point computer number
> > format that occupies 16 bits in computer memory.Platform shall render
> > compression in display engine to receive FP16 compressed formats.
>=20
> The explanation here is somewhat confusing and might also be missing a fe=
w
> words.  What you're actually adding support for is an RGB64 format where =
each
> color component is a 16-bit floating point value, right?
>=20
> >
> > This kernel change was tested with IGT patch,
> > https://patchwork.freedesktop.org/patch/562014/
> >
> > Test-with: 20231011095520.10768-1-melanie.lobo@intel.com
> >
> > Credits: Juha-Pekka <juha-pekka.heikkila@intel.com>
> > Cc: Juha-Pekka Heikkila <juhapekka.heikkila@gmail.com>
> > Cc: Bhanuprakash Modem <bhanuprakash.modem@intel.com>
> > Cc: Swati Sharma <swati2.sharma@intel.com>
> > Reported-by: kernel test robot <lkp@intel.com>
> > Reported-by: Dan Carpenter <dan.carpenter@linaro.org>
> > Closes:
> > https://lore.kernel.org/r/202310150454.S9QF86bl-lkp@intel.com/HEAD
> > detached at 29b1181aa95a
>=20
> I think you misunderstood the robot's directions on your earlier patch.
> It said that you should add these lines if you were fixing the mistakes "=
...in a
> separate patch/commit (i.e. not just a new version of the same patch/comm=
it)..."
> Since you're just fixing this in the second version of the same patch you=
 shouldn't
> add these lines, otherwise it implies that the whole patch (i.e., the nee=
d to add
> support for this new format) was something reported by the test robot.
>=20
> Instead you should pass the -v flat to git format-patch when creating a n=
ew
> version of your patch (e.g., "-v2" for the second revision) and also incl=
ude an
> indication in the commit message about what has changed since the previou=
s
> versions.  E.g.,
>=20
>         v2:
>          - Added foo
>          - Fixed bar
>=20
> Also, you seem to have some unintended text at the end of the Closes:
> line that didn't belong there anyway.
>=20
> > Signed-off-by: Melanie Lobo <melanie.lobo@intel.com>
> > ---
> >  drivers/gpu/drm/i915/display/intel_fb.c            | 10 ++++++++++
> >  drivers/gpu/drm/i915/display/skl_universal_plane.c |  2 +-
> >  2 files changed, 11 insertions(+), 1 deletion(-)
> >
> > diff --git a/drivers/gpu/drm/i915/display/intel_fb.c
> > b/drivers/gpu/drm/i915/display/intel_fb.c
> > index e7678571b0d7..494baf20f76b 100644
> > --- a/drivers/gpu/drm/i915/display/intel_fb.c
> > +++ b/drivers/gpu/drm/i915/display/intel_fb.c
> > @@ -91,6 +91,8 @@ static const struct drm_format_info gen12_ccs_formats=
[]
> =3D {
> >  	{ .format =3D DRM_FORMAT_P016, .num_planes =3D 4,
> >  	  .char_per_block =3D { 2, 4, 1, 1 }, .block_w =3D { 1, 1, 2, 2 }, .b=
lock_h =3D { 1, 1,
> 1, 1 },
> >  	  .hsub =3D 2, .vsub =3D 2, .is_yuv =3D true },
> > +	{ .format =3D DRM_FORMAT_XRGB16161616F, .depth =3D 64, .num_planes =
=3D
> 2,
> > +	  .char_per_block =3D { 8, 1}, .block_w =3D { 1, 4}, .block_h =3D { 1=
, 2},
> > +.hsub =3D 1, .vsub =3D 1 },
>=20
> Should there be an ARGB form of this supported as well?
>=20
> >  };
> >
> >  /*
> > @@ -394,6 +396,9 @@ static bool plane_has_modifier(struct
> drm_i915_private *i915,
> >  			       u8 plane_caps,
> >  			       const struct intel_modifier_desc *md)  {
> > +	const struct drm_format_info *info =3D
> > +		lookup_format_info(md->formats, md->format_count,
> > +DRM_FORMAT_XRGB16161616F);
> > +
> >  	if (!IS_DISPLAY_VER(i915, md->display_ver.from, md->display_ver.until=
))
> >  		return false;
> >
> > @@ -408,6 +413,11 @@ static bool plane_has_modifier(struct
> drm_i915_private *i915,
> >  	    HAS_FLAT_CCS(i915) !=3D !md->ccs.packed_aux_planes)
> >  		return false;
> >
> > +	/* Check if CSS modifier and FP16 format is supported on different
> platforms */
> > +	if (intel_fb_is_ccs_modifier(md->modifier) && info &&
> > +	    info->format =3D=3D DRM_FORMAT_XRGB16161616F &&
> DISPLAY_VER(i915) < 14)
> > +	       return false;
>=20
> When I look at bspec 49250 and 49251, it appears that this format can be
> supported with compression on display versions 12 and 13 as well.  Is the=
re some
> other reason (e.g., a hardware workaround) that requires us to restrict t=
his to
> version 14 and higher?
>=20
>=20
> Matt
>=20
> > +
> >  	return true;
> >  }
> >
> > diff --git a/drivers/gpu/drm/i915/display/skl_universal_plane.c
> > b/drivers/gpu/drm/i915/display/skl_universal_plane.c
> > index 245a64332cc7..f5e9be57a74b 100644
> > --- a/drivers/gpu/drm/i915/display/skl_universal_plane.c
> > +++ b/drivers/gpu/drm/i915/display/skl_universal_plane.c
> > @@ -2091,6 +2091,7 @@ static bool
> gen12_plane_format_mod_supported(struct drm_plane *_plane,
> >  	case DRM_FORMAT_XBGR8888:
> >  	case DRM_FORMAT_ARGB8888:
> >  	case DRM_FORMAT_ABGR8888:
> > +	case DRM_FORMAT_XRGB16161616F:
> >  		if (intel_fb_is_ccs_modifier(modifier))
> >  			return true;
> >  		fallthrough;
> > @@ -2115,7 +2116,6 @@ static bool
> gen12_plane_format_mod_supported(struct drm_plane *_plane,
> >  	case DRM_FORMAT_C8:
> >  	case DRM_FORMAT_XBGR16161616F:
> >  	case DRM_FORMAT_ABGR16161616F:
> > -	case DRM_FORMAT_XRGB16161616F:
> >  	case DRM_FORMAT_ARGB16161616F:
> >  	case DRM_FORMAT_Y210:
> >  	case DRM_FORMAT_Y212:
> > --
> > 2.17.1
> >
>=20
> --
> Matt Roper
> Graphics Software Engineer
> Linux GPU Platform Enablement
> Intel Corporation

Thank you Matt.=20
I have addressed your comments in the next revision.
Ref: https://patchwork.freedesktop.org/patch/596756/?series=3D124957&rev=3D=
6

Regards,
Melanie Lobo
