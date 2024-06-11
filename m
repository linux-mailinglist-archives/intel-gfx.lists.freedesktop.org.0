Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id C95FB9046C5
	for <lists+intel-gfx@lfdr.de>; Wed, 12 Jun 2024 00:12:33 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id D9EC310E1EB;
	Tue, 11 Jun 2024 22:12:31 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="YU2q3x/g";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.9])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 0260410E1EB;
 Tue, 11 Jun 2024 22:12:28 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1718143949; x=1749679949;
 h=date:from:to:cc:subject:message-id:references:
 content-transfer-encoding:in-reply-to:mime-version;
 bh=VCWRVYY997bFn7wFCWwtHAZFFFoQLL4445JIRMQ9Jgk=;
 b=YU2q3x/gIJFbBFZW3BnOiEWvyJ4fiaz1ooDEsYA9nBSAtlImkquci0qN
 g5SQhnugElRcw1igeo63c64YYQ/pxtiJwM2uxikvnVgNaxHY3ZjF5FVpI
 ombohydQKT6PupbIwUiMGfEDGdgQng4eKYSGpvuFWhssQGtkpsaRLupBx
 O5He7/epIbGDe0mAtZPVOHY1UyfI0xcASM5zVoDhOZvT26xamVbWWzU/K
 2TqdX+sBCQ+34dJCLF3FBPaLDXEGGeVOMAsI80jcaR9wXQwMEHoI953Vv
 swPXSIhRj1k4PqJ+gSCylt6v30Wi6xfBmxC+T5d/71elgXRzkDk3BJ+Jq Q==;
X-CSE-ConnectionGUID: gZAjo6VoSvyZVt/MjFB5UA==
X-CSE-MsgGUID: Fp2IcoUQRoCnKIt/hhFENw==
X-IronPort-AV: E=McAfee;i="6600,9927,11100"; a="25560119"
X-IronPort-AV: E=Sophos;i="6.08,231,1712646000"; d="scan'208";a="25560119"
Received: from orviesa001.jf.intel.com ([10.64.159.141])
 by fmvoesa103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 11 Jun 2024 15:12:28 -0700
X-CSE-ConnectionGUID: 6V7oQjHTTtypxPxHwGuMJw==
X-CSE-MsgGUID: F1qHFEc+QeieKCJcslEyew==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.08,231,1712646000"; d="scan'208";a="77042875"
Received: from fmsmsx601.amr.corp.intel.com ([10.18.126.81])
 by orviesa001.jf.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 11 Jun 2024 15:12:28 -0700
Received: from fmsmsx602.amr.corp.intel.com (10.18.126.82) by
 fmsmsx601.amr.corp.intel.com (10.18.126.81) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39; Tue, 11 Jun 2024 15:12:27 -0700
Received: from fmsedg601.ED.cps.intel.com (10.1.192.135) by
 fmsmsx602.amr.corp.intel.com (10.18.126.82) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39 via Frontend Transport; Tue, 11 Jun 2024 15:12:27 -0700
Received: from NAM02-DM3-obe.outbound.protection.outlook.com (104.47.56.41) by
 edgegateway.intel.com (192.55.55.70) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.39; Tue, 11 Jun 2024 15:12:26 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=RkWMqgKn8KKVpIzcwc4hKQOWBqLNkZO4r6MrE4MTq9dDT1Sl+3btEwcOrFjlCPpnJ4RMFd3wcEVlJOpe9iPjhk4xSiuYhojFP/nQr+BUSeZtMEWRes88MWY/tYeXzGBSU4MCm5T+PiTOeaS/0k+IrOOkwVvU4Na7jyvygr87ZUbvfEfHq5Ka4w9JoP1oHyHzQn0dTLprKAVAOZaQP6IfVlJAVHEpV51SzfPlqKWEPgvOakcONAC0KVGQD9Z4xqZDO21wYQdrZ7Tulhqw3SS+Kd7PCW6MkVv1Oyc7g+/1+1gC4IQfBGtHFvfn/esQtom2abAmITyU5jELGnKbuYtYNQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=oT/ElrvS2Ughfy8gfWYZQ4WxwuE7MITcx8GafSl8rA8=;
 b=NEZhSQMZoyqM2FpO0oISxOUh0VfS0Yr9UlkEEieuyFxNjNIvwlz/pHpsA/PidU4QCqV3bFmqyS7PTn7314SWtyD5XRgqMi5w42nUU96h6GQQ4vQc5qssoxquw8OJbIwyrEg8bPCal9VDZaLb8+WLdw9d2BONUl2qR1RR2G6zTGqrqx48uac/3EXLMOSwdIzj0jfYNxehECPITYhn/hoMfnH3Xrz8VcMY1dtvp/RD6xDByv0qonKxHhBjUBJMe+D1UDF81m2d136YD1UTQED/gCYotHOPOlgxAecRofhrq5TWM/L+It/spOAFtCYo+9q0ES8DHX9UCU5Iw7Ck+NjU4Q==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from BYAPR11MB2854.namprd11.prod.outlook.com (2603:10b6:a02:c9::12)
 by BN9PR11MB5305.namprd11.prod.outlook.com (2603:10b6:408:136::18)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7633.37; Tue, 11 Jun
 2024 22:12:22 +0000
Received: from BYAPR11MB2854.namprd11.prod.outlook.com
 ([fe80::8a98:4745:7147:ed42]) by BYAPR11MB2854.namprd11.prod.outlook.com
 ([fe80::8a98:4745:7147:ed42%5]) with mapi id 15.20.7633.037; Tue, 11 Jun 2024
 22:12:22 +0000
Date: Tue, 11 Jun 2024 18:12:20 -0400
From: Rodrigo Vivi <rodrigo.vivi@intel.com>
To: Michal Wajdeczko <michal.wajdeczko@intel.com>
CC: John Harrison <john.c.harrison@intel.com>,
 <intel-gfx@lists.freedesktop.org>, <intel-xe@lists.freedesktop.org>, "Jani
 Nikula" <jani.nikula@intel.com>, Lucas De Marchi <lucas.demarchi@intel.com>,
 Matthew Brost <matthew.brost@intel.com>, Daniele Ceraolo Spurio
 <daniele.ceraolospurio@intel.com>
Subject: Re: [RFC 0/7] Promote GuC ABI headers to shared location
Message-ID: <ZmjLxGDpjo6EMUxN@intel.com>
References: <20240611143008.1900-1-michal.wajdeczko@intel.com>
 <2d9b0d82-3e2f-478a-bc7b-b6e589c70b38@intel.com>
 <a0d7968d-81c5-4328-8654-9feab682655d@intel.com>
Content-Type: text/plain; charset="iso-8859-1"
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <a0d7968d-81c5-4328-8654-9feab682655d@intel.com>
X-ClientProxiedBy: BYAPR01CA0048.prod.exchangelabs.com (2603:10b6:a03:94::25)
 To BYAPR11MB2854.namprd11.prod.outlook.com
 (2603:10b6:a02:c9::12)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: BYAPR11MB2854:EE_|BN9PR11MB5305:EE_
X-MS-Office365-Filtering-Correlation-Id: 68f4cd66-9ef1-44b4-829d-08dc8a639158
X-LD-Processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230032|376006|366008|1800799016;
X-Microsoft-Antispam-Message-Info: =?iso-8859-1?Q?hPAdQxsftRNJl1FEbHYJ+kpqlMD9AacFE4P1AvT+SDQhMmPUXGy0jvEgPc?=
 =?iso-8859-1?Q?QZgKaT2ARdj7rqa66G98i4gDl7eLV5donX6+kRGuuToh0cSaIIDPPlj+K3?=
 =?iso-8859-1?Q?8toiwV6ZdCgqtG/4YnufCweNfbI3vdGF2Zd7hDeFu6KUZXzQRBRHvvJBvn?=
 =?iso-8859-1?Q?+jk1N2C7O609u3/Ig2eetdTFdXy01Z/uN7wxo5j+SZ7rVRwEimVuMaSk2y?=
 =?iso-8859-1?Q?SSuOLD0XYhx13zBK2DY5UquOHzt6LMH06vywCUHgHB2Tq61peO87/lXDX2?=
 =?iso-8859-1?Q?ei4eAH8FHOK8Ok5h3uEHzXmA8xpHfcS0nrgIURpcH4zzKsHB9rJt6r+85b?=
 =?iso-8859-1?Q?hOlALzv9CsYpahDDLi5s58JCbgCmVB5+1hCfMxHXm/MCVO1x+xpyLPdrL3?=
 =?iso-8859-1?Q?Gip+sPtU5C8u6yU3xI6eD3uxR/qgHH/LK81Nrnt0Ii1M3Nuswjrb6WUYJA?=
 =?iso-8859-1?Q?A+bTFcrgPopTADjqCD+YPsHNqwnbsbFh5ZaFI+nSe3WX0J2wf3zAFUyYjH?=
 =?iso-8859-1?Q?NmQo+W76a/DPKABuBtdzKm3q5oGw1XICjpY1SlOjhTZhI0LtDzaZ5qJIek?=
 =?iso-8859-1?Q?9fSRBz1xaWWdNKcWik8NNhClVDwTEYbJlXmIHbX9HCs2Nz4QAPocqk9KC6?=
 =?iso-8859-1?Q?VcjvDEOvTCaGAGYVob2nTvGrBYcP94C7iegFYG4zWqzdkl3Cp9+tnVbM+a?=
 =?iso-8859-1?Q?tJvTf6eXXZIHomaWZj9msdUxkIJjk3biaPumm5qb4yG1V4mMFAumca7lUg?=
 =?iso-8859-1?Q?fPUYbwKEKSMMIXr5k5wwzxh0l7oQvE5R4DvDKntUoFZ272W9i9tDlpHEGl?=
 =?iso-8859-1?Q?lbf1q+go+pLl3cL++rdDbNcEH1o/jEO9mkKWL7axirAzzWBO8YSqe8Qi7E?=
 =?iso-8859-1?Q?kf0UMXSommIVUrsGqkL9d9tunI+rgqSMASwuacA0NCdh99jiNzl2GfwE3h?=
 =?iso-8859-1?Q?D2hl9lnNn0afl+hrIK/cq9qkoWNJV3NmYiZZ0ksv/N5MPpoZ1IpHJD7Wgf?=
 =?iso-8859-1?Q?v07NqjTJjrpNH5UVY87z9r+LsoX9np70dnHuezKX0VuugHt0LaAbv14fuR?=
 =?iso-8859-1?Q?c+vLHaSbuQKp3uBQKQqcF3eoLxMdLTAlo9RofR0QlZ5c5ey4csTCOarDZ+?=
 =?iso-8859-1?Q?QyXPv8a+Tkhr2E4yzLA1WK2UQdD3bzVXXFbqCl7iq5F+yjPfzzb8yq/hup?=
 =?iso-8859-1?Q?ZkZHEwwp+OkkerGo73AQxsuOJQEAa1CVqKiM1FdO4zCtOMhaihw0KR1WhC?=
 =?iso-8859-1?Q?BHa2wQ2/k48xAniuFMWxnBV52J5bzyAXxOmnzYkS8rClTmrJfjx6TrFVdf?=
 =?iso-8859-1?Q?xeOokp8HgKUUuZpheUjtFSfiF/rMJaq8QMmmyBQ8brAkGZjx0SZ3oJAAY1?=
 =?iso-8859-1?Q?6vjf0m6XrH?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:BYAPR11MB2854.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230032)(376006)(366008)(1800799016); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?iso-8859-1?Q?rcrvY7QM4lzSpXahfB6JhoNEiFzZek7w3f8FL6WAXoFquLErx6z3FUcdt/?=
 =?iso-8859-1?Q?0u8mrQbSoWvR5YqMLpB2wx2v5IKHlxpxVtZqKF/TxnlnbfJLdeK8TixsIw?=
 =?iso-8859-1?Q?UHuDXS6yjqNmZCZsFycQrTv5Xx66QVa4SJRYutRQ4o7CPwfSTwGYRNsi7h?=
 =?iso-8859-1?Q?PrPR2O+NeG9cixwPTZROy6/oxXzW55jPZc23JtgTjsb773tBYp4XNqe3Wt?=
 =?iso-8859-1?Q?1ReudgKZUF7VSGIn9A/mGkvM/SqWWAV7YuMjY9W6rSbjOK5hraBWrGdtCf?=
 =?iso-8859-1?Q?TKfay1ajzgz/+/4iMDLKKoChp3n/dCeG/yzOpgUMJkmmvUpevcLOHXxWfp?=
 =?iso-8859-1?Q?iJ5mxmW24W4rGzICV49zuE6ov7Fi4Ffs7qfl9jZ5e4PTLvQIFt2dBK826/?=
 =?iso-8859-1?Q?mJWVclxEThbWwYXKLN7B/e32yVjY23hOynoYtWKBwqgYl5kawNQjEaBIbo?=
 =?iso-8859-1?Q?wCMP7WBaRfDdYitySZrbxB/59POz6F3nK0rsH5F50m7aIETQ4NQ2C8hj05?=
 =?iso-8859-1?Q?DAseWw/6x2oV0HkITz76dNl1kZZzpBUjh7o9XPS0LizR2PKCe4jMjBs0H4?=
 =?iso-8859-1?Q?VfgMuHfcgywbChTtsGb+wCE+ctHOK1BvVjaLBYUeMVaxUICoJeZy7L0zxp?=
 =?iso-8859-1?Q?5yaRog5NhIOjb5Wu6bBMyuVQYzu2TzkxVTo71+Eb6P6zV7/sPoeE8XHEph?=
 =?iso-8859-1?Q?iVk2e1hkD9AR92EfaVAWJy5u1dIOFIj/1nRJjzypviQZwFF8dCZLFsqDxE?=
 =?iso-8859-1?Q?NaA/xoLditTbnGgCCBIYG5M5fC5dKvKUpGx15zo+zUlE2eh3U7XDEl2Vb0?=
 =?iso-8859-1?Q?oq8O/43g/hShtAythPZglf6b//eAmLjrL95L+oHCZl5xaKbli61FpLHyjv?=
 =?iso-8859-1?Q?UOIu5EKp4om0dB0/HeJAjsRwyMaPAnW35oNxkqxPLGjVN7jueA17b8tNuQ?=
 =?iso-8859-1?Q?mbX83w4amY1R702J4u7FpeiIcrHy8gxbTskWGXoX3cam/P6jjc4dSc58cE?=
 =?iso-8859-1?Q?uLvLtggWhy2aMLvgeYmWP97VeIDAg0YBwzk92jEC7361YaEowroGKhRaTj?=
 =?iso-8859-1?Q?mNzVdsJKRbTDEEma7Q8mGh/9PNQwwPwaefgOD3NnthwcSiujZ1s/BVf/D3?=
 =?iso-8859-1?Q?NNn5sLHnARpLs4idg8UFaDmwxT0T4Ls+XMP63WvvWWTSkjzaj+mEISBju4?=
 =?iso-8859-1?Q?P3JZ3t3DpLtNGCW+XSluakM4jNb6r0nF7+1KNsePdS5SST3fmPBiUqHWou?=
 =?iso-8859-1?Q?1KCiebIGjBP/dL6BWczPPdb1MfjQUYwXLsDaJjGBFEBEpnoF+ungwLQqJh?=
 =?iso-8859-1?Q?B1do/GtYWAbu1SBOPLxdYrAimh5i1GKOS96zt1Qo/ZIA1s6dkBx3ckQ/Z5?=
 =?iso-8859-1?Q?uMINNgFteo9rGJIF6p5g7ttKttoTAf1ACZ5ZM1caLT1j7cGwNLMemmNLLI?=
 =?iso-8859-1?Q?PzGbIX5BCDrPq5hxfjsq8WoWC/fSfVUv8TgxpO/5sQlkiDy1NVzH8OOgy/?=
 =?iso-8859-1?Q?nnjkrd7fhH641m9S7oMWam5VKBZ9YZzbaIhp1gpJz31BFwLGZkBh2cwHm4?=
 =?iso-8859-1?Q?5WT6iaGWdn+lX3wNGVi0qEc61zhC19GeXmLyxjCQvdB2mUdAE7J9zm3vyt?=
 =?iso-8859-1?Q?R53BbE4iDRv/dKPwoFNcUjDIukRuDVxh0N?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 68f4cd66-9ef1-44b4-829d-08dc8a639158
X-MS-Exchange-CrossTenant-AuthSource: BYAPR11MB2854.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 11 Jun 2024 22:12:22.6630 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: thoDDNNkcoV2lzvqZLqvw2Ntonuwon+aC48iTY8kJVYZC81hpM9ek6wgqxNSVm5QpnFs9gGgnGnBNuTV9rop3Q==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BN9PR11MB5305
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

On Tue, Jun 11, 2024 at 11:45:17PM +0200, Michal Wajdeczko wrote:
> 
> 
> On 11.06.2024 22:32, John Harrison wrote:
> > On 6/11/2024 07:30, Michal Wajdeczko wrote:
> >> There are many GuC ABI definitions named in the same way by the i915
> >> and Xe drivers, preventing proper generation of the documentation.
> >>
> >> Promote GuC ABI definitions to shared location that can be used by
> >> both drivers and can be included in documentation.
> > I still very strongly feel that this is the wrong place for such
> > documentation. We do not document any of the hardware registers in the
> > driver, nor the MI_ instructions, etc. Why is this any different? The
> > GuC ABI is not under the control of the Linux kernel driver, either i915
> > or Xe. It is effectively a hardware interface no different to any other
> > hardware interface. It is already fully documented by the owners of that
> > interface. Rather than just copying random chunks of that documentation
> > into the kernel driver, we should just be publishing the official
> > document itself. Same as we do for the rest of the hardware.
> 
> so go publish this official document
> 
> in the meantime IMO it is useful to show, with really little effort, on
> what grounds the communication between i915/Xe and GuC works, so
> everyone, not just selected engineers, can understand and review our
> implementation and check its correctness
> 
> furthermore, if you don't like any hw documentation then we should
> revisit what is already in gpu/i915 section and also reconsider all our
> efforts to document all non-static driver functions, as those functions
> are still internal to the driver, not to be used outside

I second that. This is useful documentation internal to our driver.
Specially with a fw which has an ABI that demands version compatibility
with the driver like this.

> 
> > 
> > John.
> > 
> > 
> >>
> >> Cc: Jani Nikula <jani.nikula@intel.com>
> >> Cc: Rodrigo Vivi <rodrigo.vivi@intel.com>
> >> Cc: Lucas De Marchi <lucas.demarchi@intel.com>
> >> Cc: Matthew Brost <matthew.brost@intel.com>
> >> Cc: Daniele Ceraolo Spurio <daniele.ceraolospurio@intel.com>
> >> Cc: John Harrison <John.C.Harrison@Intel.com>
> >>
> >> Michal Wajdeczko (7):
> >>    drm/xe/guc: Promote GuC ABI headers to shared location
> >>    Documentation/gpu: Separate GuC ABI section
> >>    Documentation/gpu: Switch to shared GuC ABI definitions
> >>    drm/intel/guc: Update CTB communication ABI
> >>    drm/intel/guc: Add new KLV definitions
> >>    drm/i915: Use shared GuC ABI definitions
> >>    drm/xe: Promote SR-IOV GuC ABI definitions to shared location
> >>
> >>   Documentation/gpu/drivers.rst                 |   1 +
> >>   Documentation/gpu/guc.rst                     |  23 ++
> >>   Documentation/gpu/i915.rst                    |   9 -
> >>   drivers/gpu/drm/i915/Makefile                 |   5 +
> >>   .../gt/uc/abi/guc_communication_ctb_abi.h     | 170 -----------
> >>   .../gt/uc/abi/guc_communication_mmio_abi.h    |  49 ----
> >>   drivers/gpu/drm/i915/gt/uc/abi/guc_klvs_abi.h | 112 --------
> >>   .../gpu/drm/i915/gt/uc/abi/guc_messages_abi.h | 264 ------------------
> >>   .../guc}/abi/guc_actions_sriov_abi.h          |   0
> >>   .../guc}/abi/guc_communication_ctb_abi.h      |   2 +
> >>   .../guc}/abi/guc_communication_mmio_abi.h     |   0
> >>   .../drm/{xe => intel/guc}/abi/guc_klvs_abi.h  |  18 +-
> >>   .../{xe => intel/guc}/abi/guc_messages_abi.h  |   0
> >>   .../guc}/abi/guc_relay_actions_abi.h          |   0
> >>   .../guc}/abi/guc_relay_communication_abi.h    |   0
> >>   drivers/gpu/drm/xe/Makefile                   |   5 +
> >>   16 files changed, 49 insertions(+), 609 deletions(-)
> >>   create mode 100644 Documentation/gpu/guc.rst
> >>   delete mode 100644
> >> drivers/gpu/drm/i915/gt/uc/abi/guc_communication_ctb_abi.h
> >>   delete mode 100644
> >> drivers/gpu/drm/i915/gt/uc/abi/guc_communication_mmio_abi.h
> >>   delete mode 100644 drivers/gpu/drm/i915/gt/uc/abi/guc_klvs_abi.h
> >>   delete mode 100644 drivers/gpu/drm/i915/gt/uc/abi/guc_messages_abi.h
> >>   rename drivers/gpu/drm/{xe => intel/guc}/abi/guc_actions_sriov_abi.h
> >> (100%)
> >>   rename drivers/gpu/drm/{xe =>
> >> intel/guc}/abi/guc_communication_ctb_abi.h (98%)
> >>   rename drivers/gpu/drm/{xe =>
> >> intel/guc}/abi/guc_communication_mmio_abi.h (100%)
> >>   rename drivers/gpu/drm/{xe => intel/guc}/abi/guc_klvs_abi.h (97%)
> >>   rename drivers/gpu/drm/{xe => intel/guc}/abi/guc_messages_abi.h (100%)
> >>   rename drivers/gpu/drm/{xe => intel/guc}/abi/guc_relay_actions_abi.h
> >> (100%)
> >>   rename drivers/gpu/drm/{xe =>
> >> intel/guc}/abi/guc_relay_communication_abi.h (100%)
> >>
> > 
