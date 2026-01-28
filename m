Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id sN3CHdJ9emld7AEAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Wed, 28 Jan 2026 22:21:22 +0100
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id C97BBA911F
	for <lists+intel-gfx@lfdr.de>; Wed, 28 Jan 2026 22:21:21 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 9C3C810E0BC;
	Wed, 28 Jan 2026 21:21:19 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=fail reason="signature verification failed" (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="MTWKy2+C";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.7])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 3846410E0BC;
 Wed, 28 Jan 2026 21:21:18 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1769635278; x=1801171278;
 h=date:from:to:cc:subject:message-id:reply-to:references:
 in-reply-to:mime-version;
 bh=oYSgYsfuodP1XXymzDErKdDNTiHdLfC0c7r/bav2IhY=;
 b=MTWKy2+CQjSSw+ocVAxM0JL9xhhbzOYjgtENDTHP84nLa6sXOLlEefgv
 BDHVF7hSHSwC1dmCmOJ4PLZ4RAC6gZ5lWPtf7A0H4TQk3uN0fyWU/KZkI
 u1qIDetRZUD3FReICiBXTJZizR+u99m4MH0CS7mxAFchG+3haX6KiR+ec
 7GeKcJvPjwR4OqTZmpVTCDTrV0kEHCsbdOPByb5wfHmMPJJmm6WYTbjS+
 /7ifRZTXiL1EfGE+g7jC2TZhoPfAudW4oZgKm+GlHQQCB8hdSjgQTC0hI
 xYm97fr/MGwT3IwI/YPPQp/PL1f1juV/cfOJ/V/L2OVPv0TEHSzWpFJ1l g==;
X-CSE-ConnectionGUID: /QUzKrIdT+GIv2Z7dDvo1g==
X-CSE-MsgGUID: hgpL+PmUTZ2zxX3Vm0WWTQ==
X-IronPort-AV: E=McAfee;i="6800,10657,11685"; a="96323897"
X-IronPort-AV: E=Sophos;i="6.21,258,1763452800"; d="scan'208";a="96323897"
Received: from fmviesa004.fm.intel.com ([10.60.135.144])
 by fmvoesa101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 28 Jan 2026 13:21:18 -0800
X-CSE-ConnectionGUID: +aCdfo9YTAKmZPVUbIJFJg==
X-CSE-MsgGUID: J7CxaILsT5iEJRt0vqoxrg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.21,258,1763452800"; d="scan'208";a="213241787"
Received: from orsmsx902.amr.corp.intel.com ([10.22.229.24])
 by fmviesa004.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 28 Jan 2026 13:21:18 -0800
Received: from ORSMSX902.amr.corp.intel.com (10.22.229.24) by
 ORSMSX902.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.35; Wed, 28 Jan 2026 13:21:17 -0800
Received: from ORSEDG902.ED.cps.intel.com (10.7.248.12) by
 ORSMSX902.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.35 via Frontend Transport; Wed, 28 Jan 2026 13:21:17 -0800
Received: from BYAPR05CU005.outbound.protection.outlook.com (52.101.85.39) by
 edgegateway.intel.com (134.134.137.112) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.35; Wed, 28 Jan 2026 13:21:17 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=H7JJOJeGaxVyKFcVxLOfRLNE+7HjqHzdUSMXkTa8KjgsBS/EmXzp2w3Jz4kbcFvBD2orbxT2uQSee5fjH1BjPyCpCNp6zqMRIfDUiuswmvvF/zCLEHqYiSGHF3pjK0pX4dCfdlQ5KAVU1Kui6Pui1D7OJvP03lagYQkfBAkdaEzWvHah5kSJBlf9kMjTpw1PFVLJbB6jJp6w58jfOmeJlBj16VfWINCyQgxcq3ZIsjdaZ3otI/hEZs4+RtMiFhXEj8L1O/QxA5GlUq5cPALrLX3QtH56gQNAh+VbmaZ/2pcxicVRm+JPf5zvXDoJ/SidDpLtYyojLq1V8qEM7S+MNQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=L7SVjh57EAtUsf0kXM1v88zqC0w92Eem00omC9miIlM=;
 b=U3m+Wineye20nJEN4f2MbLQOogIFbrSTrpohE/X3OHLHEpFIWDf4BDJXLn7wdfol4ngAXHErl1c7N8YW9KGSrcP771TsvObZ9i5NMvK5AOc1w2nECeJX32V9Zs0pFIXZakgZAXAXCiMdgyeIEnkz0Vlp4E3of14z+rjoCC87SiPwtgg3xIi51IyVfmd+swqEz8QauVLs2y9CaWC5XZPP7Z3wCW3Xl9KSxiE9nuZLJ7tAthfhkSw9mOEviiJsh/beOTwxP7pdQqtkAQWL6YqavOeTZKxUNqzfX1JY1ECdrpc6FMKMfMrWoqmb8HBj+UN8Cf84tKHJ5qMOzZOYJ3ceTg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from SJ0PR11MB4845.namprd11.prod.outlook.com (2603:10b6:a03:2d1::10)
 by DS0PR11MB6493.namprd11.prod.outlook.com (2603:10b6:8:c3::15) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9542.15; Wed, 28 Jan
 2026 21:21:14 +0000
Received: from SJ0PR11MB4845.namprd11.prod.outlook.com
 ([fe80::8900:d137:e757:ac9f]) by SJ0PR11MB4845.namprd11.prod.outlook.com
 ([fe80::8900:d137:e757:ac9f%3]) with mapi id 15.20.9520.003; Wed, 28 Jan 2026
 21:21:14 +0000
Date: Wed, 28 Jan 2026 23:21:09 +0200
From: Imre Deak <imre.deak@intel.com>
To: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
CC: <intel-gfx@lists.freedesktop.org>, <intel-xe@lists.freedesktop.org>,
 <jani.nikula@linux.intel.com>
Subject: Re: [PATCH 08/16] drm/i915/dp_mst: Rework pipe joiner logic in
 mode_valid
Message-ID: <aXp9xUsJ5UVtOazl@ideak-desk.lan>
References: <20260128140636.3527799-1-ankit.k.nautiyal@intel.com>
 <20260128140636.3527799-9-ankit.k.nautiyal@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Disposition: inline
In-Reply-To: <20260128140636.3527799-9-ankit.k.nautiyal@intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - c/o Alberga Business Park, 6
 krs Bertel Jungin Aukio 5, 02600 Espoo, Finland
X-ClientProxiedBy: GVZP280CA0032.SWEP280.PROD.OUTLOOK.COM
 (2603:10a6:150:276::12) To SJ0PR11MB4845.namprd11.prod.outlook.com
 (2603:10b6:a03:2d1::10)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: SJ0PR11MB4845:EE_|DS0PR11MB6493:EE_
X-MS-Office365-Filtering-Correlation-Id: fe7de0fb-94fe-4120-3451-08de5eb32a7c
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|376014|366016|1800799024;
X-Microsoft-Antispam-Message-Info: =?us-ascii?Q?XPHD4HrxTm/+W5mYOz9TJOSc9TJEoWGeJ6o0V5xWP6QRBjftfKkn4seXrN10?=
 =?us-ascii?Q?c4S6PnQHxnJoAdZietwyIjHWqNk8G8vn7YGOWD2cFojlJmCxUIyymf3c1kXV?=
 =?us-ascii?Q?V9N4h7jCI9mEO5XhrBM2TxPrmxWSYPHDDHiVqw7qravPqnm/GdDvrTbw9DJE?=
 =?us-ascii?Q?qAs/GxqJtw6xDumFZlefNML6gatu8VhUKyiR3522q5zwlX5TajunBpvvhNSO?=
 =?us-ascii?Q?tbYhFfbQ3HzmP6b6xT/WcusQl+l7JjfdZWsJQV8OJC0R08eW5QOdaAJ94dgG?=
 =?us-ascii?Q?jYWOi7vPfhBwmqyQuGxZCirLavR+5hsjZXKOhFQXibZQvXLyPHwkGr31GO6g?=
 =?us-ascii?Q?aUchxQT1yofkAiUT3PP/MJ68ee+wZ/QNCDzysAEepDReH5rEjpaP3R6IlNZJ?=
 =?us-ascii?Q?iHXMuC8mRS0LAF/6O7nHoC1qkZ4PubYg/+FfMVIwdJHU1rxq2zjcFlUQX7nh?=
 =?us-ascii?Q?Pf2Vl69vetd97o7a7EobcSWIPyP8tRyxF9Qmgfm6MF1cSm4br19RRmjKcPHF?=
 =?us-ascii?Q?cldRFHocaGyfb3leoTq1qfEDcvkJgpdiqELFK0VrWZhFFGda25ByDfUBPY4D?=
 =?us-ascii?Q?kBVBjqKzMg3RXTKWaawxKBwtdvqAACUww7s3+sC3MAL1bWqTwMh7RgAl2fU8?=
 =?us-ascii?Q?XHdhgrIoluhWsRfFx4sN2NvPVTy/Pw7GpuAvLK7s9Ls2n6CR/trd6W5c+ImO?=
 =?us-ascii?Q?wUyAMlonMKH1FMx3TdE4bSHISKcdevXPJl7IQm9FLihy3Q290K69lq50CirZ?=
 =?us-ascii?Q?6mR/ZUYSmHYAQRFAL+1hrCkPaVfuvZjY+DL74VP7Fhcn/fG7iuYxHiVUQpdw?=
 =?us-ascii?Q?Df4p1l4yqINoscVthz/uMIo60y12uQ8yMHCxqbR1NhTsOcB8uz8ATfJ7CPm+?=
 =?us-ascii?Q?nvleoxdNeZFcNKGmrhpWbRfvoiUEdhW0KySepTJzgd6TAo084H/bZCpbZran?=
 =?us-ascii?Q?FVId/jcLVVwNR9HPaTXJhR5gZX6wBKc2rAfdwCCrde+Sh2XJk2xKVAFH0JLk?=
 =?us-ascii?Q?cQ627A2l1j9MD5beRHXvI6iCbF/cmWUnUjnO1M4HkjHbBCXer6DFgdUdG7i+?=
 =?us-ascii?Q?uv6gj24L8hfRCIqseWuiJ5wDhdh+bVt8fWtA08NNdLcJ2vQD+NfRc9qtUAqt?=
 =?us-ascii?Q?DdpdAtXo2v4/iWc9IVLc+Tsx11jv1AJ9JpJYbIPkYrsG5Chs9aQbBfv87wlf?=
 =?us-ascii?Q?nawjcxVm0tKOg8oHu7gl6Xv5/zwEwkwa5lOL8K+ICTcLufYF+gq+w9zWZpWI?=
 =?us-ascii?Q?ZBNTiyk/b53tlAVe07Pha+xGY2RZsxEW0rdKMpg2N4Ho+wwdGlfiVk+x3War?=
 =?us-ascii?Q?HCkxIy5MeiLW49MI0oC7m6TQ3egt0aPb2N39qm9y5p/ZW3+eTCm5VtNUinKQ?=
 =?us-ascii?Q?nJm+MQdW4clY9tS9VI5KlvEJo+5G4fL3hdoi8o8tKaZ1lKPrBFh5mb20tNjz?=
 =?us-ascii?Q?m0fGtiF1kJcjpLlZuKULH9QIn6lD/50zHyxTbFunuGFNDrBW+RFYYt2FeCnw?=
 =?us-ascii?Q?MzRr2j8o5xO5SGlb7B5nTIgScbUr3v6iIT+RInRvt488aCCEA+hRZqmQQQXI?=
 =?us-ascii?Q?qnFSqa2tMxwp7I6y/U0=3D?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:SJ0PR11MB4845.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(376014)(366016)(1800799024); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?JULO5BM2sdF81XxqjghOdtafG8BdnYgNbsy54ntszrLP2s9v/4nP5kQkvo84?=
 =?us-ascii?Q?klH9zh+W2nggiBVcDUmeBkzwMiL6uircuEZ1JzD1El7tPg6U2hxMaqAjlEOz?=
 =?us-ascii?Q?m3dBPe8pFrgCKywcMsQA72Matt2iGny/fCdEheJctIN1BeuMVMtq5GQLRjd7?=
 =?us-ascii?Q?mq38C9GdBJm4Qr+BViPQm6rbsynA8K/wGcBUzTrcDgwNU2noLvQcIytERGzx?=
 =?us-ascii?Q?hTQPFfPn26agUxu0A3synrdJfl2aXobu5LZIdgPvXewgQl773H4LVKE2pU0B?=
 =?us-ascii?Q?TS5kPfBafJLCq6+tlNbW2aIoS+g0CINqTL+sPfJlaZv7RMq6BLX5N+5wgYpE?=
 =?us-ascii?Q?agaO05BhFbcXj8i3p6UVNuigp6iESOMPYPUkMlJb+54H69iUFJRcpzCGGbTE?=
 =?us-ascii?Q?SbCwMsuy8cEGKPrEfbruKEoNCL6nVVvGOtlxWQgq9FXt7AHTZHlcwOK0QgyR?=
 =?us-ascii?Q?XTtPet39uVWRSq0csLOmstaTEWmZyAFH1bETEPZE8myW3ZDN52d1aZprVyWP?=
 =?us-ascii?Q?cAQr08arObRyTgaix3rPcoZOYjeP50sX3+5zSEqOZWAQSyI6L6CCsGmnVUU3?=
 =?us-ascii?Q?6Yn60pijQfGBYfm98xZwedzeq2a//RiuF7KeqcOAn3hgGbupFfoiskyuEgCW?=
 =?us-ascii?Q?T6cmb/El4UQcyJcD05jYo8qK0qhtN32AB03spADHaab/jyXP3zUJ1WghGV2v?=
 =?us-ascii?Q?wPIEh831UlEmTVNMV4n5js2XzAMBkP9ZM4vjwvK5O4eZJEcFOYHVXcVm+2NQ?=
 =?us-ascii?Q?zxVbqiRuzY3TFL3U+TLQ2oi06vmNSThugxJOum6qfGCAPbyHECFENF+/a+gK?=
 =?us-ascii?Q?kpxnxD09j1/Fq+hrvX7bT8k6Tasb4ev59s2JB5g9awnFBHALOM5tBmSgr/gi?=
 =?us-ascii?Q?93+uSaxmIOxX3gVKd0+zJH1CmapQ/5KLuL+6N+aCerE86PE9NvQ2Xjb8KtIu?=
 =?us-ascii?Q?t8xIXVo9M1Zf4e5cP3Ve50Lw2OQEFf7gKKj6opUNPxXp/yHPjk0p0uZFZb6+?=
 =?us-ascii?Q?XRIVxdDafAHVYgxa5EeKNkH4RHhva8O14oO23DyLSiCCmiwaX5ojJSdsOFy8?=
 =?us-ascii?Q?g1VZA5FKfKlzUzjqYo0BgCflwtps0g/kQBSKxyh/jQBYZu9T6G3Elr/T4WVl?=
 =?us-ascii?Q?Qa32AExfR935V6gQWvxuSxDG4BIi0obotXJHTWe9oioxc1TLuKI8J4pyC0LD?=
 =?us-ascii?Q?75UK99lM6a8FnfRffFdYab8Vpv4lZsW9JtAdvZE4RV+itH2EspiLTCIswXjC?=
 =?us-ascii?Q?nQribZkmjychWs5QW7eal0A3Abkx6s8poFPIMk73mQGIHbJJ79L5kgW9XoPC?=
 =?us-ascii?Q?wo6EPK8eMRnQh1N61RFgEm1SahADPEJT7cu3aGqnU948JA32FzRw+Adx2QiV?=
 =?us-ascii?Q?Z5qwUO46lI9UOEjTiNqfejcBrBvnRMq08M/8xL+CK9ZwJwTt5P/UACHj0nZA?=
 =?us-ascii?Q?0OLbwDlcDnWmOiitIn8t6MnndGlz/TSJLn7jb/F8aR8N8iMC5WWzEKwebF+V?=
 =?us-ascii?Q?Oz857h3UdPcrt/RRKR0GdWqItRNNx9yHPTPLdcx4WAQqA9Lu784cmFWKUyet?=
 =?us-ascii?Q?jRyD5cVkVczgfob8mIyD3mZMbpvfVwZCCmqJuthYnb6Zr1PWiUFmnrTVIGOP?=
 =?us-ascii?Q?Ti6XfXR1T8D17TubyiCFfYELmYfB3pKBwCRIUke3r9LZIXQrzhH3JmE1xPB5?=
 =?us-ascii?Q?yYVykxUs9Km5fONCKrNb9YAv7om7o+NqgEXzIJ1MvoS0KEX7jS/lp3x8vCoe?=
 =?us-ascii?Q?vDzCI/1Tdw=3D=3D?=
X-MS-Exchange-CrossTenant-Network-Message-Id: fe7de0fb-94fe-4120-3451-08de5eb32a7c
X-MS-Exchange-CrossTenant-AuthSource: SJ0PR11MB4845.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 28 Jan 2026 21:21:13.9237 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: CsON0/vAtGs6Bz6dfAS6nvu+GSx5xxwAW628MW9ivnhvMc4BCuBtieczMT6/Zr833U6BHuVLrvabEO2ieTfZcw==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DS0PR11MB6493
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
	MAILLIST(-0.20)[mailman];
	R_SPF_ALLOW(-0.20)[+ip4:131.252.210.177:c];
	RWL_MAILSPIKE_GOOD(-0.10)[131.252.210.177:from];
	MIME_GOOD(-0.10)[text/plain];
	DMARC_POLICY_SOFTFAIL(0.10)[intel.com : SPF not aligned (relaxed),none];
	HAS_LIST_UNSUB(-0.01)[];
	REPLYTO_DOM_EQ_TO_DOM(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	HAS_ORG_HEADER(0.00)[];
	TO_DN_SOME(0.00)[];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[gabe.freedesktop.org:helo,gabe.freedesktop.org:rdns,intel.com:replyto,intel.com:email];
	DKIM_TRACE(0.00)[intel.com:-];
	HAS_REPLYTO(0.00)[imre.deak@intel.com];
	REPLYTO_ADDR_EQ_FROM(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[imre.deak@intel.com,intel-gfx-bounces@lists.freedesktop.org];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	TAGGED_RCPT(0.00)[intel-gfx];
	RCPT_COUNT_THREE(0.00)[4];
	MISSING_XM_UA(0.00)[];
	RCVD_COUNT_SEVEN(0.00)[9]
X-Rspamd-Queue-Id: C97BBA911F
X-Rspamd-Action: no action

On Wed, Jan 28, 2026 at 07:36:28PM +0530, Ankit Nautiyal wrote:
> Refactor the logic to get the number of joined pipes. Start with a single
> pipe and incrementally try additional pipes only if needed. While DSC
> overhead is not yet computed here, this restructuring prepares the code to
> support that in follow-up changes.
> 
> Signed-off-by: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
> ---
>  drivers/gpu/drm/i915/display/intel_dp.c     |  2 -
>  drivers/gpu/drm/i915/display/intel_dp.h     |  3 +
>  drivers/gpu/drm/i915/display/intel_dp_mst.c | 86 ++++++++++++---------
>  3 files changed, 52 insertions(+), 39 deletions(-)
> 
> diff --git a/drivers/gpu/drm/i915/display/intel_dp.c b/drivers/gpu/drm/i915/display/intel_dp.c
> index f8986f0acc79..9bbd37ebd2ea 100644
> --- a/drivers/gpu/drm/i915/display/intel_dp.c
> +++ b/drivers/gpu/drm/i915/display/intel_dp.c
> @@ -1371,7 +1371,6 @@ intel_dp_mode_valid_downstream(struct intel_connector *connector,
>  	return MODE_OK;
>  }
>  
> -static
>  int intel_dp_max_hdisplay_per_pipe(struct intel_display *display)
>  {
>  	return DISPLAY_VER(display) >= 30 ? 6144 : 5120;
> @@ -1434,7 +1433,6 @@ bool intel_dp_has_dsc(const struct intel_connector *connector)
>  	return true;
>  }
>  
> -static
>  bool intel_dp_can_join(struct intel_display *display,
>  		       int num_joined_pipes)
>  {
> diff --git a/drivers/gpu/drm/i915/display/intel_dp.h b/drivers/gpu/drm/i915/display/intel_dp.h
> index 25bfbfd291b0..6d409c1998c9 100644
> --- a/drivers/gpu/drm/i915/display/intel_dp.h
> +++ b/drivers/gpu/drm/i915/display/intel_dp.h
> @@ -225,5 +225,8 @@ int intel_dp_compute_config_late(struct intel_encoder *encoder,
>  				 struct drm_connector_state *conn_state);
>  int intel_dp_sdp_min_guardband(const struct intel_crtc_state *crtc_state,
>  			       bool assume_all_enabled);
> +int intel_dp_max_hdisplay_per_pipe(struct intel_display *display);
> +bool intel_dp_can_join(struct intel_display *display,
> +		       int num_joined_pipes);
>  
>  #endif /* __INTEL_DP_H__ */
> diff --git a/drivers/gpu/drm/i915/display/intel_dp_mst.c b/drivers/gpu/drm/i915/display/intel_dp_mst.c
> index f47bf45d0bce..664004600564 100644
> --- a/drivers/gpu/drm/i915/display/intel_dp_mst.c
> +++ b/drivers/gpu/drm/i915/display/intel_dp_mst.c
> @@ -1420,7 +1420,6 @@ mst_connector_mode_valid_ctx(struct drm_connector *_connector,
>  	struct drm_dp_mst_topology_mgr *mgr = &intel_dp->mst.mgr;
>  	struct drm_dp_mst_port *port = connector->mst.port;
>  	const int min_bpp = 18;
> -	int max_dotclk = display->cdclk.max_dotclk_freq;
>  	int max_rate, mode_rate, max_lanes, max_link_clock;
>  	unsigned long bw_overhead_flags =
>  		DRM_DP_BW_OVERHEAD_MST | DRM_DP_BW_OVERHEAD_SSC_REF_CLK;
> @@ -1428,6 +1427,7 @@ mst_connector_mode_valid_ctx(struct drm_connector *_connector,
>  	bool dsc = false;
>  	int target_clock = mode->clock;
>  	int num_joined_pipes;
> +	int num_pipes;
>  
>  	if (drm_connector_is_unregistered(&connector->base)) {
>  		*status = MODE_ERROR;
> @@ -1480,50 +1480,62 @@ mst_connector_mode_valid_ctx(struct drm_connector *_connector,
>  		return 0;
>  	}
>  
> -	num_joined_pipes = intel_dp_num_joined_pipes(intel_dp, connector,
> -						     mode->hdisplay, target_clock);
> -
> -	if (intel_dp_has_dsc(connector) && drm_dp_sink_supports_fec(connector->dp.fec_capability)) {
> -		/*
> -		 * TBD pass the connector BPC,
> -		 * for now U8_MAX so that max BPC on that platform would be picked
> -		 */
> -		int pipe_bpp = intel_dp_dsc_compute_max_bpp(connector, U8_MAX);
> -
> -		if (!drm_dp_is_uhbr_rate(max_link_clock))
> -			bw_overhead_flags |= DRM_DP_BW_OVERHEAD_FEC;
> -
> -		dsc = intel_dp_mode_valid_with_dsc(connector,
> -						   max_link_clock, max_lanes,
> -						   target_clock, mode->hdisplay,
> -						   num_joined_pipes,
> -						   INTEL_OUTPUT_FORMAT_RGB, pipe_bpp,
> -						   bw_overhead_flags);
> -	}
> +	for (num_pipes = 0; num_pipes < I915_MAX_PIPES; num_pipes++) {
> +		int max_dotclk = display->cdclk.max_dotclk_freq;
>  
> -	if (intel_dp_joiner_needs_dsc(display, num_joined_pipes) && !dsc) {
>  		*status = MODE_CLOCK_HIGH;
> -		return 0;
> -	}
>  
> -	if (mode_rate > max_rate && !dsc) {
> -		*status = MODE_CLOCK_HIGH;
> -		return 0;
> -	}
> +		if (num_pipes == 0) {
> +			if (!connector->force_joined_pipes)
> +				continue;
> +			num_joined_pipes = connector->force_joined_pipes;
> +		} else {
> +			num_joined_pipes = num_pipes;
> +		}

I'd skip here the force_joined_pipes && force_joined_pipes != num_pipes
case as mentioned earlier.

>  
> -	*status = intel_mode_valid_max_plane_size(display, mode, num_joined_pipes);
> +		if (!intel_dp_can_join(display, num_joined_pipes))
> +			continue;
>  
> -	if (*status != MODE_OK)
> -		return 0;
> +		if (mode->hdisplay > num_joined_pipes * intel_dp_max_hdisplay_per_pipe(display))
> +			continue;
>  
> -	max_dotclk *= num_joined_pipes;
> +		if (intel_dp_has_dsc(connector) &&
> +		    drm_dp_sink_supports_fec(connector->dp.fec_capability)) {
> +			/*
> +			 * TBD pass the connector BPC,
> +			 * for now U8_MAX so that max BPC on that platform would be picked
> +			 */
> +			int pipe_bpp = intel_dp_dsc_compute_max_bpp(connector, U8_MAX);
>  
> -	if (mode->clock > max_dotclk) {
> -		*status = MODE_CLOCK_HIGH;
> -		return 0;
> -	}
> +			if (!drm_dp_is_uhbr_rate(max_link_clock))
> +				bw_overhead_flags |= DRM_DP_BW_OVERHEAD_FEC;
> +
> +			dsc = intel_dp_mode_valid_with_dsc(connector,
> +							   max_link_clock, max_lanes,
> +							   target_clock, mode->hdisplay,
> +							   num_joined_pipes,
> +							   INTEL_OUTPUT_FORMAT_RGB, pipe_bpp,
> +							   bw_overhead_flags);
> +		}
>  
> -	*status = MODE_OK;
> +		if (intel_dp_joiner_needs_dsc(display, num_joined_pipes) && !dsc)
> +			continue;
> +
> +		if (mode_rate > max_rate && !dsc)
> +			continue;
> +
> +		*status = intel_mode_valid_max_plane_size(display, mode, num_joined_pipes);
> +
> +		if (*status != MODE_OK)
> +			continue;
> +
> +		max_dotclk *= num_joined_pipes;
> +
> +		if (mode->clock <= max_dotclk) {
> +			*status = MODE_OK;

*status stays MODE_OK if mode->clock > max_dotclk.

The "histogram" diff algorithm produces for this particular patch a more
readable output.

> +			break;
> +		}
> +	}
>  
>  	return 0;
>  }
> -- 
> 2.45.2
> 
