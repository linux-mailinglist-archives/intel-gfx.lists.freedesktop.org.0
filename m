Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id D9228A69FFE
	for <lists+intel-gfx@lfdr.de>; Thu, 20 Mar 2025 07:54:54 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 1848110E105;
	Thu, 20 Mar 2025 06:54:53 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="SGRaBOD3";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.13])
 by gabe.freedesktop.org (Postfix) with ESMTPS id B7EE810E105
 for <intel-gfx@lists.freedesktop.org>; Thu, 20 Mar 2025 06:54:46 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1742453691; x=1773989691;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=8JBaszLX0iMBpoQoK3uAV4X8xnktvyL8CK0wv4Opcl4=;
 b=SGRaBOD3rgISKBYrQotbzeOrLlzOfbyXfsgYGQTs7TrweW1ZqbR8yeNh
 4tzJXQ3nJ0xa8O17aY3CCvYvqH8FZ/tfHPL4v7LZPDCPwprbZwUQur4H5
 nlu789zl/VQ5fbzV+aBwt5k11dMXi049jzzCa2G+SKhrsCTk77ongb6Kh
 fMrBrUHMrnpqV8dUvgSGwYg7XoSVfeXpRzGz5WHSrPp4uWWej87qfRo6r
 DfwZi6lk2/yaMDifm2RcnTNBoJ1jfHKuvG4+5uQB1QFBRVvytMuarbLRi
 ifaXUN7HCPoCBuz14LSxzzlC9A2MxoTcAh14fzlkvfMYQQzKMHUeZR6UJ A==;
X-CSE-ConnectionGUID: Tn8UY7RgRxmN5P30hNwzeQ==
X-CSE-MsgGUID: 2wsAetbTRPy1QkdqyUDfUw==
X-IronPort-AV: E=McAfee;i="6700,10204,11378"; a="54662121"
X-IronPort-AV: E=Sophos;i="6.14,261,1736841600"; d="scan'208";a="54662121"
Received: from fmviesa006.fm.intel.com ([10.60.135.146])
 by orvoesa105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 19 Mar 2025 23:54:44 -0700
X-CSE-ConnectionGUID: gdeRLcrUSFCmqJbrNQOjoA==
X-CSE-MsgGUID: 5USs9BLSSBKcaIcaeEoxWg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.14,261,1736841600"; d="scan'208";a="122796738"
Received: from orsmsx901.amr.corp.intel.com ([10.22.229.23])
 by fmviesa006.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 19 Mar 2025 23:54:43 -0700
Received: from ORSMSX901.amr.corp.intel.com (10.22.229.23) by
 ORSMSX901.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1544.14; Wed, 19 Mar 2025 23:54:42 -0700
Received: from ORSEDG601.ED.cps.intel.com (10.7.248.6) by
 ORSMSX901.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1544.14 via Frontend Transport; Wed, 19 Mar 2025 23:54:42 -0700
Received: from NAM10-BN7-obe.outbound.protection.outlook.com (104.47.70.47) by
 edgegateway.intel.com (134.134.137.102) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.44; Wed, 19 Mar 2025 23:54:42 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=eRZhcfgDpG49KQhg+I3tDpWKYaB7G6ChIBXEhc5vrNTwmzCfoUPaNcebVzAjgiOP2Nvvn4omDWMeuX/Om90spbSqOXKjVY+Z+Oi2yhr0S00oKtocBYktWZVxxtjCmya5W7Os4+gMqTRpd0N6xCy7a1j2v/IAyTU8uVeNjk582myqk2K3jED6gAYzwhzhQOEVEY/wOhuCh3F82f4Y3LUgesbLqNExJtAl1ezWfqDl3arZlOAsoJjbxKxdHn05FuLhcnl4D/53BbyegsVPw0T15udWspBN5zVKB7vCHg8iEyS6GUOK6ChoKzFe61dTSw1J9Ma3Ub+CjOZurQSbWz5Rsw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=g0b5Hc8T7AO+CFVH+qDUh/fygw7tPcx1Iwq9z5vCCcE=;
 b=jKt7gWVE0DmS/FWxYMXB8YbK0+EJbkTp148P8TsXqCaqfouWsj3LhbYUQAqmQrZdnRlRroUWRCX3roD7i5avqKKWraDtrrO+lOnAs0TZSE/T3KMzPWybw1n3qSHjTamgxfSHlN5PA+KKP4FaimxWf5iNQPacBFpKGXDA/0YiXU+hiQTEJPG3Xhhlyv8kQsUPKz8iD0d8scl8B1h7YqOnJUPldoEl0O8UQ3+E+FU4dT/ttH23xyFSYHuEuS8BCm/U3AWCD6pbOWyOlpPl1/zE8G4vBdwUfkCwovBR/f4EaKJioomW5SKb12BQ3omEDEMi6PpzOuEIqHHlbUycEG6nCQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from SJ0PR11MB5867.namprd11.prod.outlook.com (2603:10b6:a03:42a::13)
 by CO1PR11MB5156.namprd11.prod.outlook.com (2603:10b6:303:94::10)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8534.35; Thu, 20 Mar
 2025 06:54:40 +0000
Received: from SJ0PR11MB5867.namprd11.prod.outlook.com
 ([fe80::dc4d:b84:3424:b7e0]) by SJ0PR11MB5867.namprd11.prod.outlook.com
 ([fe80::dc4d:b84:3424:b7e0%3]) with mapi id 15.20.8534.031; Thu, 20 Mar 2025
 06:54:39 +0000
From: "Gote, Nitin R" <nitin.r.gote@intel.com>
To: Andi Shyti <andi.shyti@linux.intel.com>, intel-gfx
 <intel-gfx@lists.freedesktop.org>
CC: Andi Shyti <andi.shyti@kernel.org>
Subject: RE: [PATCH 4/4] drm/i915/gt: Use proper sleeping functions for
 timeouts shorter than 20ms
Thread-Topic: [PATCH 4/4] drm/i915/gt: Use proper sleeping functions for
 timeouts shorter than 20ms
Thread-Index: AQHblIal66FLK1Oj/E6rwmeDccAvMrN7n8CA
Date: Thu, 20 Mar 2025 06:54:39 +0000
Message-ID: <SJ0PR11MB5867633D383C63A025C6DA42D0D82@SJ0PR11MB5867.namprd11.prod.outlook.com>
References: <20250314021225.11813-1-andi.shyti@linux.intel.com>
 <20250314021225.11813-5-andi.shyti@linux.intel.com>
In-Reply-To: <20250314021225.11813-5-andi.shyti@linux.intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: SJ0PR11MB5867:EE_|CO1PR11MB5156:EE_
x-ms-office365-filtering-correlation-id: 8ce32bf1-44d3-4593-4fd1-08dd677c15b1
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0; ARA:13230040|376014|1800799024|366016|38070700018;
x-microsoft-antispam-message-info: =?iso-8859-1?Q?qL3OARAmalOUVBYcBdh0ZZFLdp3OeGHBrzFP3N4be0JNzZaj+NdoI0zyhk?=
 =?iso-8859-1?Q?ezRMsi76DZzVg7sxXarYaNYE0hcUyA00rVZfmFjMBzcUxO+pz68ZR1+J2v?=
 =?iso-8859-1?Q?XP39x2xqHajHM00G6rPP02eUgxFxCFW6T4w5K9VSi1/5N1hkUu6s6+puXC?=
 =?iso-8859-1?Q?mLCFzHDubOknmuaNI6BGTUsMtzZWoEFiNxjzMMiyn/PuQ3FJQwH+zbGIQ5?=
 =?iso-8859-1?Q?m6SqWTW3Hvx0/gDmh6iizYXgrGZXcWt47a3PnCx96E4ab+maJ6p1D+oqd2?=
 =?iso-8859-1?Q?TMlbbjDfeb1CqzmE7PRLmm5P55D32c+UUDwGKFDaiWSoHpi5UxShLV+2Oy?=
 =?iso-8859-1?Q?ntZMnoxheXAnsFz84cyW/lBPY4/XG9sqCIG2eoVAhJ+dut1UAfDyEfYLFi?=
 =?iso-8859-1?Q?Vppy4M/hbxVf1GBOc65SsaEA0ToPXLnrMt78q2nplfCnxQPiFTcmutmgSx?=
 =?iso-8859-1?Q?COfmClZDsAcUAE5prUgh3rlF8TSaJCUFQe2PRHJJt6Hq6TIsjx8+4FXlwH?=
 =?iso-8859-1?Q?ab8EWsZ/PBB5tIJ5qmT9WUJ2tZmRYjEvz4VBakueN4rLi/FkO1NWUE5iYs?=
 =?iso-8859-1?Q?HejlaRhoUd4NrksLNXA0Z9DMxXiMcmC+4wLDjpWAnThEo4B3Bv5/q0dqH6?=
 =?iso-8859-1?Q?7DAA70r5JPoQQpUwpMkZXrQhOzpnTS4awWp2PP4upcTlNVERonQRxg0o7E?=
 =?iso-8859-1?Q?PKJoSia/K6yq+O3+TPx2P+lQ1TRp2vr7kpcS4YEocwskM73gSCHnrjkCws?=
 =?iso-8859-1?Q?4CJPjTnn0cncVFdSu9omcr03P7U5VVFhEFrVTuNqCsE94rEPcTu3d9RoFq?=
 =?iso-8859-1?Q?+mhzHiZc7Q4dQhJKmYNdD4S2L/0owtQ622LTfTIQcahNotnES9mEF5T5ks?=
 =?iso-8859-1?Q?7FhU91rqzp6p+DStvf8KeNui1kQuduTFcepexMbjL3Gk0o4GD4cfcjnLLV?=
 =?iso-8859-1?Q?XakSNriFm9LcvUZho9b3OOzb28cxXPIeFGmPDlCTgOm9M54PoWnkix42MH?=
 =?iso-8859-1?Q?vziTwz6AoRfdATdsLr4ws40yVe3l36dYTDs+3XUnbJ0a2F0gLEx7I7p3mj?=
 =?iso-8859-1?Q?xXRFqE9GT4aCoEVWSJeS9LtLdQSPx4u7TAuxNdPZmn2aqR496X7lYiRq5o?=
 =?iso-8859-1?Q?Mwhmvy1VuPw51zjVYwEt5KJE8kMe03WE9aDC09Ib/s5fv/AfVbRUrR3HRE?=
 =?iso-8859-1?Q?RkePD6/thSJimeYMIZMEQRo6l+72hQXLGR6yZ4utp+xR6zUUmWNBy6MUEU?=
 =?iso-8859-1?Q?NpSHYragbHdBYPg1sNd1vfKRwfWBrUpPaJEmUerb0wXS/QXTAXCgcvguda?=
 =?iso-8859-1?Q?ombakKBILRNDlRylVOTU6uDu8x9OFqfswSFRXML86e623atg95GnDCEFQH?=
 =?iso-8859-1?Q?6aRjunHSenGe0U6i3QR3/peHCq4X7203SUg8sc07kul7yubLWWtOKNr4vs?=
 =?iso-8859-1?Q?aXI6ZfL1axwplAZz8jL6OzRP34rXp6SzLOkfgR7tAUQ2atR6db8ZIs+ZRD?=
 =?iso-8859-1?Q?sm3APBYTUS9GfGH4P5rg9v?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:SJ0PR11MB5867.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(376014)(1800799024)(366016)(38070700018); DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?iso-8859-1?Q?z2/ZCVCxFY+tFxMJ1RruFM7G5IlswGf2z45+KCe7xm0NsQvIpamuQZVtJj?=
 =?iso-8859-1?Q?4JfCoaBQC+8W02nvP44eHc32a9dsc26qpq/M+Sjnoitx3M0EHS9OHXdHAI?=
 =?iso-8859-1?Q?FhBcQemfXHhRtop0tfdxy53+b4RacZF2E7rnHbsB9Y0n86JBnhDEiKRoVa?=
 =?iso-8859-1?Q?RZS5wxWHfKXTy1EmmplIN/tkWYrJYJrbmjezqd5kFAPvW6Js5yHJ53OVli?=
 =?iso-8859-1?Q?nl2kG+5b7bKP6v0r8mQQA/Qecgi4TR0mk/zL1AjJ4TusXBu/2pUON4LD4V?=
 =?iso-8859-1?Q?ioYNC4dVo/RWstFzMafDpRBaWL/cSc3AVMaRRiBqOERb4ccIn4BN0R2Z2I?=
 =?iso-8859-1?Q?kXINX2jNsyu6YilhpJCyu0iKrqPLbqsW6OtTrI/l+qXWeCmIQv3/3Fa3Tc?=
 =?iso-8859-1?Q?eJC30KhCMzPIfhEYSeX9bjbcCabBuI1D0j/Co8S1UzZPs6cYRRuRjzorcs?=
 =?iso-8859-1?Q?m7IimamqnQ1JkkydIndNLrYm1IOQ+4p2fg1UNjmUP7lxvWvBZybw2Szwau?=
 =?iso-8859-1?Q?hTCcTH186bsZpKw2qI1TPPwqmkkxLuOslMVbInukHRahF1NcrK/wIGfXrf?=
 =?iso-8859-1?Q?nxoncK42EgUQBIrGCBz92X6Xe4DhkB6W9v01NP8QEocazpnpKohBY5oblB?=
 =?iso-8859-1?Q?ko2NE76r2WUeRCzfqq9l4WWFJPeV8KQp8FvnQQMylppIRsw92py4qk5O+r?=
 =?iso-8859-1?Q?Odw8YDZS1itlSsJh5xLS84DdmPF6Ybqsk1Ux+OadHLZapAAUO27Se/KLmZ?=
 =?iso-8859-1?Q?nGQb2Wnp5BC4PycinDDbiMJ9R8xFC7gL7+H/GcxSy2qCCJiajQ2CZzS8wP?=
 =?iso-8859-1?Q?MDxecNkExZmXZptEng+Tj7F0Jg9SpcfuDFBILQPqcSU0qJlISO0wk/nldV?=
 =?iso-8859-1?Q?jOCGzbbw4TujXK+jvLh1pN5cBKN2slnRf/LGb/zqmUdlA8S0ApCs8E+Xbb?=
 =?iso-8859-1?Q?qlDy1erdV1zeVY/YI1L+KoDKJZKVFJyeCjwfh2SpYK3D9xv07iWc7gh6c7?=
 =?iso-8859-1?Q?jeOBNR2sDRn6ZxpHUFtwNDbD6s5jk+i5ZImaDMm9vx3VCrYThMzrnPf/P/?=
 =?iso-8859-1?Q?j+A3WUs3aAIp3HuV7wJl7VccvQKLiG6WdCZmt3//Nh6NsmovGImcvrtfRT?=
 =?iso-8859-1?Q?ZU0m/CbyzLvm9T+o2hULYJyQmOQmrfoGzpeeA/DxmuGokf6av8S0PDjbLg?=
 =?iso-8859-1?Q?FL8aoFbF2em3rM3+KveiR8nLog6RgdcZ91p7QU2S+bu65soZucBhMTJTxa?=
 =?iso-8859-1?Q?KBk5XhtayzgVy4/j091L35fIDZrXX+qfubjR7wyRnPcd4UVf51xYSYmI7f?=
 =?iso-8859-1?Q?gxESld0CGE66BOfHQbGiXxDTul+WJI+nqqxo4DFQdE9UBMbHdukGlAS5tY?=
 =?iso-8859-1?Q?D34bZrKbzVOo+u7wwa21oeehQuzzE2k937ukEEuDj7VYwYziHFeNtz6Jv4?=
 =?iso-8859-1?Q?PNrqjggDAObRzXUalD5KV9WDuQ5sdaGaBSJQtISkpX/gVafkLzLq/RFNnh?=
 =?iso-8859-1?Q?eLWucQWN3/m5XbvCNL62vPvRuhphvj/iEIRTbCshJtEJ64MwT3MpIHsKfV?=
 =?iso-8859-1?Q?O3bTp9PmBfgZCYU3FTDHuG1H7323G0xdc6aX3VwTp3V/jdVA8WsXgsXeCH?=
 =?iso-8859-1?Q?ZTWqaIvr4ksaOzcpKttJkZ8VpIcG7DLTBT?=
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: SJ0PR11MB5867.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 8ce32bf1-44d3-4593-4fd1-08dd677c15b1
X-MS-Exchange-CrossTenant-originalarrivaltime: 20 Mar 2025 06:54:39.3693 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: jWtUSucPNJ0sTW/eQc2gL3trR5fLXEWVoVlbj9eYXJfhA1RTJIdyETh2CmxRF05eCzdoGP/IHNO46nsDwUCiqg==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CO1PR11MB5156
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

Hi Andi,

> Subject: [PATCH 4/4] drm/i915/gt: Use proper sleeping functions for timeo=
uts
> shorter than 20ms
>=20
> msleep is very unprecise for timeouts shorter than 20 milliseconds and mo=
st
> probably will sleep longer. Use
> uslee_range() instead.

Typo:
%s/uslee_range()/usleep_range()

With typo fix, the=A0patch looks good to me.
Reviewed-by: Nitin Gote <nitin.r.gote@intel.com>

>=20
> Signed-off-by: Andi Shyti <andi.shyti@linux.intel.com>
> ---
>  drivers/gpu/drm/i915/gt/selftest_rc6.c | 3 ++-
> drivers/gpu/drm/i915/gt/selftest_tlb.c | 2 +-
>  2 files changed, 3 insertions(+), 2 deletions(-)
>=20
> diff --git a/drivers/gpu/drm/i915/gt/selftest_rc6.c
> b/drivers/gpu/drm/i915/gt/selftest_rc6.c
> index 908483ab0bc8..99de5d85a096 100644
> --- a/drivers/gpu/drm/i915/gt/selftest_rc6.c
> +++ b/drivers/gpu/drm/i915/gt/selftest_rc6.c
> @@ -60,7 +60,8 @@ int live_rc6_manual(void *arg)
>=20
>  	/* Force RC6 off for starters */
>  	__intel_rc6_disable(rc6);
> -	msleep(1); /* wakeup is not immediate, takes about 100us on icl */
> +	/* wakeup is not immediate, takes about 100us on icl */
> +	usleep_range(1000, 2000);
>=20
>  	res[0] =3D rc6_residency(rc6);
>=20
> diff --git a/drivers/gpu/drm/i915/gt/selftest_tlb.c
> b/drivers/gpu/drm/i915/gt/selftest_tlb.c
> index 3941f2d6fa47..69ed946a39e5 100644
> --- a/drivers/gpu/drm/i915/gt/selftest_tlb.c
> +++ b/drivers/gpu/drm/i915/gt/selftest_tlb.c
> @@ -143,7 +143,7 @@ pte_tlbinv(struct intel_context *ce,
>  	if (ce->engine->class =3D=3D OTHER_CLASS)
>  		msleep(200);
>  	else
> -		msleep(10);
> +		usleep_range(10000, 20000);
>=20
>  	if (va =3D=3D vb) {
>  		if (!i915_request_completed(rq)) {
> --
> 2.47.2

