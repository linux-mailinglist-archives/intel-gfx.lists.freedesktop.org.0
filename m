Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id dOsJECnPIWrYOQEAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Thu, 04 Jun 2026 21:16:57 +0200
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 11D2A642D53
	for <lists+intel-gfx@lfdr.de>; Thu, 04 Jun 2026 21:16:56 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=intel.com header.s=Intel header.b=B5OoSYDw;
	spf=pass (mail.lfdr.de: domain of intel-gfx-bounces@lists.freedesktop.org designates 131.252.210.177 as permitted sender) smtp.mailfrom=intel-gfx-bounces@lists.freedesktop.org;
	dmarc=pass (policy=none) header.from=intel.com;
	arc=reject ("signature check failed: fail, {[1] = sig:microsoft.com:reject}")
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 5C44A112970;
	Thu,  4 Jun 2026 19:16:54 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.10])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 5184D11296E;
 Thu,  4 Jun 2026 19:16:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1780600613; x=1812136613;
 h=date:from:to:cc:subject:message-id:mime-version;
 bh=YAVFrPruAF29TbvdMba9QmFYS+FS7yUNMWhss4DJiy8=;
 b=B5OoSYDwt7eBwwSSpLAoj9zlzhdDKTRc4gYVF3O+4Jx9daGC/hPVz12K
 U97NRPuQqaGZkSI9m2vd5xK20nkDlZS0rSVUzpv4K36MO6eVkXxM66Nze
 SeF18r0yCt+PwDLOTb2w9RXsm4BRdZxpsl4Ryxt654xTy8rM538lykCes
 OWqP/ZG1dQXRqZfBV+GFvpJuigcOyCJGLBVBaHKUlmYDekd7r+9L/OE68
 OBj9KsXCgUbGAftPibxodK8pP89yI/eeKbb5d1XkXEprVpbXBbotcHoTj
 rBZh1oPVv9x85Klk77xJALnrfcnPKvNVnfcOsspXBfdLfuf9xi3rAHXHA Q==;
X-CSE-ConnectionGUID: RwhoDOQsSwmeRF3TcfAixg==
X-CSE-MsgGUID: aT3otzUkRra7fS9V7ebrBQ==
X-IronPort-AV: E=McAfee;i="6800,10657,11807"; a="92809103"
X-IronPort-AV: E=Sophos;i="6.24,187,1774335600"; d="scan'208";a="92809103"
Received: from fmviesa009.fm.intel.com ([10.60.135.149])
 by fmvoesa104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 04 Jun 2026 12:16:52 -0700
X-CSE-ConnectionGUID: m4v9qAnuTwSGbWcNIkZE5Q==
X-CSE-MsgGUID: L7RNNWp7ThWLYPl3/o9drQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.24,187,1774335600"; d="scan'208";a="238281635"
Received: from fmsmsx903.amr.corp.intel.com ([10.18.126.92])
 by fmviesa009.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 04 Jun 2026 12:16:52 -0700
Received: from FMSMSX903.amr.corp.intel.com (10.18.126.92) by
 fmsmsx903.amr.corp.intel.com (10.18.126.92) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Thu, 4 Jun 2026 12:16:52 -0700
Received: from fmsedg903.ED.cps.intel.com (10.1.192.145) by
 FMSMSX903.amr.corp.intel.com (10.18.126.92) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37 via Frontend Transport; Thu, 4 Jun 2026 12:16:52 -0700
Received: from SA9PR02CU001.outbound.protection.outlook.com (40.93.196.2) by
 edgegateway.intel.com (192.55.55.83) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Thu, 4 Jun 2026 12:16:51 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=QkFanN1x/NnUn8rDRsk0/XiFUwIUIZS5eRVG2mXYjNUHPQ3QO6dWYVB0sAMkwYADwfi+F4IJ5U7nM9w3IjXnK4hwX6b0Do7NQvfg8Karct2g0fZelWYyEFSqVcboFc0V+Ko5nKCv+ZmlYLv7ELX4frNsgl68HFvx0qg37qgxc7/sJl40mLp/2S5c0KjoRamkGLIoA0NkYg0VC7kqzx9NaurJT/3Jm5wq2DZZJlyDuhbVVxnuCECB07YboDNzoao6hDeBVY17e3xelvcpRXhVEd+4f+i3xVqC/om+bz9ZNIaZR0xuH7cyaZONaQ5858ZrqQMRWCb0N3SoC1FtPFgNxQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=TwQruDUqCvy3xXXYKpcjtFs9n4tel2jBQUO35ZgkHpk=;
 b=cEjhFYbzvoAF3lU6sBYPwnR2YzJ+L1kRdlpaV/9APLXMSA0pyx4untt4Ed6GcZZoNBMbi4GNwvPBryrRPG2BvQY1gOfWatgtcusHz1vFsysdiHWsSbm9PMIta+yi0xErBmNFha8cQekd1wzr1HcFKrOo56xxJmtkr2Ce+jerbx7npJyyCqkivx2ZBPEypDK9oO2gBcWs+1lhXap4L7s80hwNWQhy9kqmKjVH1FQ7Ibsi1QLkQQFuTd/N7/NGzZPq4PWjlE9fq0zKrxA8BZZHY8dNc2zBKV2jaMXmVHDSBfipL22C8ehEDyqdQVOcEjL5qVV2qGdjhP4CyuU1n1XQsg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from CO1PR11MB5073.namprd11.prod.outlook.com (2603:10b6:303:92::23)
 by DS4PPFC77662F02.namprd11.prod.outlook.com (2603:10b6:f:fc02::4c)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.21.92.8; Thu, 4 Jun 2026
 19:16:49 +0000
Received: from CO1PR11MB5073.namprd11.prod.outlook.com
 ([fe80::a153:939c:df8c:f4fe]) by CO1PR11MB5073.namprd11.prod.outlook.com
 ([fe80::a153:939c:df8c:f4fe%4]) with mapi id 15.21.0092.006; Thu, 4 Jun 2026
 19:16:48 +0000
Date: Thu, 4 Jun 2026 15:16:42 -0400
From: Rodrigo Vivi <rodrigo.vivi@intel.com>
To: Dave Airlie <airlied@gmail.com>, Simona Vetter <simona.vetter@ffwll.ch>
CC: Jani Nikula <jani.nikula@linux.intel.com>, Joonas Lahtinen
 <joonas.lahtinen@linux.intel.com>, Tvrtko Ursulin <tursulin@ursulin.net>,
 Rodrigo Vivi <rodrigo.vivi@intel.com>, Thomas Zimmermann
 <tzimmermann@suse.de>, Maarten Lankhorst <maarten.lankhorst@linux.intel.com>, 
 Maxime Ripard <mripard@kernel.org>, Matthew Brost <matthew.brost@intel.com>,
 Thomas =?iso-8859-1?Q?Hellstr=F6m?= <thomas.hellstrom@linux.intel.com>, "Oded
 Gabbay" <ogabbay@kernel.org>, <dri-devel@lists.freedesktop.org>,
 <intel-gfx@lists.freedesktop.org>, <intel-xe@lists.freedesktop.org>,
 <dim-tools@lists.freedesktop.org>
Subject: [PULL] drm-xe-fixes
Message-ID: <aiHPGiPrAyHgwBZl@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Disposition: inline
X-ClientProxiedBy: BY3PR03CA0026.namprd03.prod.outlook.com
 (2603:10b6:a03:39a::31) To CO1PR11MB5073.namprd11.prod.outlook.com
 (2603:10b6:303:92::23)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: CO1PR11MB5073:EE_|DS4PPFC77662F02:EE_
X-MS-Office365-Filtering-Correlation-Id: cfd68f53-d561-4d97-4083-08dec26dd32f
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
 ARA:13230040|366016|1800799024|7416014|376014|56012099006|18002099003|11063799006;
X-Microsoft-Antispam-Message-Info: 2j2Za7Sk/ERbvZp3vTrUSOxIuIsun3BLEZkyEv5jowE8GM6zp0slbaub/fEC5Ehbp1aJh1oDCVuMS+4vOpz3WyGdCI2EzGchLaHPFOYvr/IyYe226UBAuWqZeoesgpka9PXGdT6/dlNAd22LtJLTpKD0hPuLsAzshdZ8u0s6N1FMdXWVz0JC8qgXz4p4dJOsBgk/HNWa3F9W//skodCsKXd7cnoSCBrFTHlkM1BVKtDaVVzv0xsq2sYHGEjKfJr1Fgsz4sXclsajiALC5q4en1NpoaIjvbkwuEUOmLblQAu/NeK/+IWq3dNmwUMHvAqeCn8KZaBKyxKi7uUZcDW9f/RbgRiztf25DSxLq6NppG/pEEbJWMLXwYHVgUY+I/OzJl2D3KfH6v/SDU+Ep44qhJRJMyOJ7jyFHICqhvxAGLZUAQLANh/IBifqUAyzxktCj+9K6i4ocQrnonumbkdHAKtDhbqB73OhMbA/53Za5mNNDScozIgtEBfZhROQRxZLGGwVDhObpuhTqV6hTiqE+xiHxou0JNMukxpuh1MjI8DBuGihoCQ5CvZoFCyCqvtGaA1+hWzP9ojHkxVXAnnhvnS/WHGPQRURdPRFpdSFfOcFXYvC/NUDQEKRO+xW1U1klYxOjMeM7ahq2KTUnrWTCA==
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:CO1PR11MB5073.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(366016)(1800799024)(7416014)(376014)(56012099006)(18002099003)(11063799006);
 DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?hQWTtHWHtAG5Qwnb+MJh8kjxjvOOlcdJZ5Zj7zc8N+MF+naiqC/hdadSsqg+?=
 =?us-ascii?Q?f3Z8/6nNj8LEaBxW025ihMfIcIl5Bfv8uC0rjBjwqa1oHXCr9ScQTkJkbN4m?=
 =?us-ascii?Q?GVPNqERktwWOraJoWUyZvdmmP3nDO0iXkbkfdeVUJwRks3HEzJTYaULxkOIw?=
 =?us-ascii?Q?q9Sy4wfVYOaQZLZ0o96J+4kJ1giwyLSVMhZyLtdRPbLeF0DB6OmSaU8thIWj?=
 =?us-ascii?Q?mVs3wuzlXL2r702V5s+sTrrvpWsbTZ0o+jhHuvQTXpja6ytNttfcaWnbS6ix?=
 =?us-ascii?Q?DlUUSrl8qx4LVAgVO4TOIZn7w4WwNf19O34Bcarmvsuewv4/PHoGPv5EQDnl?=
 =?us-ascii?Q?RcY6G59AJndKrCcdC0toGo6eNkxx7bR1VCGUlZOIqo0M6RJR+RuG69j8Jmdi?=
 =?us-ascii?Q?qsj9CSVGnGw2+tWufcxzLhwGXd54O9/SECg4QBkp9WriVTTMegKMajhmOcQ5?=
 =?us-ascii?Q?jfpUCjR+qGkc70IYGr6h4grr+bpvL1u6HD0b6nsmrrZiGjjgLh/sH9FrPL4k?=
 =?us-ascii?Q?4G5/VvXu1MMCHXIp1VI8RbpFTuYiZbnLor4oJQSGIZFfmG/hdhtgF3P2TIl+?=
 =?us-ascii?Q?7/rFfsM5Dsl3gVyrPFrsaMpQBfLMlj9jsF4rMVHtww5IKqaI1V3X7eMk3JSJ?=
 =?us-ascii?Q?xnqz+zuxRbRSYdI5omWjVpOAT76lzwENgTmolsweBlfsslv5VRzxcu+mk3yN?=
 =?us-ascii?Q?0MsxRQ0RWS55s6YHIqyjmtoC0DXch5gsHM0w9LSpHqrHqib9mtDhL9pGM/Yd?=
 =?us-ascii?Q?YavDfar1vCeY6neirVB9H/HKFlkSLvmhNVKQteWT2aW2mC3qk1w/6hEkuugW?=
 =?us-ascii?Q?XursDe+7TFyZKSNaG1PbIp8t8i35zW9cfRBd+1WwxUi4vkdxP7YuVlqCsu16?=
 =?us-ascii?Q?bAhL31jlFSdpMb77LZm4FD5EPoHnkI/XLh8odl4ftmeYI9IOoTf8cr5+Y188?=
 =?us-ascii?Q?YFAMWyLZsFMiRAgAFC3JDU/dAZKyZWwULLK7I6EW3lm7w+HwpsIo+qKYUoQl?=
 =?us-ascii?Q?jQ/KilWJAYxtiNtMkdqBOHUkAOp6sHxK1zqV1T+HTko8Ou19sFtEEMxGXMDi?=
 =?us-ascii?Q?XYKUdkAcyHIeri5nt0DF31f/m8EKVlimK+cqxtsq/HWVWjnRotaBRtCbEqqK?=
 =?us-ascii?Q?xR6aOjwnMySBG/YpF7b6UAlYs82JXjdT1GUOZwBp9XCrorn07iMja1fJvH0N?=
 =?us-ascii?Q?l1Sjk7/7RtEGFbHFODHnppj/0BM1eQRnQ2G6b0Da6sx/7LoLDahuUQ2pkKDz?=
 =?us-ascii?Q?1KwM+59nFJp2laH2Yz/XFth/IYiogIKNrdfnJpg/fiQKY2up4rj+5RuXw+g+?=
 =?us-ascii?Q?mk/GzXd0fGl1ZokX6ObFK7uKo1JhsxRrwgvTD3z5nRpef7VSrZPUxHTpg0Qk?=
 =?us-ascii?Q?zEf0M8fivlBk6IheUCXky9Do0ilXZ/wgbZQ+Dn7q0w8OdGuWgBQNmbl18OPP?=
 =?us-ascii?Q?LYtTvxKF0u8fdmGv/9U9wzjOx/jOAcibGanXfxG+dIU7uaOkQqufRVUg2edT?=
 =?us-ascii?Q?AxE7hYWZqmIApbYPxDcdNxG4KuG5QqZX7OAwg7NQrMQqLR8L03j4ovgJ14Nn?=
 =?us-ascii?Q?AbJ+hcg84RHCB/lPsonOrxME6y7PO72lXaP/UAqPUX9vs1QgEqLRut84QliK?=
 =?us-ascii?Q?6rMgN7fkL+0B4iKCSUoHmmziTeYT/tVolnG6+EREQhIi0l3yyLV25C50Lyw8?=
 =?us-ascii?Q?gY+jmh7Jbf9xa6MNMd4uuX4KsZeUGIoM0H7oYCuJOeFqrP+MAsQeJ/e02NDm?=
 =?us-ascii?Q?nHrJuxKlVw=3D=3D?=
X-Exchange-RoutingPolicyChecked: QEdeMs14VQYHDfB7ER73hp9i1l4pkRVMfAvJBPeU0p19hsp5IPPWaxIv9miqBxxCutmtv6vFeLOsw8+bN9mJMptVlIIUwo7gvdDL6SvSfAl3vlJbnNJ/XdSN9aPMsAVCZwjjE0H5BsMPeTVLisHGGLr7dk+Os71r7Nb901+U5LsNrH/Vqnj6VTjiHTZTIajre2Ym1DEUFEwY7w19iKdli2NumFti2Z24mOaDgOTSeTbutMtIIGcjUPlqxJjk7QdJj9A7q7xrkpnpujExXezTB/3D6JIIPPP1Kgrd1NvvDBzjQzwEC2/HDosyjyHYin3z+d1yHWUDcWSYbj+n7YpHag==
X-MS-Exchange-CrossTenant-Network-Message-Id: cfd68f53-d561-4d97-4083-08dec26dd32f
X-MS-Exchange-CrossTenant-AuthSource: CO1PR11MB5073.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 04 Jun 2026 19:16:48.8328 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: XpGIed8HU0OTodmh93mVe3KIvI38wqqcg0DXgVAW0gKrCmDW0nYRjZlKMUArg34eDKJAIIPvgqN9A/oIFSENoQ==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DS4PPFC77662F02
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
X-Rspamd-Action: no action
X-Spamd-Result: default: False [-0.31 / 15.00];
	ARC_REJECT(1.00)[signature check failed: fail, {[1] = sig:microsoft.com:reject}];
	DMARC_POLICY_ALLOW(-0.50)[intel.com,none];
	R_SPF_ALLOW(-0.20)[+ip4:131.252.210.177:c];
	R_DKIM_ALLOW(-0.20)[intel.com:s=Intel];
	MAILLIST(-0.20)[mailman];
	RWL_MAILSPIKE_GOOD(-0.10)[131.252.210.177:from];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[16];
	MIME_TRACE(0.00)[0:+];
	FREEMAIL_TO(0.00)[gmail.com,ffwll.ch];
	DBL_BLOCKED_OPENRESOLVER(0.00)[lists.freedesktop.org:from_smtp,intel.com:mid,intel.com:from_mime,intel.com:dkim,gabe.freedesktop.org:helo,gabe.freedesktop.org:rdns];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	ALIAS_RESOLVED(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[rodrigo.vivi@intel.com,intel-gfx-bounces@lists.freedesktop.org];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[intel.com:+];
	MID_RHS_MATCH_FROM(0.00)[];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	TAGGED_RCPT(0.00)[intel-gfx];
	MISSING_XM_UA(0.00)[];
	RCVD_COUNT_SEVEN(0.00)[9]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: 11D2A642D53

Hi Dave and Sima,

Here goes our xe fixes for this round.

It includes both reverts targeting cc:stable.

In one of them, I had accidentally merged a support to unpublished GuC.
Instead of pushing it to our topic branch I pushed to drm-xe-next and
that ended up in 7.0 release while FW image is not available in
linux-firmware.git. I'm sorry for this. Removing it now.

The other revert and fix is for fixing suspend regressions around
exec_queue, specially around multi-queue.

Thanks,
Rodrigo.

drm-xe-fixes-2026-06-04:
- Revert removing support for unpublished NVL-S GuC (Daniele)
- Suspend fixes related to multi-queue (Niranjana)
The following changes since commit e43ffb69e0438cddd72aaa30898b4dc446f664f8:

  Linux 7.1-rc6 (2026-05-31 15:14:24 -0700)

are available in the Git repository at:

  https://gitlab.freedesktop.org/drm/xe/kernel.git tags/drm-xe-fixes-2026-06-04

for you to fetch changes up to ec4cbdd163f9bb2a2bd44eb93ecf4a2fa0e912a9:

  drm/xe/multi_queue: skip submit when primary queue is suspended (2026-06-04 09:04:09 -0400)

----------------------------------------------------------------
- Revert removing support for unpublished NVL-S GuC (Daniele)
- Suspend fixes related to multi-queue (Niranjana)

----------------------------------------------------------------
Daniele Ceraolo Spurio (1):
      Revert "drm/xe/nvls: Define GuC firmware for NVL-S"

Niranjana Vishwanathapura (1):
      drm/xe/multi_queue: skip submit when primary queue is suspended

Tangudu Tilak Tirumalesh (2):
      Revert "drm/xe: Skip exec queue schedule toggle if queue is idle during suspend"
      drm/xe: Clear pending_disable before signaling suspend fence

 drivers/gpu/drm/xe/xe_exec_queue.h      | 17 ---------
 drivers/gpu/drm/xe/xe_guc_submit.c      | 62 +++++----------------------------
 drivers/gpu/drm/xe/xe_hw_engine_group.c | 10 ++----
 drivers/gpu/drm/xe/xe_uc_fw.c           |  1 -
 4 files changed, 10 insertions(+), 80 deletions(-)
