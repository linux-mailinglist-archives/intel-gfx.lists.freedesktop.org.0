Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id QBy7FXayiWndAgUAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Mon, 09 Feb 2026 11:09:58 +0100
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 9BA8F10E001
	for <lists+intel-gfx@lfdr.de>; Mon, 09 Feb 2026 11:09:57 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id C21BA10E3B8;
	Mon,  9 Feb 2026 10:09:55 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=fail reason="signature verification failed" (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="ZgwMx8+w";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.9])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 4126B10E3B7;
 Mon,  9 Feb 2026 10:09:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1770631794; x=1802167794;
 h=date:from:to:subject:message-id:reply-to:references:
 content-transfer-encoding:in-reply-to:mime-version;
 bh=u06HeW50dAqkUpJcfXAahWxsc54Lr+o+ISaQwfyMcxk=;
 b=ZgwMx8+wE5cmDP1GNMxbTQ51V7MKNBQBxp8ssXvx2XWAYgaPXtZ1A9iC
 PKxl8JBGnSDrzXN7/6veQGYn7m6JIjxRIRcQU+my2GzsB9hMHu4AKy+EL
 Zxaj5d+F2Z5b5S/R0N5DNhbokRJK5NXEVTfP1Axcr0Wo73dVue0lHaZbl
 oOYwVhH2UNa8H/gvuWyhJ+p6LibHkj+CCuevu+gTJkpLQtjiP1iMmiA6p
 aXcuUv4CyHiOlTqoCIa6elq7RbBA8lEfLLN1vNy7N/+cQsiLggPcSgFkd
 995m+P7Lh8T/77/D9GjuB2O34qpRAa5lXv1yob0Ujx3z4haSzV3A07uqp A==;
X-CSE-ConnectionGUID: m6qHaZyYSo6SiwZCzvgTSw==
X-CSE-MsgGUID: +N822ANRTKe/vQPGnhq8kA==
X-IronPort-AV: E=McAfee;i="6800,10657,11695"; a="82474485"
X-IronPort-AV: E=Sophos;i="6.21,282,1763452800"; d="scan'208";a="82474485"
Received: from fmviesa002.fm.intel.com ([10.60.135.142])
 by fmvoesa103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 09 Feb 2026 02:09:54 -0800
X-CSE-ConnectionGUID: beGkCJP3S82pcrpFOH4TgQ==
X-CSE-MsgGUID: kAoOodaMT3K7IVeiEkF4Eg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.21,282,1763452800"; d="scan'208";a="234487225"
Received: from fmsmsx903.amr.corp.intel.com ([10.18.126.92])
 by fmviesa002.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 09 Feb 2026 02:09:54 -0800
Received: from FMSMSX901.amr.corp.intel.com (10.18.126.90) by
 fmsmsx903.amr.corp.intel.com (10.18.126.92) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.35; Mon, 9 Feb 2026 02:09:53 -0800
Received: from fmsedg902.ED.cps.intel.com (10.1.192.144) by
 FMSMSX901.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.35 via Frontend Transport; Mon, 9 Feb 2026 02:09:53 -0800
Received: from CO1PR03CU002.outbound.protection.outlook.com (52.101.46.30) by
 edgegateway.intel.com (192.55.55.82) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.35; Mon, 9 Feb 2026 02:09:53 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=b+8Agxz78i+4BXHj5/NsXkl8PayZaokh0CRK7572JTPwpfaJ9hXpZVamzDzB0xBvBFjflZDVnY4ucrtaQKpZIBGDJLirrpeB48maqQhbWEm4QpoHXClpYkOMkebDiqscPMZV5TaTGXavq0mIrV82/83zT5h1eYQWApW7Cadq0quMlZpuEHRd/fys2qtMBvDZaMazVVyojtait6TlTEnJR768FbOSnDzB8arZsY5RCTYe9Z7Aag+KC2IBiGzMEHb1jOEGne8ixYFTC4/djoQ3O015LGCILeghujcsGUqcqr+3yRAqYlUCFamcguhXLmPGZCL79qtI32YYAC/PkaxAeQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=sDxv7zPnozG2eOsA7dSU9oJSQxQpNGrWChzVjs90ry8=;
 b=pjEQvhYUhHJnfuMy0v2fdtxSfnOHQHmagWGR6QgpLqfNUPmzGKBxc57X0WNx1vRxxoBsZKXx1KsY6V+9VyrowV64UhbyiM5tUhK+bgPK59+6fr4tOeTe7sjVXFSzsTIdqDQEXzBxpYGx5PfeZhGrAc+sHjZ0RoG9I+AE/Fe33Ut2Ne2fscuPG0ekhAE7QxEPCpvN7wkDqrIKlI80c8CRnOdgpJScrER8dGwQ5ebXBfIATxmCVRJlOnUQKKxerKh8J3M/GamgQyPp357UJZ77/z+2UlNToVq9B4C5vg0lZsvj2HsXR4Dcxo2UrtXivl3yNRsv2Pekb+sKcmMwcoW8hQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from SJ0PR11MB4845.namprd11.prod.outlook.com (2603:10b6:a03:2d1::10)
 by LV8PR11MB8724.namprd11.prod.outlook.com (2603:10b6:408:1fd::5)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9587.19; Mon, 9 Feb
 2026 10:09:51 +0000
Received: from SJ0PR11MB4845.namprd11.prod.outlook.com
 ([fe80::9ca5:4d1d:db45:f523]) by SJ0PR11MB4845.namprd11.prod.outlook.com
 ([fe80::9ca5:4d1d:db45:f523%4]) with mapi id 15.20.9587.017; Mon, 9 Feb 2026
 10:09:50 +0000
Date: Mon, 9 Feb 2026 12:09:45 +0200
From: Imre Deak <imre.deak@intel.com>
To: "Borah, Chaitanya Kumar" <chaitanya.kumar.borah@intel.com>, "Nautiyal,
 Ankit K" <ankit.k.nautiyal@intel.com>, <intel-gfx@lists.freedesktop.org>,
 <intel-xe@lists.freedesktop.org>, <stable@vger.kernel.org>
Subject: Re: [PATCH 1/2] drm/i915/dp: Fix pipe BPP clamping due to HDR
Message-ID: <aYmyafbsHVRH2crC@ideak-desk.lan>
References: <20260206104227.290231-1-imre.deak@intel.com>
 <f6b59555-01f6-49ff-aff4-a6da9d347332@intel.com>
 <9ca3365b-c595-4401-8663-9c18ccc45d45@intel.com>
 <aYmdYjjRljq0dVSL@ideak-desk.lan>
 <459f2c53-8679-4987-b190-c7f9c54f237a@intel.com>
 <aYmqKmGiEz7z6eUV@ideak-desk.lan>
Content-Type: text/plain; charset="iso-8859-1"
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <aYmqKmGiEz7z6eUV@ideak-desk.lan>
Organization: Intel Finland Oy - BIC 0357606-4 - c/o Alberga Business Park, 6
 krs Bertel Jungin Aukio 5, 02600 Espoo, Finland
X-ClientProxiedBy: GV3P280CA0020.SWEP280.PROD.OUTLOOK.COM
 (2603:10a6:150:b::32) To SJ0PR11MB4845.namprd11.prod.outlook.com
 (2603:10b6:a03:2d1::10)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: SJ0PR11MB4845:EE_|LV8PR11MB8724:EE_
X-MS-Office365-Filtering-Correlation-Id: b6bd1dd0-8673-4490-1fb2-08de67c35ca9
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|366016|1800799024|376014;
X-Microsoft-Antispam-Message-Info: =?iso-8859-1?Q?CMgBGFHGyZqdP19dshZBXuhzC7wl+e9Alacq0usMcc+U7GOJFk4HPxJq8v?=
 =?iso-8859-1?Q?jUyClvoXKdhHGosruUqFJOtaYSddr12iwZG4fXpPDMcCTaNaARzCkaIdUH?=
 =?iso-8859-1?Q?WbbxmPeTvCbYsviMoKnnBPzBLWSKljVCOFXRBbfoai6y+IzNWddW6h65Fp?=
 =?iso-8859-1?Q?IbN6ssnKcjllk+ezaVEHgVnzjWTbByKywZ++1pNUdRS9e7xlaLh3Q2J5VQ?=
 =?iso-8859-1?Q?1g3kBcUUvA1CwVm6zCW+A7HswdEnnl6xjSig7TtZ6TI+GQ/RyJfgWFtRvj?=
 =?iso-8859-1?Q?7mtYJww9pQSq+oRKbzdifIBy2Q9/d2YANLZDMu67Mf3uH8NBdz6OoFqMXE?=
 =?iso-8859-1?Q?Yl2POgn8TjUOnkmlaYXkDgZE+dF6OS5Rc4tH8YRle1AV/lCSH+r9Rzwt90?=
 =?iso-8859-1?Q?/PaSMBXSmxTJaslRJLCctgb46kN/STTpBXVIh4kYPAKKGtpNaE+QwYKzhd?=
 =?iso-8859-1?Q?d+bfpMLxAc1Sr7Zkt+Nn4ceZ2IT9IaaZC8/TPRVnPV8veQUd9muv0psttK?=
 =?iso-8859-1?Q?aTrXdHZkERZN35ZLBJIBlxknmZaDbs5EmCoelz05TT530TO2X2Mef4fm9G?=
 =?iso-8859-1?Q?S7R9AJAhQVCTuepLzdHocJdHw1bGogOYWbXVVJ1o7/2IH/ewdvx4OxaH6+?=
 =?iso-8859-1?Q?UKLUx9q521NYFVT2VIJIUaH0tigix9+xapxcI+mLRpOvCNzivvaxem6kFd?=
 =?iso-8859-1?Q?iBhBB22+yHa+nvyDp4ad+4SXoCNBx9Snm6VGDqBmy07m5SQK5iH6RSUN0E?=
 =?iso-8859-1?Q?6obSrwzThJOOryNywBjIvA/0FoGLELpgrg3Q/lXSCAs63+K0Q2DzoiwfDu?=
 =?iso-8859-1?Q?Y4yyxrPMDQcxv0vNT9I0GQxFqHSulZ7Z2Gm7rWUvX6ei6qrlsxLxvsy8dU?=
 =?iso-8859-1?Q?WMUdOcXH2eZjm6F6H+EK89DOO0MwfmWk/k+y75z4COPheBBbV688pZk91f?=
 =?iso-8859-1?Q?jOUkJj7g6llpwImBBFcVC5A/UUhm34KD1tthyo0oHEjtOpxhwiQyqbwfIX?=
 =?iso-8859-1?Q?4kRwUxOIjFd84JoaOAeH8EtV5lkSSj9bLKz8oODLT0xpdX1WZrBimu1TEU?=
 =?iso-8859-1?Q?jsD3Sml4OvI9sw9H6+QhDMc32CdYeT1as9TjQ4z7LzkX8dzG7jdyxujSLJ?=
 =?iso-8859-1?Q?3aicX1HvSlJhBXt8RKSAN6F2Pl6avJWLfRhIqLJfR+v/IxgPN7ZAKb+cma?=
 =?iso-8859-1?Q?Tfb3sext+FF69lx3zvc882NrEk1Y1FyNs/pIb7QOf7SWRhrgJDjff8+81w?=
 =?iso-8859-1?Q?CIN6naVtHmZ8Z8lDgi/NYsqcIyMGWBl5HkDbc5RLZJgtofTHLpKfgqCTEb?=
 =?iso-8859-1?Q?IJKUt281fXRCLX/GEaK3XXbAspuIlUAAafvSIpwU2Djy68r88TwT2/Rj/G?=
 =?iso-8859-1?Q?aMXxYmGz+/b0y63Of6KViRzBSsr7934YhXUaTMRjh1bCaRooX5TTcSzpHA?=
 =?iso-8859-1?Q?f6EkCdwDg9PKfI0HlM5/KMFXp69o8UaKF+LGBChMFGCOZzIRU7nLhdWkR3?=
 =?iso-8859-1?Q?oNEFnEtfixzOBJHdhIkLAqbpuSm/c4Y+wqqokCqmGLfnQUYIrsOfT+hP7y?=
 =?iso-8859-1?Q?C8cqvVn2HGspOYR86dJZ0T+l/uB/?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:SJ0PR11MB4845.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(366016)(1800799024)(376014); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?iso-8859-1?Q?g7vXYQVlUzhCSVJkHvAVE3rSINwVtMSXKS8JR7XmEsrCkNGSaRWseK1fHK?=
 =?iso-8859-1?Q?PnxYSxK2PDDyrTWxCqtp4fSPGkqR1vT+UOtyKh/kH8iRVSbMQSALMMlV5p?=
 =?iso-8859-1?Q?knyz67BuExOMThpyZaFkhxAJFkTpAUw0xtNF65fUTL0CzIldipL5cGi4pt?=
 =?iso-8859-1?Q?0fl5QkVBwWygXzNWbWBRK34s1wPN+TdNJfqaKn9jWta0aTaArgXEWannaf?=
 =?iso-8859-1?Q?/KCDo5cr+51pgIrhy+8sMSAAlWqyOtMy7oZC8xK+pgHJ+JOVMJM8lfCIZu?=
 =?iso-8859-1?Q?N8ASXd27u9XETULz75x8uyKphf6idCincpRNvRA+jPrRCR+TKk7wlxxTdG?=
 =?iso-8859-1?Q?Zj6hHBtVUAPsvhpyM7bH1/rpXPHF13stDoZ3T2F48vMOLNYfRlC2aqGnZY?=
 =?iso-8859-1?Q?sFqtqjiv7jNXOj1fz3q+j9ifW0yvXBQ0cZTiYsJ00I9UenCKJVGzwVdLmM?=
 =?iso-8859-1?Q?VUo2TDvZKRjxaDOc3K+4jnfqYTaeN5GvqjRLQbwwSp6oRcostq1X0TDcz1?=
 =?iso-8859-1?Q?Ur3uqEAKm0ailIzs7OVH20xrugjolIinQbGb3JV9+/VilVxbJm4BoU6z/i?=
 =?iso-8859-1?Q?ekqFQhOXl7Or/97z5ZbViajbAyowuIPoN131eVsji0b/ddkUZZ7eMmj17Q?=
 =?iso-8859-1?Q?lqh2x6VBcGrQxWdl9z2lslC9YiJLAyQDLXqxGzwLeIWM6qkhqVxf18KAPV?=
 =?iso-8859-1?Q?U5pH0HuTsnOy7K30DiPxAJlEVXMo/nhqr06qnuU/W96BwwYalkgOzKgWLZ?=
 =?iso-8859-1?Q?L4cxfL60v4KGYt3JZcKKFHKTfwIWMfU1JB4x8crfH38HyyuqZ2tWhxCoOl?=
 =?iso-8859-1?Q?M7pNh5AQ4XTRXgszpFr+EkNaFs3P6iueGpPlIKoWCrcCG9ehCZ3+stn4et?=
 =?iso-8859-1?Q?xd6/U4FnKgVhxlgn9pwuJjQbTpTCi9lyKcrhWTJpF4Mgec+rFrsyJj8vkC?=
 =?iso-8859-1?Q?OWBbKdcoTe/2O/ziZc7kdWt+PWG9G+qevAVYJSaEN21U/8P0ji60TCq/XZ?=
 =?iso-8859-1?Q?XBG7SCSt4Gn6xf9s2R+SDrNdRmgoniDHmOFrBpvRMSMmKuDIHl5Ubk3YGv?=
 =?iso-8859-1?Q?IzK03jwjE6uBE5QnfCLMXGVpTCztzHW0y9za5xWfiGDcN4YX1anQ0t2A57?=
 =?iso-8859-1?Q?M66p8VbNcZTjQKXs/q+k/jv+7wBj850mvmJaglJmIzBTGUrjv12n+ktHnk?=
 =?iso-8859-1?Q?m0GIddlKZu0ixSr7VQkGgECcQh5zX6LxqdXt3c7i9kmps/o0xFYdOliMso?=
 =?iso-8859-1?Q?ekQK3kMwYQ5SBkXf75ShPf62dQa89BKiVSFb4uxXgHzRxixTDqtEJNQgSY?=
 =?iso-8859-1?Q?8KXCVAfzDpsP826jjbJtCD6LyAAB8hrUoFxRJAPjootvGhiNa2Dpwv34NU?=
 =?iso-8859-1?Q?53gp7P9dXzrNapJc1vRbTtPyIa88izW+l0rr9kFehkVoJAnqO0T0UIklll?=
 =?iso-8859-1?Q?LFABlVFJ9/Q+B3ot0Dyd2H+W/aVP36+tgQEEJfEJ7iN5swl2GMteqhZJ+o?=
 =?iso-8859-1?Q?jNdkGgz12qjtfICRfYML6wGXww7gety1QUKfwLmDe/S8TXWQh54aNLoJK6?=
 =?iso-8859-1?Q?lQ0NN2Acsmk4VolpRDpRI8I3/TnwXA/Yn+Q2MJXZetKM51vrNDZZpdYV5a?=
 =?iso-8859-1?Q?majNkK49j1tU5obw+JsH68wK5fd5GDfUwqm9DvAym7Zt+6Ns+5QVxrDNhB?=
 =?iso-8859-1?Q?NUTQ2TNOHGwjr8EJgBD179DOxxtFBMTqHf0Kob3BKQLk/WuTWmUKp6v5q8?=
 =?iso-8859-1?Q?rRXMNt5ZfWAA7CsUgaXYenXuxnz5IUqeyu+30l+TWMmUNTVQlE/UgBbgNp?=
 =?iso-8859-1?Q?dKsNZ9ecdQ=3D=3D?=
X-MS-Exchange-CrossTenant-Network-Message-Id: b6bd1dd0-8673-4490-1fb2-08de67c35ca9
X-MS-Exchange-CrossTenant-AuthSource: SJ0PR11MB4845.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 09 Feb 2026 10:09:50.5365 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: DDQ/zVBSKO6Xjj9/swS0GHxg9sxLZ6hV8iQgkYQWC4cGtZFfF3NfojbE2n7RkhHI4XXPhxszK7CtmrnUWZl5fg==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: LV8PR11MB8724
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
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [1.49 / 15.00];
	R_DKIM_REJECT(1.00)[intel.com:s=Intel];
	ARC_REJECT(1.00)[signature check failed: fail, {[1] = sig:microsoft.com:reject}];
	R_SPF_ALLOW(-0.20)[+ip4:131.252.210.177:c];
	MAILLIST(-0.20)[mailman];
	RWL_MAILSPIKE_GOOD(-0.10)[131.252.210.177:from];
	DMARC_POLICY_SOFTFAIL(0.10)[intel.com : SPF not aligned (relaxed),none];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	HAS_ORG_HEADER(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	REPLYTO_DOM_EQ_TO_DOM(0.00)[];
	TO_DN_SOME(0.00)[];
	MIME_TRACE(0.00)[0:+];
	DBL_BLOCKED_OPENRESOLVER(0.00)[gitlab.freedesktop.org:url,intel.com:replyto,intel.com:email,gabe.freedesktop.org:helo,gabe.freedesktop.org:rdns,ideak-desk.lan:mid];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	RCPT_COUNT_FIVE(0.00)[5];
	REPLYTO_ADDR_EQ_FROM(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[imre.deak@intel.com,intel-gfx-bounces@lists.freedesktop.org];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[intel.com:-];
	HAS_REPLYTO(0.00)[imre.deak@intel.com];
	TAGGED_RCPT(0.00)[intel-gfx];
	NEURAL_HAM(-0.00)[-1.000];
	MISSING_XM_UA(0.00)[];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	RCVD_COUNT_SEVEN(0.00)[9]
X-Rspamd-Queue-Id: 9BA8F10E001
X-Rspamd-Action: no action

On Mon, Feb 09, 2026 at 11:34:34AM +0200, Imre Deak wrote:
> On Mon, Feb 09, 2026 at 02:55:21PM +0530, Borah, Chaitanya Kumar wrote:
> > 
> > 
> > On 2/9/2026 2:10 PM, Imre Deak wrote:
> > > On Mon, Feb 09, 2026 at 12:06:20PM +0530, Borah, Chaitanya Kumar wrote:
> > > > 
> > > > 
> > > > On 2/6/2026 7:20 PM, Nautiyal, Ankit K wrote:
> > > > > 
> > > > > On 2/6/2026 4:12 PM, Imre Deak wrote:
> > > > > > The pipe BPP value shouldn't be set outside of the source's / sink's
> > > > > > valid pipe BPP range, ensure this when increasing the minimum pipe BPP
> > > > > > value to 30 due to HDR.
> > > > > > 
> > > > > > Fixes: ba49a4643cf53 ("drm/i915/dp: Set min_bpp limit to 30 in HDR mode")
> > > > > > Cc: Chaitanya Kumar Borah <chaitanya.kumar.borah@intel.com>
> > > > > > Cc: <stable@vger.kernel.org> # v6.18+
> > > > > > Signed-off-by: Imre Deak <imre.deak@intel.com>
> > > > > > ---
> > > > > >    drivers/gpu/drm/i915/display/intel_dp.c | 14 ++++++++++++--
> > > > > >    1 file changed, 12 insertions(+), 2 deletions(-)
> > > > > > 
> > > > > > diff --git a/drivers/gpu/drm/i915/display/intel_dp.c b/drivers/gpu/
> > > > > > drm/i915/display/intel_dp.c
> > > > > > index 2b8f43e211741..4d8f480cf803f 100644
> > > > > > --- a/drivers/gpu/drm/i915/display/intel_dp.c
> > > > > > +++ b/drivers/gpu/drm/i915/display/intel_dp.c
> > > > > > @@ -2697,6 +2697,7 @@ intel_dp_compute_config_limits(struct intel_dp
> > > > > > *intel_dp,
> > > > > >                       bool dsc,
> > > > > >                       struct link_config_limits *limits)
> > > > > >    {
> > > > > > +    struct intel_display *display = to_intel_display(intel_dp);
> > > > > >        bool is_mst = intel_crtc_has_type(crtc_state, INTEL_OUTPUT_DP_MST);
> > > > > >        struct intel_connector *connector =
> > > > > >            to_intel_connector(conn_state->connector);
> > > > > > @@ -2709,8 +2710,7 @@ intel_dp_compute_config_limits(struct intel_dp
> > > > > > *intel_dp,
> > > > > >        limits->min_lane_count = intel_dp_min_lane_count(intel_dp);
> > > > > >        limits->max_lane_count = intel_dp_max_lane_count(intel_dp);
> > > > > > -    limits->pipe.min_bpp = intel_dp_in_hdr_mode(conn_state) ? 30 :
> > > > > > -                intel_dp_min_bpp(crtc_state->output_format);
> > > > > > +    limits->pipe.min_bpp = intel_dp_min_bpp(crtc_state->output_format);
> > > > > >        if (is_mst) {
> > > > > >            /*
> > > > > >             * FIXME: If all the streams can't fit into the link with their
> > > > > > @@ -2726,6 +2726,16 @@ intel_dp_compute_config_limits(struct
> > > > > > intel_dp *intel_dp,
> > > > > >                                respect_downstream_limits);
> > > > > >        }
> > > > > > +    if (intel_dp_in_hdr_mode(conn_state)) {
> > > > > > +        if (limits->pipe.min_bpp <= 30 && limits->pipe.max_bpp >= 30)
> > > > > > +            limits->pipe.min_bpp = 30;
> > > > > > +        else
> > > > > > +            drm_dbg_kms(display->drm,
> > > > > > +                    "[CONNECTOR:%d:%s] HDR min 30 bpp outside of
> > > > > > valid pipe bpp range (%d-%d)\n",
> > > > > > +                    connector->base.base.id, connector->base.name,
> > > > > > +                    limits->pipe.min_bpp, limits->pipe.max_bpp);
> > > > > 
> > > > > 
> > > > > pipe.max_bpp < 30 will be either due to the max_bpc property set to less
> > > > > than 10, or perhaps when the panel itself does not support 10 bpc
> > > > > (limited by EDID or VBT).
> > > > > With these constraints doesn't make sense to enable HDR and send HDR
> > > > > metadata.
> > > > > However, as we see in some reported issues [1] [2], in practice some
> > > > > compositor seems to enable HDR by default and with the hard limit set,
> > > > > they report blankout.
> > > > > So it does make sense to raise the min bpp limit only if its inside the
> > > > > supported range.
> > > > > 
> > > > > Reviewed-by: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
> > > > > 
> > > > > 
> > > > > [1] https://gitlab.freedesktop.org/drm/xe/kernel/-/issues/7052
> > > > > [2] https://gitlab.freedesktop.org/drm/i915/kernel/-/
> > > > > issues/5969#note_3248404
> > > > > 
> > > > 
> > > > I am not sure if this patch would help with the above gitlabs. For example
> > > > in case of #7052 pipe max bpp is 30 and the commit still fails.
> > > 
> > > It does fix though reported cases where the sink does not support 10 BPC
> > > at all. Yes the monitor in #7052 is still a problem, since it supports
> > > 10 BPC only with lower resolution, where the link BW would allow this
> > > and he monitor doesn't have DSC either.
> > > 
> > > > However, I need to look deeper.
> > > > 
> > > > I am thinking of relaxing this restriction all together because the earlier
> > > > assumption that a panel advertising HDR will support atleast 10bpc in all
> > > > it's mode turns out to be false.
> > > > 
> > > > Currently, I am inclined on the following policy.
> > > > 
> > > > - If DSC is not available, fall back to normal bandwidth calculations and
> > > > select the highest bpp the link can support. (Also preferred by Kwin)
> > > > 
> > > > - If DSC is available, prefer falling back to DSC and attempt the highest
> > > > bpp allowed by bandwidth constraints.
> > > 
> > > The patch does the above, except for not handling the case where the
> > > monitor doesn't support DSC. The attach patch handles that too and so
> > > fixes #7052 as well, are you ok with it?
> > 
> > This should work since [1] did.
> 
> I think the sink / source support for 10 BPC should be still checked as
> in this patch.
> 
> > There is one more (theoritical) scenario that I think is still not covered.
> > What happens in a case where 30bpp doesnot fit into DSC bandwidth?
> > As I understand, the min bpp limit of 30bpp would become a bottle-neck even
> > then?
> 
> No, the link BW requirement is determined by the link BPP, not the pipe
> BPP for which the minimum is set. The link BPP in DSC mode can be
> lowered below that, based on the sink's minimum compressed BPP support.
> So in the fallback case, where 30 BPP uncompressed mode is not
> supported by the sink due to a BW limit, DSC is used instead lowering
> the compressed link BPP as required.

Although, it's still possible that the sink wouldn't support the minimum
pipe BPP set here as a DSC input BPP. Setting a minimum (pipe/input) BPP 
in DSC mode isn't actually needed, since the highest possible BPP will
be selected there anyway. So I think the actual condition for setting
pipe.min_bpp = 30 above should be:

        if (intel_dp_in_hdr_mode(conn_state) &&
            intel_dp_supports_dsc(intel_dp, connector, crtc_state) &&
            !dsc) {
            ...

> > [1] https://github.com/ckborah/drm-tip-sandbox/commit/5dd10a763ae6e651a0ab494ab1ad0c9d81c2de47
> > 
> > > 
> > > > I am working on a patch for this and should be able to float something soon.
> > > > Imre, if you agree with this policy, would you please wait for the patch.
> > > > That should make it easier to send out fix for stable kernels.
> > > > 
> > > > ==
> > > > Chaitanya
> > > > 
> > > > > > +    }
> > > > > > +
> > > > > >        if (dsc && !intel_dp_dsc_compute_pipe_bpp_limits(connector,
> > > > > > limits))
> > > > > >            return false;
> > > > 
> > 
