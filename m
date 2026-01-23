Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id oFbSHTi9c2kmyQAAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Fri, 23 Jan 2026 19:26:00 +0100
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 6FABA7997D
	for <lists+intel-gfx@lfdr.de>; Fri, 23 Jan 2026 19:25:59 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id E7D7B10EB94;
	Fri, 23 Jan 2026 18:25:56 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=fail reason="signature verification failed" (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="Aolvn6F4";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.8])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 9C14010E2E4;
 Fri, 23 Jan 2026 18:25:55 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1769192755; x=1800728755;
 h=date:from:to:cc:subject:message-id:reply-to:references:
 in-reply-to:mime-version;
 bh=IFLu1vNwah9rY9WyiT8vbkjvU1vD/MKX1EDhIxwMutw=;
 b=Aolvn6F4rS1xnLzl+ADfPK94XopfvTTixVFi7x48m1ZBqcike/oAMSNE
 OzoK6a7DpYgjhtlMM1AfcyelN0pTSbu9Ng6TckaJ9MEKRiOrSNVUneVwT
 fACRnf+XF4ngx6J/xeIXeCz3mWf73Ek+6KFWzCZtwX27g47ON0whLgw/b
 Nd/nKzXcbEg3vIsGppTrsoBGtA89odfa256Zuy5O5qGuTdlbEGHSs21q0
 K7rfSXpvGuaD8u/jBPOeu7fb02OGd2dDfskTm6XzuMFiZGrod1AWL97qM
 AxlQiPQwLupOJ3hxNusqtSV/lKDREvxLSc3cOKHKfFgqu7/+eB5AzjtVZ A==;
X-CSE-ConnectionGUID: 4+Wu4Q1bQq6jUmM75cFSoQ==
X-CSE-MsgGUID: 7Dd/d9QvQvaF3Vl8ecwjYA==
X-IronPort-AV: E=McAfee;i="6800,10657,11680"; a="88026307"
X-IronPort-AV: E=Sophos;i="6.21,248,1763452800"; d="scan'208";a="88026307"
Received: from fmviesa004.fm.intel.com ([10.60.135.144])
 by fmvoesa102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 23 Jan 2026 10:25:55 -0800
X-CSE-ConnectionGUID: m7J9DWV+Q26TBQ9QHP/rUg==
X-CSE-MsgGUID: VEykB3SIQs6dT/ny0fKchQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.21,248,1763452800"; d="scan'208";a="211951832"
Received: from orsmsx902.amr.corp.intel.com ([10.22.229.24])
 by fmviesa004.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 23 Jan 2026 10:25:55 -0800
Received: from ORSMSX902.amr.corp.intel.com (10.22.229.24) by
 ORSMSX902.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.35; Fri, 23 Jan 2026 10:25:53 -0800
Received: from ORSEDG902.ED.cps.intel.com (10.7.248.12) by
 ORSMSX902.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.35 via Frontend Transport; Fri, 23 Jan 2026 10:25:53 -0800
Received: from SN4PR2101CU001.outbound.protection.outlook.com (40.93.195.61)
 by edgegateway.intel.com (134.134.137.112) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.35; Fri, 23 Jan 2026 10:25:53 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=LEG8Nq8/YGVcSXb+/bREub4Z0jH4GhKX1LnANAmTC1voO1A0I6L97QLyMGHubR0MaI4+Nenez6QWh9bGjqFE4k5srhtlZ3WlELZ81EiLSn5xAfEnP9iW6faTII8yVOvOVo1d+Xiint1gmZB6zqACVcJKwI1ll0eSIdHGjTzdU4mBX3DpvjsTRaU/nW3yVq74H9QE5zxtl2StjxAFrckrxI+SDw3k++wUBYQU22fRMCBzGu6Vcu1q0J8VLsUsdQD92R3XF/2rzQwDJs0s8PlnadYMqRXGiFt4GS+rVlPb87zPR2P1ya9pQsjw9kGhcrgubZw0w1uDIymc8Wjh7GWAvA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=jBGcROIh1ZCu0GjMRwaZkrIK4nxmL4RkQ9kO6t7Px+c=;
 b=obhCNRFcGBPUrx3gVldwVAED+GtszCvznW8ckZ7Ti1c+/aP9Jx8VlbU3tbzDhUW5j2cnDyUAan2wiXtldORTqPib8lVFwsGT8goUz/OBZYImaIvjZmUQGG0DDVOBoxKtJb7yCgwMKcO94FQNU0YiBkuZggTAJqLM+Q019Eqh0XqyDxkpGFV3Hxl9iOGjv2ME08t+xqIpPwazVSZruIEEB3E2sRsoOH7WzGjs8zkIDhhHpoJkYQu6pvfMilxYsRTGhXoKScWR200GYo8Kzh/zkHoPvfXMDshmQC0jZ3cLqTdoQKRCTv/X7/6RjofepmTuNRLMnzwu3yRSnaioSK+q7w==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from SJ0PR11MB4845.namprd11.prod.outlook.com (2603:10b6:a03:2d1::10)
 by IA1PR11MB7856.namprd11.prod.outlook.com (2603:10b6:208:3f5::10)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9542.11; Fri, 23 Jan
 2026 18:25:51 +0000
Received: from SJ0PR11MB4845.namprd11.prod.outlook.com
 ([fe80::8900:d137:e757:ac9f]) by SJ0PR11MB4845.namprd11.prod.outlook.com
 ([fe80::8900:d137:e757:ac9f%3]) with mapi id 15.20.9520.003; Fri, 23 Jan 2026
 18:25:51 +0000
Date: Fri, 23 Jan 2026 20:25:46 +0200
From: Imre Deak <imre.deak@intel.com>
To: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
CC: <intel-gfx@lists.freedesktop.org>, <intel-xe@lists.freedesktop.org>
Subject: Re: [PATCH 02/14] drm/i915/dp: Move num_joined_pipes and related
 checks together
Message-ID: <aXO9KtkgWNHagP1f@ideak-desk>
References: <20260121035330.2793386-1-ankit.k.nautiyal@intel.com>
 <20260121035330.2793386-3-ankit.k.nautiyal@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Disposition: inline
In-Reply-To: <20260121035330.2793386-3-ankit.k.nautiyal@intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - c/o Alberga Business Park, 6
 krs Bertel Jungin Aukio 5, 02600 Espoo, Finland
X-ClientProxiedBy: LO0P265CA0008.GBRP265.PROD.OUTLOOK.COM
 (2603:10a6:600:355::11) To SJ0PR11MB4845.namprd11.prod.outlook.com
 (2603:10b6:a03:2d1::10)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: SJ0PR11MB4845:EE_|IA1PR11MB7856:EE_
X-MS-Office365-Filtering-Correlation-Id: 786c804f-a9ac-4ead-df5a-08de5aacd61a
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|366016|1800799024|376014;
X-Microsoft-Antispam-Message-Info: =?us-ascii?Q?3LApnxmR7TKY1sLGo9HpRr51cpUvbBiwJzW5IiSXEMNwzWadZkaXMV6J718J?=
 =?us-ascii?Q?MRP/05mlDxF7tVlrtrsGaDBswixK0Wegj6fKBXykrEKPdccyWzaaINxM9w1h?=
 =?us-ascii?Q?M1vI+6QquZ4+Ep7ENYT5JZqqcy6sS9xWOS5t7dpCQlfbkOs8Tspl6uKOxr5r?=
 =?us-ascii?Q?FGD4H4/CgzoOKbLAtSxZRZCiLMdO9FZ8YapRspyElugl5cKQsDXlXx+qVH2B?=
 =?us-ascii?Q?w9lptfFgzflhSATJzvchBHScmvBQ9ihWk1ApLF0aRqUuXf63M5EcUVuKYHDO?=
 =?us-ascii?Q?EfiPYnNGBVTxVgXutLWGeIS3GOM3LYKvLsY/SJhp/qrjGc0pvJ43dqT0Semv?=
 =?us-ascii?Q?evSGFuTYVhM5s7mEshO/jBHykiQdUZ3awSQEFwPad+eN0qy2I3xuyjV9kroE?=
 =?us-ascii?Q?mwRmmpXdNNX/mLtmiYVND8PE9s6biB5XWBcQO71SDAGfy1lmFwHRD3GKQ+q6?=
 =?us-ascii?Q?Gr9DrDM17QpL776Y464TTa11QrF+3a4QISeKu31QMUgrD9ERnipuCnCVR3F9?=
 =?us-ascii?Q?sceBXh6G6vaXGTJZXtaN5EfzKfrAhl3rt6DMKLx0gds/+qJyarKMHvIIjQKi?=
 =?us-ascii?Q?Aylu/DX2wWO3S07FZnJE/YxWX0g6tFwsB3P071vDaxv7hAO1SbiHCea17mC9?=
 =?us-ascii?Q?SxPiKU4S1LGoQCWAoqpfXfkkg0EBEUPS+j3zKb+aoKRWojL/uCKWOpqck+De?=
 =?us-ascii?Q?mI/igcBX3MUzEAGCpOEC2QMefZHZ8HMH22JsTawJwEoqWI4zC3k1bhq14iY+?=
 =?us-ascii?Q?5geG2KRGnEYZBSa9puFcF9GLjjshQzufJXVTkYPe5FrcRJeBklKj+YW7WT66?=
 =?us-ascii?Q?zUj02lZbXvlhFPj0L/PcwDf8zCezV8EC6A9a6ChS0iTnI4aVkyDaAI4CUgke?=
 =?us-ascii?Q?W29r99dBtU7nXqQ+MlZO+jrygQpheS3qptQeEPWG/LZuvSKWPLgiRCEDX2ry?=
 =?us-ascii?Q?pq895tNLasuIC9SLZfE1tm85wDq7aaguSDWlX9Qc9B2Ls0TXCnII96ctopyD?=
 =?us-ascii?Q?YqBf6R/yta4yf0oBHcOcYRH03zUjv17FWiEZMmjwMHSsmRDDgyJDsVh+YF9I?=
 =?us-ascii?Q?dHEdpCmgcABPJ1u9opde3BBf5goKmCOuPNZrt8BlkMdXYqeJuOfD7coOTwfa?=
 =?us-ascii?Q?78BPgevzm64InvjvBuq9NXaeD0X3GXj332r+xpsErtrMmQWCWUfGWS9KEfRJ?=
 =?us-ascii?Q?l3cqWiAYVVqBD3g0cxqwUG7otTGa/Q5dg2rqfBkNaNSy2Ewgzqc+/EuX20Wf?=
 =?us-ascii?Q?jMsKfTClY4FmuwkgDlKkke31Zh6Cnm+YQpWMfU5W4+e4vSjDqiqh9tnCVtic?=
 =?us-ascii?Q?gcOKxnxKj6o06Ot+54ftuScif7u90+1ZS3bnI49sms0kiO0sPVvRVTVNt5xi?=
 =?us-ascii?Q?1ipu53WdsPPF+2mH61qPCisI5vvf+gRuDHPoj+RyXwpQoUwqLp1x9Jgp3nKl?=
 =?us-ascii?Q?hBfKLNz41HI7pBaLE+aZArztzvAK1tCEoTs2JwlsvKfwugnu+6EVNzZGRUCV?=
 =?us-ascii?Q?J0TomxT3ogjvCi4Cwkv7N8QJ54S3/fHS9ax382TLZvYZ7yTOog8zRxXZIUV5?=
 =?us-ascii?Q?nh7H7VyrY99FUhxCZDs=3D?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:SJ0PR11MB4845.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(366016)(1800799024)(376014); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?3R1qCcxR6es3Nj3BFK+d3M2uPqdOYoPrZIYyBiy2KLg2ONjLxBTWh0+RWAmF?=
 =?us-ascii?Q?TB2/2PAioibj5hJwoWbwcJ6gqA/6AO0GwAsLqh9TZzwE99IskgxfWiVFc6Nw?=
 =?us-ascii?Q?Y+WK2ajrsThvfvW/eVJ5t4wHhyZ3MyahKwA9puozqir19GMyXXO4fNRM2rVV?=
 =?us-ascii?Q?K6eEvZ1EaJAWHN/PuQm0Z+6zDwwYj6E25Q/cEi2YQG/z6S4aAsp1czzrWo8d?=
 =?us-ascii?Q?x339SwNs3HdVLczZ/Cx6GarHThzAMGeZv+6NyqAXRD7No8n1RXe/1g6Kls6B?=
 =?us-ascii?Q?88lvAZfKK1v2Hw4OUjCfED9mCaiwxgwdjtUlcyCtUUnr6AkihpXemxHwgHDc?=
 =?us-ascii?Q?pQ27CJyLrf8Gc7xIQmJ9BrLuEaLfSxaUZaXlU5Efj5krgI4LoOfSFyCzFJ88?=
 =?us-ascii?Q?eHa7yuBaqXs5wVr6Y9pndxj5OpBG8UWvK7bF6Lop5otDUD1Vz7K0cAVF/8fk?=
 =?us-ascii?Q?ZPFExEUvepFymT0zAUGKa68yrijliUOCW/IvG+6Rndsh69WSC5JLkxGvbe1J?=
 =?us-ascii?Q?zFhxK0Jo0eyeqyrc+aIZ/3BEBnDVpUsU7l/I0PKJduTFxxCtyYzE4vVJq9bR?=
 =?us-ascii?Q?w3i8RAh9CyNRxRk1H1p8YacT+unPmxie44+F8d8n0uhwpNT0K6o0XQlPFN6i?=
 =?us-ascii?Q?/bxFxWw74vORjgaN+rn/1IMseKGbE3uV4mxk0wp93gy28owXio1pgGkOD+x4?=
 =?us-ascii?Q?9K5Q6qThoOtmNCN+IjxbqYXnDrgsCzzK2tWm7a6WidjwvNH+awEn2tJKxmXy?=
 =?us-ascii?Q?AD68aRwMWb7mqXTnj1zkRXyKtMHEP5XTWXt1D2b1u8mpnnVxapfMv2r+fhW7?=
 =?us-ascii?Q?v8Zb+w1rRzP6CxQ2ynGJenHmXvSV9HnVZEqBIm3AGfpNVY3BdPG7Cqe+7OlW?=
 =?us-ascii?Q?bruclWrUwUWmdyDSXQyPTFNkaXPmMha7EdCoGrkHhACC6na16W57t4ON4GgD?=
 =?us-ascii?Q?XmQiWIzu9q65yIgJkdAwprIW1UusKSDuG93+Kerqyj9IjkQQtIbIOEllUGQO?=
 =?us-ascii?Q?ErOEWuQFJ3mqL08yByeOpwosbBgWg7FLDoWi4A8T53RbdaJ66EezR2lbGeM9?=
 =?us-ascii?Q?7fdbjCE6VjfSHuGIYHrmyw3n3XUpHu1uGnjn6LaPff/61ZQR/QHpaMID32+Q?=
 =?us-ascii?Q?g6taSnKeEVllZZPyS+6dQfxUVrm6XAl2r7PqXX3WE7DNzgNoL7zqT04PJptY?=
 =?us-ascii?Q?q6TKWvuxSwsUdsxLetlJVLSRMM2jY1SfYZCjxkD8z5PbFy+xFhTRnGmOYHoH?=
 =?us-ascii?Q?TcsbJDQ/uDRXy9WXnqwUpvzAIDsP1kSHeQxviVo4/G9R6RWwQxXYrdbr5LAA?=
 =?us-ascii?Q?+9mGlgRN3n0+CrfqhBcpemW0iR7h/etl/Pqq5PVlHW2g8KMEnd26tRpMUKYj?=
 =?us-ascii?Q?fvyXaCEV6yBoTSVzogbKvRnh3HDt7Ivu7khmhd497Mh/NVNEDl3PWmpypsK1?=
 =?us-ascii?Q?/0eTDqw+WoJoyEpBEEmkkW99xcdcydSi7F+n/fbizRXqsO3x5IPQtBxqsbx1?=
 =?us-ascii?Q?xidtFPKMB5fgeQ6T4Bi61SOuxUWD2DQYgb9NreQc4bhNXm65y7qeg+pQqK5R?=
 =?us-ascii?Q?GqZhFOkDw19XfLwzQkGU7V6WGuy4YMJlHW6XndN80g2l4Py6DmmKeaSkrJ+/?=
 =?us-ascii?Q?3sVER3b5T7+2885ZXjpmISRUiA1UFsgF+i505I5qlddkN5fuVTA3Lz0Uxg0X?=
 =?us-ascii?Q?33AOFh1gLWj7iEdHpplGjJfliCMCUdL5IDIvoxMCPsXOM3Ks76OdQklGCOFJ?=
 =?us-ascii?Q?Aj2tioYn6g=3D=3D?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 786c804f-a9ac-4ead-df5a-08de5aacd61a
X-MS-Exchange-CrossTenant-AuthSource: SJ0PR11MB4845.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 23 Jan 2026 18:25:51.3037 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: q9BQlQ+myn6VXxMwNEogChAoPp3Sgl2nsJwTYEFkrm0mwfN4EYhzZcDZTCXOPHnnwc3GZL9uXI8rXobeCRfRrw==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: IA1PR11MB7856
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
X-Spamd-Result: default: False [1.99 / 15.00];
	R_DKIM_REJECT(1.00)[intel.com:s=Intel];
	ARC_REJECT(1.00)[signature check failed: fail, {[1] = sig:microsoft.com:reject}];
	MID_RHS_NOT_FQDN(0.50)[];
	R_SPF_ALLOW(-0.20)[+ip4:131.252.210.177:c];
	MAILLIST(-0.20)[mailman];
	RWL_MAILSPIKE_GOOD(-0.10)[131.252.210.177:from];
	MIME_GOOD(-0.10)[text/plain];
	DMARC_POLICY_SOFTFAIL(0.10)[intel.com : SPF not aligned (relaxed),none];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	REPLYTO_DOM_EQ_TO_DOM(0.00)[];
	HAS_ORG_HEADER(0.00)[];
	TO_DN_SOME(0.00)[];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[intel.com:replyto,intel.com:email,gabe.freedesktop.org:helo,gabe.freedesktop.org:rdns];
	DKIM_TRACE(0.00)[intel.com:-];
	HAS_REPLYTO(0.00)[imre.deak@intel.com];
	REPLYTO_ADDR_EQ_FROM(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[imre.deak@intel.com,intel-gfx-bounces@lists.freedesktop.org];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	NEURAL_HAM(-0.00)[-0.963];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	TAGGED_RCPT(0.00)[intel-gfx];
	RCPT_COUNT_THREE(0.00)[3];
	MISSING_XM_UA(0.00)[];
	RCVD_COUNT_SEVEN(0.00)[9]
X-Rspamd-Queue-Id: 6FABA7997D
X-Rspamd-Action: no action

On Wed, Jan 21, 2026 at 09:23:18AM +0530, Ankit Nautiyal wrote:
> Move the calculation of `num_joined_pipes` and other constraints that
> depend on it, into a single block.
> This groups all joiner-dependent logic together, preparing the code for a
> future loop-based evaluation of multiple joiner configurations.
> 
> Signed-off-by: Ankit Nautiyal <ankit.k.nautiyal@intel.com>

Reviewed-by: Imre Deak <imre.deak@intel.com>

> ---
>  drivers/gpu/drm/i915/display/intel_dp.c | 32 ++++++++++++-------------
>  1 file changed, 16 insertions(+), 16 deletions(-)
> 
> diff --git a/drivers/gpu/drm/i915/display/intel_dp.c b/drivers/gpu/drm/i915/display/intel_dp.c
> index 126da297efc5..c0a8ffac6312 100644
> --- a/drivers/gpu/drm/i915/display/intel_dp.c
> +++ b/drivers/gpu/drm/i915/display/intel_dp.c
> @@ -1472,20 +1472,9 @@ intel_dp_mode_valid(struct drm_connector *_connector,
>  		target_clock = fixed_mode->clock;
>  	}
>  
> -	num_joined_pipes = intel_dp_num_joined_pipes(intel_dp, connector,
> -						     mode->hdisplay, target_clock);
> -	max_dotclk *= num_joined_pipes;
> -
>  	sink_format = intel_dp_sink_format(connector, mode);
>  	output_format = intel_dp_output_format(connector, sink_format);
>  
> -	status = intel_pfit_mode_valid(display, mode, output_format, num_joined_pipes);
> -	if (status != MODE_OK)
> -		return status;
> -
> -	if (target_clock > max_dotclk)
> -		return MODE_CLOCK_HIGH;
> -
>  	max_link_clock = intel_dp_max_link_rate(intel_dp);
>  	max_lanes = intel_dp_max_lane_count(intel_dp);
>  
> @@ -1496,6 +1485,17 @@ intel_dp_mode_valid(struct drm_connector *_connector,
>  					   target_clock, mode->hdisplay,
>  					   link_bpp_x16, 0);
>  
> +	num_joined_pipes = intel_dp_num_joined_pipes(intel_dp, connector,
> +						     mode->hdisplay, target_clock);
> +	max_dotclk *= num_joined_pipes;
> +
> +	if (target_clock > max_dotclk)
> +		return MODE_CLOCK_HIGH;
> +
> +	status = intel_pfit_mode_valid(display, mode, output_format, num_joined_pipes);
> +	if (status != MODE_OK)
> +		return status;
> +
>  	if (intel_dp_has_dsc(connector)) {
>  		int pipe_bpp;
>  
> @@ -1538,14 +1538,14 @@ intel_dp_mode_valid(struct drm_connector *_connector,
>  	if (intel_dp_joiner_needs_dsc(display, num_joined_pipes) && !dsc)
>  		return MODE_CLOCK_HIGH;
>  
> +	status = intel_mode_valid_max_plane_size(display, mode, num_joined_pipes);
> +	if (status != MODE_OK)
> +		return status;
> +
>  	if (mode_rate > max_rate && !dsc)
>  		return MODE_CLOCK_HIGH;
>  
> -	status = intel_dp_mode_valid_downstream(connector, mode, target_clock);
> -	if (status != MODE_OK)
> -		return status;
> -
> -	return intel_mode_valid_max_plane_size(display, mode, num_joined_pipes);
> +	return intel_dp_mode_valid_downstream(connector, mode, target_clock);
>  }
>  
>  bool intel_dp_source_supports_tps3(struct intel_display *display)
> -- 
> 2.45.2
> 
