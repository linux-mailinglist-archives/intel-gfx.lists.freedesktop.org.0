Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id K6a9CwSMimlfLwAAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Tue, 10 Feb 2026 02:38:12 +0100
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 8AD4B11603E
	for <lists+intel-gfx@lfdr.de>; Tue, 10 Feb 2026 02:38:11 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id C8E3010E497;
	Tue, 10 Feb 2026 01:38:09 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="Vi46yRU9";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.15])
 by gabe.freedesktop.org (Postfix) with ESMTPS id EE91210E4A9;
 Tue, 10 Feb 2026 01:38:07 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1770687489; x=1802223489;
 h=from:to:cc:subject:in-reply-to:references:date:
 message-id:mime-version;
 bh=K6A/uSjDV4Nz4QgFzKyyhkVozrl2Z2FIbKzFeRBykyQ=;
 b=Vi46yRU950A2Fn4GstGueV3snM4Lm2px03kZKTBb9D70jZJb9eQ2xRHp
 KdWEkE3dRb2ISTdJyhiV6eY6oeLVZqKGZyeH4jbH+gvz1DobVSCTBcLml
 IlZM+JlCFzK5ssLnSBMYKjOgRsis442JH2VwyVtm7Ev3bEHOSmWv0qw2J
 F83/nAikxG4h4+M0ZWgoohKLutygMX7gPuu7lzPM4W1vArybZFd0hF5i2
 dDIr8KRzTao2ox+25Lb9fZ2YcBHL8871MmOueYBplonYbb0cssLExlFK0
 siLOFJ6VSis3vVJLtwPJ3Xs0Yw3ibFcZRCCKd91IdXF1t6zj/P6mfmtxT A==;
X-CSE-ConnectionGUID: bsK8kLpWQNaNRr4+/8xZ7Q==
X-CSE-MsgGUID: uoXi84vaQ4G4ba+y1VmXOA==
X-IronPort-AV: E=McAfee;i="6800,10657,11696"; a="75433406"
X-IronPort-AV: E=Sophos;i="6.21,283,1763452800"; d="scan'208";a="75433406"
Received: from orviesa009.jf.intel.com ([10.64.159.149])
 by orvoesa107.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 09 Feb 2026 17:38:08 -0800
X-CSE-ConnectionGUID: 0XGdWLK9TGOJI3NNNRzZyw==
X-CSE-MsgGUID: c9rEuF+SQB2Yn5qh5ErTiQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.21,283,1763452800"; d="scan'208";a="211584857"
Received: from fmsmsx901.amr.corp.intel.com ([10.18.126.90])
 by orviesa009.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 09 Feb 2026 17:38:01 -0800
Received: from FMSMSX902.amr.corp.intel.com (10.18.126.91) by
 fmsmsx901.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.35; Mon, 9 Feb 2026 17:38:00 -0800
Received: from fmsedg902.ED.cps.intel.com (10.1.192.144) by
 FMSMSX902.amr.corp.intel.com (10.18.126.91) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.35 via Frontend Transport; Mon, 9 Feb 2026 17:38:00 -0800
Received: from PH8PR06CU001.outbound.protection.outlook.com (40.107.209.12) by
 edgegateway.intel.com (192.55.55.82) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.35; Mon, 9 Feb 2026 17:38:00 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=ulO4O8Z/JAtbC97pCm69+Pb5CQ+f8pwn7n4+BG0nFgqaQLjH7pSYJz8gCBAOnPRzO4ZzbuZGqR0LoZkuJy7pf96Z58strqOE9MTFkrehjpDoL23JuSogLIU3ZeIsE5AIk69aVgsji8jWluB1wVMeCf+p+clk+8UjFcJ+rI05iSINoRHaregg4BtEXmAwpNtID+A0u+55JhxMzfJTC7oJQPDuh69O8ug5gvZhL8UUeET6h7vADrd6NB1PKHSwPSyxxQUROq7ktAgHIU9u76MDHiNZG2wm2rh0a+VVKDRkEOafYChnG8oe8B3YK6p79zf9QN7a+0onXreQwKv0NpM9RQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=3b387tgqyjVezV+faB4s+ZUmYRlEx0FkqCYf778l50M=;
 b=VTY7cIB9KCiZ5K9/5TvdixSvCjQtc6aTT99QxHTPfqFU2CtQN81iqrn9DeH/0OlrVcMyd+Uaizur0GiOySv4/Kd0CrcvbGHQAyhWNW8lncLgs8iwgGPGiRqSnw8CbQPQm/PuVt0lfKkQD+UuWpCpwqPtpG4PV52uA8T8Ty2bTo1qTZqsMowiXnznIwAjPVoiOOqA+8TI5X1HdHD00Et4S3v9MCZROMXLQWv3KRXbkTMFQucUU3wVXWJaAsQOCAj97Xabh80YWweW0/a5mlelS44E3b53rxNWEK2TKmQgew0SRYff/RM5ljvj+INORicxN/5nogn4Wjp/I9IMmrgOlQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from SA1PR11MB8280.namprd11.prod.outlook.com (2603:10b6:806:25d::21)
 by DS4PPF46B98A11D.namprd11.prod.outlook.com (2603:10b6:f:fc02::23)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9587.13; Tue, 10 Feb
 2026 01:37:59 +0000
Received: from SA1PR11MB8280.namprd11.prod.outlook.com
 ([fe80::cdde:8d34:980c:776e]) by SA1PR11MB8280.namprd11.prod.outlook.com
 ([fe80::cdde:8d34:980c:776e%5]) with mapi id 15.20.9587.017; Tue, 10 Feb 2026
 01:37:58 +0000
From: Gustavo Sousa <gustavo.sousa@intel.com>
To: Jani Nikula <jani.nikula@linux.intel.com>, Rodrigo Vivi
 <rodrigo.vivi@intel.com>, <intel-xe@lists.freedesktop.org>,
 <intel-gfx@lists.freedesktop.org>
CC: Matt Roper <matthew.d.roper@intel.com>, Suraj Kandpal
 <suraj.kandpal@intel.com>
Subject: Re: [PATCH v3 14/15] drm/i915/nvlp: Hook up display support
In-Reply-To: <20260206-nvl-p-upstreaming-v3-14-636e1ad32688@intel.com>
References: <20260206-nvl-p-upstreaming-v3-0-636e1ad32688@intel.com>
 <20260206-nvl-p-upstreaming-v3-14-636e1ad32688@intel.com>
Date: Mon, 9 Feb 2026 22:37:54 -0300
Message-ID: <87tsvp4bv1.fsf@intel.com>
Content-Type: text/plain
X-ClientProxiedBy: BYAPR02CA0049.namprd02.prod.outlook.com
 (2603:10b6:a03:54::26) To SA1PR11MB8280.namprd11.prod.outlook.com
 (2603:10b6:806:25d::21)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: SA1PR11MB8280:EE_|DS4PPF46B98A11D:EE_
X-MS-Office365-Filtering-Correlation-Id: 7827f625-4d28-4192-0a1c-08de6845056d
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|1800799024|366016|376014;
X-Microsoft-Antispam-Message-Info: =?us-ascii?Q?V4DaGXUGmiKTL2GRRapRcwfgWenetd+Fkdjj5n2b2j98GqcpjQDDwmDGuFIs?=
 =?us-ascii?Q?xJveCVKJ4wGbAED6US96W+VZUke42rRt7Y44OEMWCXuOrIejmIip5gu/bnpz?=
 =?us-ascii?Q?iJcRg/BpnpPLAJEYCIUIbWiYqpYBMCQZbynPxGM+mbfwcc8FJFDgI/PV/2kP?=
 =?us-ascii?Q?m0j4/Fx3dMwKqmLsTIGQrd4eIxJrmvYA9dO315Byb30RervVdEbJu3YR77ru?=
 =?us-ascii?Q?1H0uXp3aBdElTCcAgz1LOV8IGpjZNG5/Ti+OJCA38iam5ywj2sGwyjkze2db?=
 =?us-ascii?Q?4DEKGXhYLGK8Wup7gIb3lbkI3IjpMrf6x9UD0dnc7obCOwY7o7w9t5VQSakQ?=
 =?us-ascii?Q?7LltXTaMGt2t6BZwP5tZLpGD3zpKtcosfcjWP58MnWRbW08v6gzel5fST8Fq?=
 =?us-ascii?Q?jCZ+CpjZCqJourkyjaUjr19c3hkk8/jmwN2e1JRacFygOnFAhOnTDlQzKSNA?=
 =?us-ascii?Q?vyx1zVx7vMCGg1IDz+KGagXuRiS6c2ndlkyyi7v1tmDDyXmBvXE5tFBYj1MQ?=
 =?us-ascii?Q?DUMgfvXj75dyCGXnoCaUxTSWOvIomsSZsEfNyxukh5qQ37692Esp7e5E8A8y?=
 =?us-ascii?Q?7QUkvT05SgeNJ7Noprj4WYu2OHx3GcNAifGukrOdQ8zhWhgQtdV68bqtm4BC?=
 =?us-ascii?Q?r2ahF2guXPSTjp1uOsagMT3Xgw7g/ayukWikIcptEhpIDacR7onU5XOnZ/U3?=
 =?us-ascii?Q?/SwNJIIw5sxW3h9NtJRpIRKD3Gv4bzwuuBdWT/qUk7/+d9zE/iqVIpGP8qKN?=
 =?us-ascii?Q?Cva4ioC95oJbkJDSxgxtgLJoLuOHOB0rCrpnNfp8iyfVyYZp6o72ioernONg?=
 =?us-ascii?Q?F9t1+Uadz7P2DvocJdZqCJMTRgKBuukCSR7X0vjeXZDa1xtRrpQYCtnZc0sC?=
 =?us-ascii?Q?am15vgH3ZBVuY7ZHfA8s7gRG98BtXgjn2v07swg+acjzJtP8qIDFDuM3J2ys?=
 =?us-ascii?Q?dz+gJgS4pB6fWsEJQcP6DbjwuF1AK5Lx2gcu0zy952qt5pv4yIPxccJkEua+?=
 =?us-ascii?Q?VzgPDq+OWkqpxpLEIzBzZae6oAqmgmuFCdI4STGCHpKQyqmafOSHmYbFk6Bz?=
 =?us-ascii?Q?fPbhCmIWWigIt0fFal43cOk8+KYkmu27YTJjnO+5gztxl4iNBnd1xxndsRB0?=
 =?us-ascii?Q?G6hromG88/qJtY0zREznSbgV/MkSZY/mf385ook4qcTAe/ZQ3PqIVlTB/ARE?=
 =?us-ascii?Q?Ot5cGcZUjDp94LFxPQF2OOELZU2T7cVFz/Nn0z10DXezadknv8e1/eVTBuSg?=
 =?us-ascii?Q?nOAlsX86Wi+uQwd91s4s5a09phKmxzqS/+4FrvjcoezeX/XRzRLZnTI/mqeY?=
 =?us-ascii?Q?u+n1uKN0kmyz//gu7AuEd3QaBldiL4J48vQ98QkM1c8uNQAJlOxkcpSRByqk?=
 =?us-ascii?Q?PW6cFLARiIrQl7ipbMlINvRNdEFtkfIgkABtacoD3vxdj6QGtvQnjTjK5uow?=
 =?us-ascii?Q?PqtLbkliNtxVlpxW7vilLxOomXoHu0Y1Kx4Wc+HTw4Ei8kq3m0IYCVttiJ+H?=
 =?us-ascii?Q?oY4jmHgmeb9q8n3pMt5y3+593Hjv3zTO07fOYo5pCDgB9CuTj3RgkUG7HJZX?=
 =?us-ascii?Q?uRXFVbO7D/XFmJDGWD4=3D?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:SA1PR11MB8280.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(1800799024)(366016)(376014); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?JLSJjzpfhjw29KX+ByCJBDQ2PfonrlZjXziV1b69aZkgR9ZbMITetE38ZfH6?=
 =?us-ascii?Q?GlBbTkDUqyBCPewzEINXcwIfW+cnQIYwOjMt6yK1/9wW3Zreuc8Qra1ba2RF?=
 =?us-ascii?Q?jVxlPOA5VOxG9KPxn6nVJ1LrjiKY6pVmLdv+yRbCC+I0vs3xiCIa0r5lh3qC?=
 =?us-ascii?Q?vWuZ9nMYTBhCwcAvxQqxJCp0xk0GJBlJM2LCXibuu86E9Iq7vq0OQXKIHZUx?=
 =?us-ascii?Q?xOG1sYFB/o1jtGKgX2Q0kavUEnFEx5ow6upBQgznPUsyzqCIC4/YqOagFz1i?=
 =?us-ascii?Q?00BSbtPdW6wwI0dQK2SddAX083Bhnx0FYBp4iAI+11ExWLRmV9u5IqFWDvFl?=
 =?us-ascii?Q?jgHn8bRpkX8y+nf1Y7nYmPF+D8t2+tGARs8nsRBXgmSava3P93QxQhTXHYuy?=
 =?us-ascii?Q?GiaRMXmY2TQ4Ur5SRV/knqIYpGZNSPqyLWloRDfRRzXqbeO3SnuAZtxbUypw?=
 =?us-ascii?Q?0Lu8UF1oLNyNuPN2aO5ENguDRapoxumh9Xb6CBFh0rl826q5NNRJu5ujVTXu?=
 =?us-ascii?Q?8QYJaamSnxBy7lpqsmaKyhXHJ2aScJc0DyjN1oE4oVScNE5ncrD8VWGyOUGI?=
 =?us-ascii?Q?Vzvv/jTpvzG9ouPAGgtwbk9IBPmi1ljtU3SxinAalxJ3BcorU4dZgf0nqGNu?=
 =?us-ascii?Q?VLcKsZtP6P0ddBPel2XB4HpuLaVIDPK7jrWgynD/nQWA3DGfiRLzHpRVRbbc?=
 =?us-ascii?Q?Ipg5JYvyKzylDztZw44yHj03Mq5O3oFixvze/9xJAnwgeajU0FPLfF22XR+z?=
 =?us-ascii?Q?uVoHrjDkv5iT65JSspkvizEFp/PwAOzBGoUM8lYKSCrqAXyJcop3s/amQntT?=
 =?us-ascii?Q?lmhY1gFlUsPSUQEEwB3cYBvZuN4VTN874vo+D0FmFCZjnrLxgSma2jqRbfVr?=
 =?us-ascii?Q?1ozy3PSyQPdA/HM6QD22EoMVjZYSieAgivL6O39bdPyhgD+GJpfaFnN499Xe?=
 =?us-ascii?Q?8GW9e8jKqaY/Zr0gLAZK3qI0iUoffE/jIjFS5DfqAXY1z8HW4o5HvJFVGFy1?=
 =?us-ascii?Q?4JZnmtNHpbLEabnwKf+2jni1wQkoUREX97Z8uFvI10r2qf1K5wEqpSmIfDz4?=
 =?us-ascii?Q?4DvNkpJPRBT5+itHA5MGQP1UkqXNLkRaUyHZVYsEjl5wpFnLZ32oIqdfqVPK?=
 =?us-ascii?Q?/gHEXrIVoXAnMuDbZgRqgHgC1ty63l9v3sSFOZAQLueJnMQZA4XZvSjsjsxL?=
 =?us-ascii?Q?v3nZq0qFBGP2yWcR/+XYbsOCRDwuk3A2O8Q0NRAGcICmrBCQ40z7wmFya9H6?=
 =?us-ascii?Q?Vb0dXVA2LRislu0IjGHrI96pUT1eZsW195JLjBraniu6727YZQhQeX5P5DWP?=
 =?us-ascii?Q?ghZVrS9QGWmQSXNGQO2OeYRusfNlgt1C2XG6SOKuuGzLTcXMq9yCdXzGlxoH?=
 =?us-ascii?Q?PwhX852h18wlT04n54ZjZnuZwrGacg/MrfVoEYTNipt2jHzjAOb47ZH3QMMS?=
 =?us-ascii?Q?E9w3nVG6RGdZTqvbh2FNs57Ouc1k93gmkUCb5uusUHxOYctQxP6ayl4+Rb/S?=
 =?us-ascii?Q?rkB/jaiCTT/thD+XMXEjumE49LGwda//l9v5H1Y8NpGvYsykFkVzKU8YQdYk?=
 =?us-ascii?Q?JWKPHsWPxm6rJy/qcdSXiSr3R+3r6CldEnCKXtqcUs9QgBjWILo92blfVARp?=
 =?us-ascii?Q?vOa8QvfIfhP1dKjhgwXyuWvPur6a9QIA8vMi+pwL12pgdDbsQN4c2846AqOv?=
 =?us-ascii?Q?JxpzWogxLerptw+PPNRT4YTZRQJmMzMXPqvZiKeUe6lmSxRwSJWRjf/8NerB?=
 =?us-ascii?Q?NBpweGYIGw=3D=3D?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 7827f625-4d28-4192-0a1c-08de6845056d
X-MS-Exchange-CrossTenant-AuthSource: SA1PR11MB8280.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 10 Feb 2026 01:37:58.8695 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: XF2IEbDLoJXpJ56XmTLTRCDthtyMdk4Pu8Y5gUKyL4gfjGSE8qeB1BX6/vQS2ZbKHdvTTOSL3x84ZvL9qlA3tQ==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DS4PPF46B98A11D
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
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [0.19 / 15.00];
	ARC_REJECT(1.00)[signature check failed: fail, {[1] = sig:microsoft.com:reject}];
	DMARC_POLICY_ALLOW(-0.50)[intel.com,none];
	R_MISSING_CHARSET(0.50)[];
	MAILLIST(-0.20)[mailman];
	R_DKIM_ALLOW(-0.20)[intel.com:s=Intel];
	R_SPF_ALLOW(-0.20)[+ip4:131.252.210.177:c];
	RWL_MAILSPIKE_GOOD(-0.10)[131.252.210.177:from];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	MISSING_XM_UA(0.00)[];
	TO_DN_SOME(0.00)[];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	TAGGED_RCPT(0.00)[intel-gfx];
	DKIM_TRACE(0.00)[intel.com:+];
	RCPT_COUNT_FIVE(0.00)[6];
	FROM_HAS_DN(0.00)[];
	MID_RHS_MATCH_FROM(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[gustavo.sousa@intel.com,intel-gfx-bounces@lists.freedesktop.org];
	RCVD_TLS_LAST(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	RCVD_COUNT_SEVEN(0.00)[9]
X-Rspamd-Queue-Id: 8AD4B11603E
X-Rspamd-Action: no action

Gustavo Sousa <gustavo.sousa@intel.com> writes:

> From: Matt Roper <matthew.d.roper@intel.com>
>
> Although NVL-S and NVL-P are quite different on the GT side, they use
> identical Xe3p_LPD display IP and should take all the same codepaths.
>
> Signed-off-by: Matt Roper <matthew.d.roper@intel.com>
> Reviewed-by: Suraj Kandpal <suraj.kandpal@intel.com>
> Signed-off-by: Gustavo Sousa <gustavo.sousa@intel.com>

Jani or Rodrigo,

Ack to apply this via drm-xe-next?

--
Gustavo Sousa

> ---
>  drivers/gpu/drm/i915/display/intel_display_device.c | 1 +
>  1 file changed, 1 insertion(+)
>
> diff --git a/drivers/gpu/drm/i915/display/intel_display_device.c b/drivers/gpu/drm/i915/display/intel_display_device.c
> index 471f236c9ddf..1a7f3ca079e8 100644
> --- a/drivers/gpu/drm/i915/display/intel_display_device.c
> +++ b/drivers/gpu/drm/i915/display/intel_display_device.c
> @@ -1500,6 +1500,7 @@ static const struct {
>  	INTEL_PTL_IDS(INTEL_DISPLAY_DEVICE, &ptl_desc),
>  	INTEL_WCL_IDS(INTEL_DISPLAY_DEVICE, &ptl_desc),
>  	INTEL_NVLS_IDS(INTEL_DISPLAY_DEVICE, &nvl_desc),
> +	INTEL_NVLP_IDS(INTEL_DISPLAY_DEVICE, &nvl_desc),
>  };
>  
>  static const struct {
>
> -- 
> 2.52.0
