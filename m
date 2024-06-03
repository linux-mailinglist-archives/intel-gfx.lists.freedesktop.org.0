Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 52B3F8D7B4E
	for <lists+intel-gfx@lfdr.de>; Mon,  3 Jun 2024 08:05:36 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 386B910E2A9;
	Mon,  3 Jun 2024 06:05:32 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="SghOGexy";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.13])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 771BD10E2A9
 for <intel-gfx@lists.freedesktop.org>; Mon,  3 Jun 2024 06:05:29 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1717394730; x=1748930730;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=LAzvuLxILampntJ3X2Tgd/E4iWLNNz5p7jvF9Vr+ghE=;
 b=SghOGexyqwUgmReRa1ZQw6TJjUfqiBUsRRb7KCL3/EP3A+Ak03AukOLg
 0cL2XEPmOSQMhfvJgx9JIFG8PZeyr4ihJX9XJPR+pIUfz+ej7Kz3CEtA1
 iaYt3ufR/F9bucfxM/79dooNWPiN2yn9VOr/5oEK8kgfFYs1JHU+7G2oM
 XxYCUcxmZz0kDuM1T/tjpEAzUpULhcSMG+tPElCrLcrs2nTp+Z2cDN3fD
 a/dWG0Lt9ODQUGwYqfKVHFqpml35HHul3Ze9wSa5o7QBHG4fxcudO6MNY
 RzX9q0Td1/KUh3yBXFjCDspLOtuIyYmfAlWc7gvSyOlywSl4fCqZWMMOS Q==;
X-CSE-ConnectionGUID: +gWj2rxaQxGwownuflfjzg==
X-CSE-MsgGUID: j+5qb6UNTlCbgamKRtMORg==
X-IronPort-AV: E=McAfee;i="6600,9927,11091"; a="16814928"
X-IronPort-AV: E=Sophos;i="6.08,210,1712646000"; d="scan'208";a="16814928"
Received: from fmviesa005.fm.intel.com ([10.60.135.145])
 by fmvoesa107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 02 Jun 2024 23:05:29 -0700
X-CSE-ConnectionGUID: IFp4MwzJSeuGyywQBnd3pw==
X-CSE-MsgGUID: XgH7dja/TAeQXPDFn0P9kA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.08,210,1712646000"; d="scan'208";a="41212388"
Received: from orsmsx601.amr.corp.intel.com ([10.22.229.14])
 by fmviesa005.fm.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 02 Jun 2024 23:05:29 -0700
Received: from orsmsx612.amr.corp.intel.com (10.22.229.25) by
 ORSMSX601.amr.corp.intel.com (10.22.229.14) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39; Sun, 2 Jun 2024 23:05:29 -0700
Received: from orsmsx610.amr.corp.intel.com (10.22.229.23) by
 ORSMSX612.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39; Sun, 2 Jun 2024 23:05:28 -0700
Received: from ORSEDG601.ED.cps.intel.com (10.7.248.6) by
 orsmsx610.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39 via Frontend Transport; Sun, 2 Jun 2024 23:05:28 -0700
Received: from NAM12-MW2-obe.outbound.protection.outlook.com (104.47.66.47) by
 edgegateway.intel.com (134.134.137.102) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.39; Sun, 2 Jun 2024 23:05:28 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=CclAtc7H/SFfByqikyMtEDeEM5hRnqkbSwSlZ4t/h6aFykfiiDQ+SAS4XHj/d+KJecDz43wI3qG9m1Pl9ESLz14U8caMQ2ISbmxwu/dsgberjDFuO4DR18kGRROAvUGMw4Xzs2eNveOOLm788f9MO4xMrNM9KUGB4/nxlQQ/teoqlno3POawJcYQ/H9eXcPfE/XkcbNj0MNIms+GhK7/p9H6Y6yTAwTqPRmLdGfwcGDzgKVEL1rIgu4B65z5rITJpxM3zEGwS+2OJ8ve/fwm5/9uMV6GMuGXZp+H3wJt2noaW+Ubkt5STkmeDuar5TiLqfek5K23Ty4F6mp9Jx2MAA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=jtdj/zVnhcEbHHc3jD5BSrT5NSy3+2M83KOc5ztJknY=;
 b=IvwmstWXtsckO3wfIlXWGr4ml6kH2+SIEudEDZ0CWuSqBQJ7Wm577WxADAa5VJSGOwZ2UDs0RQ1qjXXsVufX5AvITMocLWLzXTdBLQ/hS9Xj6fpdXT7VDZCK5dXgM0h273p/Aia7MMpI6OYBsPoexkdpB2fDowQKUuVlHUYIcsZhLoInv5oVRvCKRpe29jZG4nFEzop8QZXUzKsgC1BhFddgbl1d9vfF4+15FXgdXaHnB+Wc+VI63rhmyUWQS1IS5+Fa95m8VJOeWMwJUR5wnCFcFip6iNaljhVjMmGxI+8tJ3YbvRULm/kDtONRC2iMtFlaULonHy2Y/l+PwR1oIw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from IA1PR11MB6348.namprd11.prod.outlook.com (2603:10b6:208:3af::16)
 by DM4PR11MB6019.namprd11.prod.outlook.com (2603:10b6:8:60::5) with
 Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.7633.25; Mon, 3 Jun 2024 06:05:26 +0000
Received: from IA1PR11MB6348.namprd11.prod.outlook.com
 ([fe80::4db5:b0d9:b6b3:bb52]) by IA1PR11MB6348.namprd11.prod.outlook.com
 ([fe80::4db5:b0d9:b6b3:bb52%4]) with mapi id 15.20.7633.021; Mon, 3 Jun 2024
 06:05:26 +0000
From: "Golani, Mitulkumar Ajitkumar" <mitulkumar.ajitkumar.golani@intel.com>
To: "Nikula, Jani" <jani.nikula@intel.com>, "intel-gfx@lists.freedesktop.org"
 <intel-gfx@lists.freedesktop.org>
CC: "Nautiyal, Ankit K" <ankit.k.nautiyal@intel.com>
Subject: RE: [PATCH v10 1/8] drm/i915: Separate VRR related register
 definitions
Thread-Topic: [PATCH v10 1/8] drm/i915: Separate VRR related register
 definitions
Thread-Index: AQHasliyzJH1yz+oLk24kewMkOjsn7Gvy4GAgAFvcqCAAAUBAIAEUudw
Date: Mon, 3 Jun 2024 06:05:26 +0000
Message-ID: <IA1PR11MB634864B32CFE7D4EE6C8235CB2FF2@IA1PR11MB6348.namprd11.prod.outlook.com>
References: <20240530060408.67027-1-mitulkumar.ajitkumar.golani@intel.com>
 <20240530060408.67027-2-mitulkumar.ajitkumar.golani@intel.com>
 <87o78nh0la.fsf@intel.com>
 <IA1PR11MB6348AB30F4F05CD617A5981BB2FC2@IA1PR11MB6348.namprd11.prod.outlook.com>
 <87r0difavj.fsf@intel.com>
In-Reply-To: <87r0difavj.fsf@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: IA1PR11MB6348:EE_|DM4PR11MB6019:EE_
x-ms-office365-filtering-correlation-id: f0306a4f-179b-4a7d-c389-08dc839329f6
x-ld-processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0; ARA:13230031|376005|1800799015|366007|38070700009;
x-microsoft-antispam-message-info: =?us-ascii?Q?S4tksRNIEMEU8zPEtnookcK5xFGodzI6ANhGcxXPmgTH5o2kSL/OmdsCdA2i?=
 =?us-ascii?Q?ieYpa+H0f7giU7gK69FQRfanReSIJmA07ZbWwENoijupeVN8AEEl684Wh9gs?=
 =?us-ascii?Q?cAihXRJoxsbGAfHuJaVTrn8tEanlnfWX+NODxjQXOB128SrRH34c+kpvpdIV?=
 =?us-ascii?Q?V2B4k6D6MyyafGD/cqpgBRxqjcJqjfWgTb3tmGznESlRsnjTTOGFHZ37Uz0I?=
 =?us-ascii?Q?u5hN03wO+EKV4y/6i8SolRC9Lwx8iupRwAbO942LBgjODPdqIpdnt8RyVcsP?=
 =?us-ascii?Q?/9tBkDsFKenzOx2gtm2TQQEqSaiu9sVsg18ZyW+2cry0BJoAhaO4lwXwtVtu?=
 =?us-ascii?Q?JhbFVxq5bBWz4FOeY9LP/egWcObhc01kHZFGgnAwl6IqoRGih/CV0CA1fQI1?=
 =?us-ascii?Q?E2VxpyY8nBVDoVb0hM5t/AnATcNZbHiMu9r0z58uKbrLvrtcBqdKiwgLjA6y?=
 =?us-ascii?Q?c6r11pVXJO1vSyhBo3JUNvWn3wICl65uyu/a7uy02ArpCwHrbS3FUmKiEi8Z?=
 =?us-ascii?Q?8K7ryGZYlrzgxPumipGQCAYoaUf9D8Qu9eADfZ0/xarejSBMdNkuUGUf6Ovd?=
 =?us-ascii?Q?HlxDc51x1rkgQLOOyM9hoSLf313p9HOVn6dx95PWFDax9VKxd8CjDVDK2TAi?=
 =?us-ascii?Q?QW8RdD/34Chx2ECVzGK8loOo4wmlsYdLp2oPXYT5YJCs04oRDrEP2Yoco8li?=
 =?us-ascii?Q?xAGpXK2ik60AMqWXDrImYcgJxMrXztkqCK3X06O2JCRRhU4fWw++IPq1o/mb?=
 =?us-ascii?Q?VNXLRg3QpkgE365zO1/X7Ik6amj3Br6klM+iqBHzy1Bg+PWIM49DouNYMsXK?=
 =?us-ascii?Q?RLUBl5Pbvdp2vRU9E2TSlqsqks44uq5LgOP8k/wL740J6ilSBtP+72bLtBzL?=
 =?us-ascii?Q?UW/NOynTLQC3SoPlPLsvc2EdtxWm9uj2fiDjRb1/3JyqHzxP1gljAr2xQ8kP?=
 =?us-ascii?Q?9xznb0F4IN1OB5H3UFC0KsRcFxW9qpGLROYCPkP+UV68g2O01G6/GWCIunJn?=
 =?us-ascii?Q?Ye/FjgwJLfHJGSz2fN3OQRwx5Rjur+tkuKtm1/dcjuT4Dy8bGNik/0C5zlSU?=
 =?us-ascii?Q?wctQd+UAcIqJlZKtS1hdMPAoiguEaPIbGoUOK4JvG839sZp9nxthGNtJuCLj?=
 =?us-ascii?Q?9ppg9lDWk2xVfST4UckZNQNkjwEU6JZRiehn6WpB89i7op9GRLgTACILqI2z?=
 =?us-ascii?Q?PhPG1AbM+KV0wntZWQNfCRbJGBuimwgS6vZRCJukCX9PxQlFsp42jSZSNmEb?=
 =?us-ascii?Q?Bnklslzv+5OYfjDtHPfvuQOtT5kYso/ZO1aUhBBAWg=3D=3D?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:IA1PR11MB6348.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230031)(376005)(1800799015)(366007)(38070700009); DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?P6gl9orekjs/OrFsuOegfXOnOYlYg+gBlIR2ikdRLPiuDDHB/yho9M+c9WRp?=
 =?us-ascii?Q?FDghYK/9fympvfSiGEfaS8odK+YPTL5M3juo1EFl0odxwNxZfrSuqqqsp0Tz?=
 =?us-ascii?Q?yvvw+2JsqIPmi7FCcO/h8o+tpL1QQQeknNpKCNn1/1Rs1+ZIM96LJdKDCyq8?=
 =?us-ascii?Q?PhZ4wwCd8pbuuqj7jr6skKODBesbZH7AHDmkOj8LqxHHaSleQElX4m+95ueY?=
 =?us-ascii?Q?qvpZdTdFwdidviVgspaeIvFBJjttZmPIJwRGSwUafDjJKoFR2GVGWJrl5Su5?=
 =?us-ascii?Q?lF3Y0gyC5uzM+ZsCqmMAD8/62GWxd/tgwEhFBkZhkgf1WsKXyR1ZIWBISfMB?=
 =?us-ascii?Q?F6OuV+GiOM0ig+WYqcyF2ZSaC3/JMRLctKk2w+ckS1Pm+2PY6DNPVocXWyVv?=
 =?us-ascii?Q?t9gdZfggn70mja3hi8BAj5YsqSHPfyYItqJQZ/FItvFNVHrjAtas6Ejh0ct3?=
 =?us-ascii?Q?oJZZNU8EKj2JdSwdC9HVD6UirmaQcWV6jKUZ8GOI/JAssZZIcY5WO8cXhNZk?=
 =?us-ascii?Q?ilQ+fdBbac7cR0i648lgaLiYFgraXnORWAuF66ltnrJtlcwo6ptuJAS/WfrB?=
 =?us-ascii?Q?LBdyDcSrsL24vAfWgL7nVWxD9VZRNdJkc58BHruyTvbgGrBNl53OZSCosQrL?=
 =?us-ascii?Q?vga1JL9NnKfZyo6Jl2nJeXCCM69RrlQ1qx/FZ0u18XPSd94UP16VIcOOZw2w?=
 =?us-ascii?Q?c8MvDuCHCibJV2lI8bziRVKcX7B4GLEBfD+WiazbbL+ubfWEnuI6hpQNTdA1?=
 =?us-ascii?Q?4CQLo0BbSfywNKN1zoE6wMJJXFU8iPOKOFHmv2FmAckEckhy0PkPZiZmyZSW?=
 =?us-ascii?Q?p3e8AXIgG8mnk0iTpD1lTDvpZ9zH97OlGcpiSX6KQNsvGOzEALkC5llB4ezN?=
 =?us-ascii?Q?SJPksCkMbXAJqHSmV0tmrNiQKO2zMxinK0MtRSkyR6tj67LLeViptjJA+6Zi?=
 =?us-ascii?Q?JElgtnTLLKAjLRYsAQ5O5IGfMX7+U9sXwv65VNZc2/jlag+KMmLFr4+U1Hek?=
 =?us-ascii?Q?XgGjuXZSErZwxAJ+zp9fObPWKsLbTgz5iKkK2zxgnrHaNVzIXT/J1K4VLCRr?=
 =?us-ascii?Q?zbHmUus+Xjnz1aRlT9FRm6iuB7t7DeVrnNwkU//8PQ8Wj9OM+VxqDNcmhOn0?=
 =?us-ascii?Q?ckr6o72n4/TqNcVWcLd2BQ+lWwiIR6zjOYTUPHZU4HLzwMbbUxOs94Nflwae?=
 =?us-ascii?Q?EQT54jaygK3/Pu9D7EIuIf1KcZNhV4Q4kSzx5ReRPNQXBbqRvg2iFAi3se4R?=
 =?us-ascii?Q?3v97d9kTuKEqS2oo9OY08haIQjlW8Wq249WgyjfBVRUTfW0uTof6MY+AqaW7?=
 =?us-ascii?Q?77ojeQxo4UAo+HV83c6kPL8aMFJJFsARPp4WSOftOKzWMt2aLZr/f49hDpIw?=
 =?us-ascii?Q?HiH9oha6GnnVDLxidkzxn/t/OwTjaQ1tG6DIIH66RvEknmfXPGObSSbIvtas?=
 =?us-ascii?Q?QsonOiNcSw6c2kbM4qA9gmU75ZKJGf250TZ2D88JpO0lOMTE6lW3wjCViyPU?=
 =?us-ascii?Q?zwTXVrl/kGnZyOUh6mxRBaG/yN78MKNyOZ2aS9rRLONyY6ux6pDEWvLwl2VK?=
 =?us-ascii?Q?77pijiZrmWqduhU1SYuYELNQwZqXICNpZm2uwJRcsByEfFp6lSl+J5HdvheR?=
 =?us-ascii?Q?DU3//rTYVmug0hLQsaEadDYqQ64LL8NoM2+czIbS0L7LxKU3lJ/CgtL8rWSN?=
 =?us-ascii?Q?t9CupzPrLBhuCTnzrt9UeKLGgcA=3D?=
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: IA1PR11MB6348.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: f0306a4f-179b-4a7d-c389-08dc839329f6
X-MS-Exchange-CrossTenant-originalarrivaltime: 03 Jun 2024 06:05:26.6642 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: EzvlefTB1CRH4Y6DNOrYd0Ewy5exWlOQf8s/f/sListpsfiAkOx/D9dE4Sk15DviYvLqHmOEPnqYs6/uUpq7JsTKILDwElUTYEipUAOW5FGTbVbAI6NqBBNm/MIVT95m
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DM4PR11MB6019
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

Hi Jani,

> -----Original Message-----
> From: Nikula, Jani <jani.nikula@intel.com>
> Sent: Friday, May 31, 2024 5:32 PM
> To: Golani, Mitulkumar Ajitkumar <mitulkumar.ajitkumar.golani@intel.com>;
> intel-gfx@lists.freedesktop.org
> Cc: Nautiyal, Ankit K <ankit.k.nautiyal@intel.com>
> Subject: RE: [PATCH v10 1/8] drm/i915: Separate VRR related register
> definitions
>=20
> On Fri, 31 May 2024, "Golani, Mitulkumar Ajitkumar"
> <mitulkumar.ajitkumar.golani@intel.com> wrote:
> > Hi Jani,
> >
> >> -----Original Message-----
> >> From: Nikula, Jani <jani.nikula@intel.com>
> >> Sent: Thursday, May 30, 2024 7:19 PM
> >> To: Golani, Mitulkumar Ajitkumar
> >> <mitulkumar.ajitkumar.golani@intel.com>;
> >> intel-gfx@lists.freedesktop.org
> >> Cc: dri-devel@lists.freedesktop.org; Nautiyal, Ankit K
> >> <ankit.k.nautiyal@intel.com>
> >> Subject: Re: [PATCH v10 1/8] drm/i915: Separate VRR related register
> >> definitions
> >>
> >> On Thu, 30 May 2024, Mitul Golani
> >> <mitulkumar.ajitkumar.golani@intel.com>
> >> wrote:
> >> > Move VRR related register definitions to a separate file called
> >> > intel_vrr_regs.h.
> >>
> >> But this is not just movement... there's a bunch of other (mostly
> >> unwanted?) changes there too.
> >>
> >> 'git show --color-moved' is a powerful tool for reviewing code
> >> movement. If it's not just movement, you have to fallback to manual re=
view
> of the whole thing.
> >
> > I have moved the VRR-related registers from i915_reg.h to
> > intel_vrr_regs.h and reordered them based on their register offsets.
> > However, if preferred, I can move only the VRR-related registers for
> > now and handle the reordering in a separate patch series later. Please
> > let me know if this approach is acceptable.
>=20
> Yes. You can check with 'git show --color-moved'. Also avoid the indentat=
ion
> changes.
>=20
> BR,
> Jani.
>=20

Sure,

I moved  the VRR-related registers and fixed some checkpatch issues only wi=
th new series.

https://patchwork.freedesktop.org/patch/596728/?series=3D126443&rev=3D11

Regards,
Mitul=20
>=20
> >
> > Regards,
> > Mitul
> >>
> >> > Signed-off-by: Mitul Golani <mitulkumar.ajitkumar.golani@intel.com>
> >> > ---
> >> >  drivers/gpu/drm/i915/display/intel_vrr.c      |   1 +
> >> >  drivers/gpu/drm/i915/display/intel_vrr_regs.h | 117
> ++++++++++++++++++
> >> >  drivers/gpu/drm/i915/i915_reg.h               | 100 ---------------
> >> >  3 files changed, 118 insertions(+), 100 deletions(-)  create mode
> >> > 100644 drivers/gpu/drm/i915/display/intel_vrr_regs.h
> >> >
> >
>=20
> --
> Jani Nikula, Intel
