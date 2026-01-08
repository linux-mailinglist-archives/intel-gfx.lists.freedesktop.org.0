Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id D2E4ED0347F
	for <lists+intel-gfx@lfdr.de>; Thu, 08 Jan 2026 15:19:38 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 67BBA10E747;
	Thu,  8 Jan 2026 14:19:37 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=fail reason="signature verification failed" (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="Ef5qv3Xz";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.12])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 8F16510E746;
 Thu,  8 Jan 2026 14:19:35 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1767881976; x=1799417976;
 h=date:from:to:cc:subject:message-id:reply-to:references:
 in-reply-to:mime-version;
 bh=gsfzIxlkjoP+imIpB+3Pwh+P6sebkA+mWs11rbyJ4JA=;
 b=Ef5qv3Xz+5RHsY0fBJxJRSPf3LlL565XSmk3Gu5Ku9BD8AyPkpIzT2c5
 NUv+vKa9yLXXq36EB4ksuPXYXCnTOQRhRtCNZN2jqnyEph9UooEFF1b/Z
 ynJyjprcx1d50NDOhNUi6bl2FIOhq4iVFjH9byC7BIro2e6iE9X7Xtevv
 1+LULXAlaYU+nUtGgl6TzWaXs1QxUJKC/MbQ4vOxxBHCMoF214fHi6J4e
 uIeal9U6rCBXE7LyQVKUInP1OdAMBbtxCa1W7WGREUXeZttkLR+lsjiQj
 RldZqq3ejtIwhJIOUfmHv80J67krFF9A4UKHREDcA4/zpsP19wF9ovLcc w==;
X-CSE-ConnectionGUID: SpAaZmmISNmziJopKOV/YA==
X-CSE-MsgGUID: 9+goZGdqQsa+2nAsG2qAwQ==
X-IronPort-AV: E=McAfee;i="6800,10657,11665"; a="73113703"
X-IronPort-AV: E=Sophos;i="6.21,211,1763452800"; d="scan'208";a="73113703"
Received: from fmviesa007.fm.intel.com ([10.60.135.147])
 by fmvoesa106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 Jan 2026 06:19:35 -0800
X-CSE-ConnectionGUID: cDbukg7wRXy3ntfywanqJg==
X-CSE-MsgGUID: Zt9yhCM4Q0+oOZw/1fOOFw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.21,211,1763452800"; d="scan'208";a="202833829"
Received: from orsmsx901.amr.corp.intel.com ([10.22.229.23])
 by fmviesa007.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 Jan 2026 06:19:35 -0800
Received: from ORSMSX901.amr.corp.intel.com (10.22.229.23) by
 ORSMSX901.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.29; Thu, 8 Jan 2026 06:19:34 -0800
Received: from ORSEDG901.ED.cps.intel.com (10.7.248.11) by
 ORSMSX901.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.29 via Frontend Transport; Thu, 8 Jan 2026 06:19:34 -0800
Received: from MW6PR02CU001.outbound.protection.outlook.com (52.101.48.57) by
 edgegateway.intel.com (134.134.137.111) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.29; Thu, 8 Jan 2026 06:19:34 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=b8b6iaQT7cWftIPkQEJIVN1LUnuH0QulKp8X1wsV8eMgzxo57hzuP1bdurmZbdaZZ/Lc/JoLpr2Drez9OHpm4ArwhYZ0JL0UPgN9lVU0sT9fge8oEePp4sLjF/jCHKuJ0q6ysnsaahGuFzZ1ummOwKAoX3DFaoMh6oWQH765mIa2wdadqqrUwnuaFKfMBLLH6Su5yunZmWed5dA7hy7qGVP3CzSyrxsKLYLJOPHP1EksZDEF3X6vOMhiaiShqXRvwlUI1eIoMmcs+1S0l3rCIqkIIk6NCeDxU7DGXpLSySDEb8cyYzrQoEI5jIT4m2h0d1Cfv/gA5rwGohrFoIfXyg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=2JPFEKd07Zee2T9E1XNFJml8YgYpVNTk/nI/8H7XUbM=;
 b=vVZs1rPKufrxS7Lfi9oTjzemS7tPJG4IVCvG3CbT9axMrRbeFiaCxgp3m/dvs4IU+kSo6ssxcr81RpRngN14jKyzbSjXzWVDojDU3i5XFDhK6ogrUHbn4DKqeSxkUOGI58jaEvmiqDlgXAFaN7tPj+WYKknYhQV/mYqNmdu2tfJAjYPks5ZBifLyESTZrh31smTHGCzD4r+FmpCahaQ25SR0FpvzNi19MeUeV6CcjhXb/hL7FtlwMGN1cScWD0fvyDL97A/W6raX2RD/gvD1WJNbSAzsNxTu+7uCUxv7f16TaA3c5lo6spKjVbD2U+NFF4C72KgsZA4oa2W6eL4CjA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from SJ0PR11MB4845.namprd11.prod.outlook.com (2603:10b6:a03:2d1::10)
 by IA3PR11MB9276.namprd11.prod.outlook.com (2603:10b6:208:572::19)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9499.2; Thu, 8 Jan
 2026 14:19:33 +0000
Received: from SJ0PR11MB4845.namprd11.prod.outlook.com
 ([fe80::8900:d137:e757:ac9f]) by SJ0PR11MB4845.namprd11.prod.outlook.com
 ([fe80::8900:d137:e757:ac9f%3]) with mapi id 15.20.9499.003; Thu, 8 Jan 2026
 14:19:33 +0000
Date: Thu, 8 Jan 2026 16:19:28 +0200
From: Imre Deak <imre.deak@intel.com>
To: "Kandpal, Suraj" <suraj.kandpal@intel.com>
CC: "Kahola, Mika" <mika.kahola@intel.com>, "intel-gfx@lists.freedesktop.org"
 <intel-gfx@lists.freedesktop.org>, "intel-xe@lists.freedesktop.org"
 <intel-xe@lists.freedesktop.org>
Subject: Re: [PATCH v2 09/15] drm/i915/cx0: Fix HDMI FRL clock rates
Message-ID: <aV-88GHbaC6Z3KXn@ideak-desk>
References: <20251217151955.1690202-1-mika.kahola@intel.com>
 <20251217151955.1690202-10-mika.kahola@intel.com>
 <IA3PR11MB89377095D5C55EFBB5F4D108E387A@IA3PR11MB8937.namprd11.prod.outlook.com>
Content-Type: text/plain; charset="us-ascii"
Content-Disposition: inline
In-Reply-To: <IA3PR11MB89377095D5C55EFBB5F4D108E387A@IA3PR11MB8937.namprd11.prod.outlook.com>
X-ClientProxiedBy: LO0P123CA0003.GBRP123.PROD.OUTLOOK.COM
 (2603:10a6:600:354::11) To SJ0PR11MB4845.namprd11.prod.outlook.com
 (2603:10b6:a03:2d1::10)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: SJ0PR11MB4845:EE_|IA3PR11MB9276:EE_
X-MS-Office365-Filtering-Correlation-Id: b0e52805-a720-47a7-9b73-08de4ec0f1ae
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0; ARA:13230040|376014|10070799003|366016|1800799024;
X-Microsoft-Antispam-Message-Info: =?us-ascii?Q?howYFoxo1e/zrcYII3TKoW0qnJLJZ7z/478Hwqv9zy+Ks/KuTO/0pYUJBRIb?=
 =?us-ascii?Q?c8KM1Ae0NW4Z7IPvBbx2vXMbVk8pqECU9Prpza2Gv1BU/BouNSRNWeyknZRQ?=
 =?us-ascii?Q?OwofwHqQ5zag+QHKlLKzXXOBs6gL6xQ+F8p+bB5J9rQrdHWKbocthmj7hD4Z?=
 =?us-ascii?Q?xs2nXSB58YFhsiQkcOoS9WhXZ7TV5WaetK8tVpf78DnqhZld5mUtANwAywdY?=
 =?us-ascii?Q?wsA222U3b5Hdaub0xGqmCf9VZPo38eMTbYK3lJfOvWDct0YyeFgRVFrSn5cm?=
 =?us-ascii?Q?084TqEr54jybchD1rng8ckwEblaV31Lvy+eQOjTdtKbn/5v0I9YdRK9TMha2?=
 =?us-ascii?Q?iWsTIBiCbci5OLJDlsDLFTDZYWbo0TKkYXJ6k4fMdkvgAFn+H3A+vpyKfTsG?=
 =?us-ascii?Q?tPu1fjkooOlJnrVFljm7MW7HFFY71eFsNSYxUokuUnRmmPlhFo+hsIcPxOTI?=
 =?us-ascii?Q?EYjau7FUxlzZKRZErBs2qZWmPn8QqIVZBOQHZkpXXCOmMV8aD9ROqDC5Uuwf?=
 =?us-ascii?Q?HzXyDGn2sBAvoe/lAVP9IA9VPqZGJA8ODCcecIQroj0Bn4u9Cy/llry/HeF+?=
 =?us-ascii?Q?JAX3/7LlKbRyA5B9JF0zoqULKfl5+ob8UQR9hRctYpGz2DzfqUqlIT62d3VY?=
 =?us-ascii?Q?SNiSif9cWr2y9hxdfvr3Y2UDTLnYEgxJrYmffjtjc2mo5JnyEKxElZJeDcIp?=
 =?us-ascii?Q?EON3S3hZUS25l4xrM5kJFHS4f1QB73r8vSff4K5eDgOlHERb03irQDv4qGrk?=
 =?us-ascii?Q?5haauBepLsAJwySRXp8O8lekRLDrOUyUsZisq/CNy/mH2uej/Zj9VtY3d2Af?=
 =?us-ascii?Q?53Pi0p4wxgWMNuyabHsiDoujliE7/56H2vuliVN8kHeIKwNfrHqP7SRkrssE?=
 =?us-ascii?Q?WYXI6n+K7EFTXLSK1gxvBiiHoAaIeBljjxzgvJQE/gaU/EKLCEWJWgHj1bYF?=
 =?us-ascii?Q?JLaEOfnp4fJnujzWnP+A7c6DrFQKNMgM3/0Xa4W7+noW4Fe3LgrWmBxDLuw2?=
 =?us-ascii?Q?W63uzOt/9hAh+wBxHCQLdRvKUstPW5M5NGT+HrRolCKZKvG2m3ZuADJJiTy4?=
 =?us-ascii?Q?/+gHcO3T+Gx9WdCk84qv45cGmJo7CqkpG/mkj79wZKL5BsI6E8DWg4vw/TX5?=
 =?us-ascii?Q?FQOZVaTaij+jMwfuwwccZ6QHvoeTKvnYhOvp6yehsyR4ef2xj8IlAc9nEpwg?=
 =?us-ascii?Q?v8xe4OkCQkb1QFJAMFjsw9aDubnUPVSXOqp/0KywyMfHIen+4BO0R847Ye98?=
 =?us-ascii?Q?D+JmjBABySAIyiPKJQ4L19OplcrXPOigXcPXpr4G5r3kIio7KM4aAo3zGnAG?=
 =?us-ascii?Q?p2qrgSAPlzne/lZ+qNzy2+ahuT2ApmjwDxHuPVlydMpb22zM8dTW3La1wATR?=
 =?us-ascii?Q?ZpcuiI1x2icg8n5NrVVGLYbfDcGh84B+aj1/dd1szPUjFmHTuyNgI3IFjuz9?=
 =?us-ascii?Q?B+h6XPsdRhAJgaYJicasOfzhI4FygX2U?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:SJ0PR11MB4845.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(376014)(10070799003)(366016)(1800799024); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 2
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?IYnnA0ss1wZS3fE/4M9oStTqT3mW1zGg6ikrnQlZQLJ6pOqrbfeb+9jUuHka?=
 =?us-ascii?Q?QzxIk4NqqT3dkKNk+094FfET9TNkXiI5Sb1D4B6yLmgsxquEKO3Nb1FNnPVj?=
 =?us-ascii?Q?9h4uS7Vhq1XGmiYeSzxd9eNEjW127AlpFh9+yF27eFGPvoNCkTZjuQvZfBKS?=
 =?us-ascii?Q?5XGnVjDlSb3NYLuIpTkssFO3fWLJxwIjFX88dWJZoeBQzUCNaZtPwlw+b7IR?=
 =?us-ascii?Q?B+YLm2waCKVUxD+1n83d35K1M58sINy23vour5P5cshluSBIgYzq/QqBgCgr?=
 =?us-ascii?Q?ljVlkUJ9yW/ovlOYrgfAX9Y0nx8bS8lNRSzPcX6xmn81jYObTCICpk/FC6CB?=
 =?us-ascii?Q?I8hZ8BzzocND7DMfcWfkOvP6F+c1TQ9eZPpyFQw+H0nwnSY3AL67py53ldAK?=
 =?us-ascii?Q?BA2JCUp3JOSYge4QipXO+9PbGjEfGH9YEOtgn81uUs3Q4osyu/lQG6qEYZ9d?=
 =?us-ascii?Q?76rXVfCLQMOhHQlLb+9Dtvpvqow/TNRqf8mgSGarGJYMkCEq4Su+eIQA9XbV?=
 =?us-ascii?Q?1zIQlSv4N7ewVn/ykX18vmiM2zADqlLQ2oFdt0kmsJ7oPUjKYVrx4hXAqe84?=
 =?us-ascii?Q?QDMSSViye5q1WKN1m26vdMks0olM64kPtaSojime9vriq3VhiTSNVssYrhYE?=
 =?us-ascii?Q?ZkFqtbIcODhD3k/+k2/g5y/tlf8WGP9kvO5/aHQdNO2OXQOfbxhQb3rP669g?=
 =?us-ascii?Q?81+h3u0e9JO61ayVqyfZPXga5MbZC4n6C9y/6HdKk6RF25LPVCTIE9Kess1m?=
 =?us-ascii?Q?yYNI5lYGf7aFynUzmGDvOht0jWReENBdQUdhg1t9jdX3Q8IeqU/ojkKOHU9s?=
 =?us-ascii?Q?bU/LaJjZz+RN/d+DzV6qXELjPmGY/nBK3Nb8Ow78f+SLdcaYwRowOk49AWpJ?=
 =?us-ascii?Q?pDQn0T03LYzqbDNqlkdHNAQmzzYARmDM3Blh7OQyRUWvaRezXt8YpjZmaKhT?=
 =?us-ascii?Q?E2wWA4jLilkNmWEDSmYVuNeAoOMboM0c1xbbADoBXFcWhzzaexcpK7kcFrFs?=
 =?us-ascii?Q?E/ZWR2GrGDoQqjSPb6Jbz6QDlY+6jtXUQNHdM6f56IMzdoEh+y6OzF/8g93d?=
 =?us-ascii?Q?OhfVOctuargeyYCCpEfnzN8KE3YQzi8EfGyS/fcv6OuLdVZ3sgoipXzjX8XN?=
 =?us-ascii?Q?hd+NdfqDl8KQF0UC5J2rCcItHwkgt/g8MhuSOaxN4VILEzHqpdpTLGiHgZQ4?=
 =?us-ascii?Q?RUUs2RKZ8o1V/zHZKHFOCCqZ2bXo+J5/1VEiQ/N8WADaNRE4LuIBSbHcEhkB?=
 =?us-ascii?Q?+VLCqS9kio+BTD0WL98BPGNNgoaOnUvz+4x4q4XaFvmRowSemwlv//kqX/bZ?=
 =?us-ascii?Q?LTCCcYNq/dz8eLFuavT/NCmCM5doodFov4ZB4pQ2ND9Pp1J6oNv9ID9THVKd?=
 =?us-ascii?Q?bXx5XOyiorc06g0kzoGym+bssveVHBNXLMMETYK1o30GQ57DHpBEafsLJNol?=
 =?us-ascii?Q?1EMFdReZtW+LjPg1v2GwpfYbj8LOenuBYWZOMYwb6ipZ0x9pfinaGS7ZwXQd?=
 =?us-ascii?Q?r/W83lfWeY+0O2lUzijiDbZNS0BO9Ad+DmMiXWvUE1lFRAfMIWPMvwqKF2LE?=
 =?us-ascii?Q?yR2WJy6qVWXNapmILV0yMIHIhB7y4EY52444iZb1PlOFv+OghDQrmZp9VQ/3?=
 =?us-ascii?Q?5WY1oECt54PLLR5uwFkTbgyUfcOQG3N/KQa+TC8bZkzl9JztP3zxmBf6SyzS?=
 =?us-ascii?Q?EtQEIeyKrsiHy4I7sOXUwMFs/6Vczaeb95CyAAABYM/OeIMJqNaZXXSf6Eyj?=
 =?us-ascii?Q?fJtaqoQI7ZhhswXv9K+Pz8d+1A0cNgWWkWAYNMiHSmHrBC2+j4/gqu4l8oy/?=
X-MS-Exchange-AntiSpam-MessageData-1: bnuS9AvcwxRKrQ==
X-MS-Exchange-CrossTenant-Network-Message-Id: b0e52805-a720-47a7-9b73-08de4ec0f1ae
X-MS-Exchange-CrossTenant-AuthSource: SJ0PR11MB4845.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 08 Jan 2026 14:19:32.9813 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: v+LkKntjRE/oLpCpPVcZGynfNDYH7kUZ5ZtChltqpLgxpqXHXVPH2o1WnBFHaHZ76wE6om7k2jSb0X7sGLvC5g==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: IA3PR11MB9276
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
Reply-To: imre.deak@intel.com
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Tue, Jan 06, 2026 at 06:04:18AM +0000, Kandpal, Suraj wrote:
> > Subject: [PATCH v2 09/15] drm/i915/cx0: Fix HDMI FRL clock rates
> > 
> > HDMI FRL clock rates are incorrectly defined. Fix these rates.
> 
> Patch can be dropped, you remove the .clock member anyway no point in
> having a patch whose code fix won't see Light of day by end of series.

Please don't drop this patch. The fix should be recorded in the git
history, even if the changed lines will be removed.

> 
> Regards,
> Suraj Kandpal
> 
> > Signed-off-by: Mika Kahola <mika.kahola@intel.com>
> > ---
> >  drivers/gpu/drm/i915/display/intel_cx0_phy.c | 10 +++++-----
> >  1 file changed, 5 insertions(+), 5 deletions(-)
> > 
> > diff --git a/drivers/gpu/drm/i915/display/intel_cx0_phy.c
> > b/drivers/gpu/drm/i915/display/intel_cx0_phy.c
> > index 4d006c14c049..0f28d02b7a69 100644
> > --- a/drivers/gpu/drm/i915/display/intel_cx0_phy.c
> > +++ b/drivers/gpu/drm/i915/display/intel_cx0_phy.c
> > @@ -1923,7 +1923,7 @@ static const struct intel_c20pll_state
> > mtl_c20_hdmi_594 = {  };
> > 
> >  static const struct intel_c20pll_state mtl_c20_hdmi_300 = {
> > -	.clock = 3000000,
> > +	.clock = 300000,
> >  	.tx = {  0xbe98, /* tx cfg0 */
> >  		  0x8800, /* tx cfg1 */
> >  		  0x0000, /* tx cfg2 */
> > @@ -1948,7 +1948,7 @@ static const struct intel_c20pll_state
> > mtl_c20_hdmi_300 = {  };
> > 
> >  static const struct intel_c20pll_state mtl_c20_hdmi_600 = {
> > -	.clock = 6000000,
> > +	.clock = 600000,
> >  	.tx = {  0xbe98, /* tx cfg0 */
> >  		  0x8800, /* tx cfg1 */
> >  		  0x0000, /* tx cfg2 */
> > @@ -1973,7 +1973,7 @@ static const struct intel_c20pll_state
> > mtl_c20_hdmi_600 = {  };
> > 
> >  static const struct intel_c20pll_state mtl_c20_hdmi_800 = {
> > -	.clock = 8000000,
> > +	.clock = 800000,
> >  	.tx = {  0xbe98, /* tx cfg0 */
> >  		  0x8800, /* tx cfg1 */
> >  		  0x0000, /* tx cfg2 */
> > @@ -1998,7 +1998,7 @@ static const struct intel_c20pll_state
> > mtl_c20_hdmi_800 = {  };
> > 
> >  static const struct intel_c20pll_state mtl_c20_hdmi_1000 = {
> > -	.clock = 10000000,
> > +	.clock = 1000000,
> >  	.tx = {  0xbe98, /* tx cfg0 */
> >  		  0x8800, /* tx cfg1 */
> >  		  0x0000, /* tx cfg2 */
> > @@ -2023,7 +2023,7 @@ static const struct intel_c20pll_state
> > mtl_c20_hdmi_1000 = {  };
> > 
> >  static const struct intel_c20pll_state mtl_c20_hdmi_1200 = {
> > -	.clock = 12000000,
> > +	.clock = 1200000,
> >  	.tx = {  0xbe98, /* tx cfg0 */
> >  		  0x8800, /* tx cfg1 */
> >  		  0x0000, /* tx cfg2 */
> > --
> > 2.34.1
> 
