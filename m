Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id aMJaJZz4xWkjEwUAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Fri, 27 Mar 2026 04:25:16 +0100
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 77F2433ECB1
	for <lists+intel-gfx@lfdr.de>; Fri, 27 Mar 2026 04:25:15 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id B407110E364;
	Fri, 27 Mar 2026 03:25:12 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="IUP17xLN";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.18])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 05D2010E26E;
 Fri, 27 Mar 2026 03:25:10 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1774581911; x=1806117911;
 h=date:from:to:cc:subject:message-id:mime-version;
 bh=HEM4jpnvGviH7pcd3mng3YG/C1zih2OMPpOSxtnDKUs=;
 b=IUP17xLNDkrAhSv9e0I73RAf3DuOkTWeZ6MWud5z2BhbG65479MAqj8w
 ZGUnNF/QtI4BdZfaQ7n8J1XM5KVaf+zl5iaETHXRnV0IofcuTaBI6weHs
 P6u+1NBFXL59rwexHG5yT4LC6I0BKTRCsFKrZUOX+7ktjORgZ3qCXlM0F
 C8AVakx/2NOgmF6tergOIcgkeaD+CcNHEcqPwjPzzieWT3sM23YtrSCCt
 suIKXo4mzzQnxe1LJHPokKTPb/dh3P8c4ciOHclykhkqLdpUbpIwU9OeX
 S5EE0P+ECy9rI2jdP/fXqZBQbVf0Me0ulFDcRwnfl1AZRDv6ZielDp1kY A==;
X-CSE-ConnectionGUID: kIabvuJBQQetBSCGtyN2yg==
X-CSE-MsgGUID: gCmjggrTQw2xMoGVgfD/2g==
X-IronPort-AV: E=McAfee;i="6800,10657,11741"; a="74835230"
X-IronPort-AV: E=Sophos;i="6.23,143,1770624000"; d="scan'208";a="74835230"
Received: from fmviesa005.fm.intel.com ([10.60.135.145])
 by fmvoesa112.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 26 Mar 2026 20:25:10 -0700
X-CSE-ConnectionGUID: svtVEOWiQeyGzz5a6jdmZA==
X-CSE-MsgGUID: IlkS7QncTEWkh7Ukj0UrEg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.23,143,1770624000"; d="scan'208";a="229974371"
Received: from fmsmsx902.amr.corp.intel.com ([10.18.126.91])
 by fmviesa005.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 26 Mar 2026 20:25:10 -0700
Received: from FMSMSX903.amr.corp.intel.com (10.18.126.92) by
 fmsmsx902.amr.corp.intel.com (10.18.126.91) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Thu, 26 Mar 2026 20:25:09 -0700
Received: from fmsedg903.ED.cps.intel.com (10.1.192.145) by
 FMSMSX903.amr.corp.intel.com (10.18.126.92) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37 via Frontend Transport; Thu, 26 Mar 2026 20:25:09 -0700
Received: from CH5PR02CU005.outbound.protection.outlook.com (40.107.200.65) by
 edgegateway.intel.com (192.55.55.83) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Thu, 26 Mar 2026 20:25:09 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=UWCUoEeixNLxY4rlUQQlyWdEzxz57JmwPfH71prEC6fO/LQsIa4P57clVBed42zObGF6VRpBME7lnMKF5z+GoQVGhNlVeqadOGbFF5uJQAfUuEQYAAiZKlqPVnoIpslPQ72Lz5Jw45TLHfUlpm8k7mm0epiHHDPvdI1RkK8Z38Qp4CQdrY0MHkyBE9V/tbYydnZuUvjEqsRu0130WOolz6296AA01TBWYLNQhLHPate6YRHNN0TqR7u+FnDKRZE+Cw+B5QvfWDD02ifFVC3eAQGoN7+2u6/9bdrSmdnERFqLQo9qNJ/KvkQEwtKH+9Qvo9wU63LimIyrwF4Q3vlG9g==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=ds6vvfKQrXalh+k7/JnSWeVVdfb987KUJCMuPjqxf5w=;
 b=QUGPK+tY/pNCUijc3m7dRzkPPQqDw4zN4vJiVq/M5d1JjPtiXD8c+CpLBnYuBYjrfW2sPGqA2WYGg1wdDc8MXrfFBAjywQE/KidVLSkN2V6tV3qVAS6xM7pnxlur0BrSNF+b6gM3bX2NQ/KRDKFNh1DdKILSM2viZSHwuB4Z1iFNIKJZnbWgvH/24955xO3g5kSnYLVofvBIfjnueVO4+TRxwNPMdL0Uzj9PrmyD6PkE8Iyta+urx/CoQDEWEdFMp4QBgUztEFF1H7JHJdB3H5DEd4vvSgo6qMaAgQu8AW0mTlthfp8ebWTrpvsVnRKvm87MpI5JaWkAWzCZBMn6HA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from DS0PR11MB6519.namprd11.prod.outlook.com (2603:10b6:8:d1::5) by
 SJ2PR11MB7517.namprd11.prod.outlook.com (2603:10b6:a03:4cb::18) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9769.7; Fri, 27 Mar
 2026 03:24:50 +0000
Received: from DS0PR11MB6519.namprd11.prod.outlook.com
 ([fe80::c336:8ed1:4b09:4414]) by DS0PR11MB6519.namprd11.prod.outlook.com
 ([fe80::c336:8ed1:4b09:4414%3]) with mapi id 15.20.9745.019; Fri, 27 Mar 2026
 03:24:49 +0000
Date: Thu, 26 Mar 2026 20:24:45 -0700
From: Matthew Brost <matthew.brost@intel.com>
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
Subject: [PULL] drm-xe-next
Message-ID: <acX4fWxPkZrrfwnT@gsse-cloud1.jf.intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Disposition: inline
X-ClientProxiedBy: BYAPR07CA0088.namprd07.prod.outlook.com
 (2603:10b6:a03:12b::29) To DS0PR11MB6519.namprd11.prod.outlook.com
 (2603:10b6:8:d1::5)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DS0PR11MB6519:EE_|SJ2PR11MB7517:EE_
X-MS-Office365-Filtering-Correlation-Id: 360556be-8e47-4086-d959-08de8bb06705
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
 ARA:13230040|7416014|376014|1800799024|366016|56012099003|18002099003; 
X-Microsoft-Antispam-Message-Info: 7u7Wwrva6WdanMvCumuVCQ011vezjJJibv+TTYFCrtiOFNPRMBRR2BLF0EivKBYGv7mdWliU+OhQgy1+LuI8tdW1qN8zA9UHdXE5tgW83MiC+nU/w4S9yt2226Pag3/p97d2blTCtCyzHwvayyp8zeC22maEYHyeHYbEakqHHAV51ksqglRn26fUIa4rY5013eHqucRUNppep69wluji3XzLg7UtHVN4PujNX7/4esrS4Y+/FUZqQExiZKBrg4xjydK0WRj1HeIDUZ7rMS6+V6pQ7Q+K/hBEZc5msqz8GSXg6vQAzG4H4axyqv+jFhyl4wbwzH9+oNVoRnhqyT4G9Z1pD4l+fRC7ctGNspptlwt4hXwTCa+ey8MbVRaQT80QqW2v2sgcbJrSytbDIyRdHOOdMa/b+9uTKCP7qOSf/UklXUHmx7c+cVg54LHKNg0SbBHkJNgVehf9XdAoCxtkEcTJATve6ruUsgb4WJ3scT/08ytopDMahcxy28wcQN6psgu6K2DZx6a2wTnY6KFG8nzHkx8Hh0J6m1W4bL7R18izGy/WO0qjHToqKvCyM08sAcwgeh6MNTvBulWSQDSbWvZt6BIW8ighU/P0hdDxanQZTqyJaZt8PnpF6Zo34BjAaxKoPKDNuo5Nt0xkdoMWAzzgRFOEI560KWAS9y2a7RJiqJewmfRtVaScFzbb/0yW
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DS0PR11MB6519.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(7416014)(376014)(1800799024)(366016)(56012099003)(18002099003);
 DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?fcXnQ8sa7Mm//FqsWRPVWiNAWG0yQ/+jYHhyJ/iPWZ42LBOptSfgfrgMlS7M?=
 =?us-ascii?Q?cX+iR+aN+emDsBsHKnstH4TaHow4/vK08WwQc8cXyfDuIUA9swsNAn0eEvnc?=
 =?us-ascii?Q?eeR8vAwz1FjcwJXo1WXjdKHOLyZ6OZcM7Fk4pfDxTNz4JkBrJ4mpEZJfa74S?=
 =?us-ascii?Q?edk+BUVygI9HHFGqdz5KLZolwsTuvzU7HFVGBkdlha0mOENMSZ1eyxWLizv1?=
 =?us-ascii?Q?BxACiypiLMciIwY/bn3cQ1X9SFPKaSVrT5AnBgsO1rlsRMPKd4bLrJ5uhSsX?=
 =?us-ascii?Q?DgV/jo9Ja/k6xH4hsNoT7NqxMShOAagSP49UYmgic4QuQol296K4PSoaNMWz?=
 =?us-ascii?Q?ctuP4pItBdfBnNrMcJXgnJ3q6ZvU0/L3PctDrtN/diaN4noA3M09D18k7oxU?=
 =?us-ascii?Q?vju8Vs3Y0WGLBi4SR/uVvdmdMF/T7frv2Qwgc6f0QUdi7dAiDlXnEhjLyfUs?=
 =?us-ascii?Q?dsBVk5nZXQe4+3hEEi61jxqiSr+bz7k8rkp3PJW7ZiXH+NW3iX4ku4BO9Tu1?=
 =?us-ascii?Q?24Dh8vSc3xwvN6GVAr1i37AMbDLYarMp89jRcXkYK5h6ugnRqFjG5j4i3dDE?=
 =?us-ascii?Q?CW99/g92FZFL8gDC16eTYvvUu7/FNpwXgzGDYGoOd1KpZ/4rL76LlQ6fZYxy?=
 =?us-ascii?Q?eW53C2NneCZCEuaH0qatl+1rQtrWIp0eJPGLl1/p04yll1sqi0gnZNhQ6UDO?=
 =?us-ascii?Q?FwQD/vO9J76Aq3j+JM0qL/aEzmft8JJJsC8R7oALft5RRnREYvGtw647suu+?=
 =?us-ascii?Q?hkj1kw7qtw/dOsKojLurOdWiwHpGXgduX4LQZzoDGGDK/+tbDfqLV07gnk9b?=
 =?us-ascii?Q?fuWu/1AASlyHExcp1RsH4yauOoDVpiNXGsym2ae9VXVzM/lrhtf5wZKx+L6N?=
 =?us-ascii?Q?8dEvPAN1Et29Zq+OHXhjzqgod022+eq2a2u1ZWgZc8hcAAlNvAzykIH6DH1E?=
 =?us-ascii?Q?v24uVJTOCP36vreYo1xi3bYPbGUUKYrmC2mKXvAGtHmw/fyWTX7rXDyGIDG0?=
 =?us-ascii?Q?6u2rrQmV1rGV0mf2IJFICDsNmhlvz/okDCOim6w5xbpY/icLZR/zJdJN7cTp?=
 =?us-ascii?Q?az8EU10bmlTihmEghBTBH3dLULjYSSTyuo/1qDazFH+1/fBp3ctXu81g+H2m?=
 =?us-ascii?Q?IJzBoek495QJQXLgIaDupJAqgNMiDjQ0UPs7Rz3BNC6i/BYqX1iTXhBseIo7?=
 =?us-ascii?Q?tqgXRLoTU5idVy5MHzl7J0T6Zv9eU0My0cuXleFsGmUdSEfp2768eiGJ1BgL?=
 =?us-ascii?Q?168nqgav8dCHnBLo4TC161DOBf0LR6EF7FwiPxEqaBT77xixcSlOObDnSmcb?=
 =?us-ascii?Q?Qu7stHggNzsXQOIwXuZbW22I2Zj1qoK0mNHHIojW3lGWVPCupA/lI9NRNwRR?=
 =?us-ascii?Q?YA4XaVDaJBr9GAWbjvtWFa6ZDTftUqKLyjsQJD05Pr9RptH17fCi3TR6eVHn?=
 =?us-ascii?Q?47D/dOD8b6/Gkuj5pmUuL6tRg56wi4FS0IVtUGNabT4EPjkiyJGMAScQLHA7?=
 =?us-ascii?Q?lRzzGV8UFQ6XwoZfgBaa8C3HmlDWJSqa2IGJr8z3L52mCSdlc2CK8+SrPc/Y?=
 =?us-ascii?Q?KfWwu7r5FIDjfo8wqKhIKwj14RUEeAHI6dpAhaylAU5RvfA8oofcZ3fXNlco?=
 =?us-ascii?Q?3KBO+jEO9MWOy6pXjlB3VfxotSViRnOniRYpwid8DZN6wi9h0X0ahV8QeDTz?=
 =?us-ascii?Q?jNpsj32JbrFbfQmwZsjhkEGV0d145zJpg5ri7yvgthrmSM3aLzZ6vIztboym?=
 =?us-ascii?Q?Zxkv8Vp67g=3D=3D?=
X-Exchange-RoutingPolicyChecked: IEjvfQByNJn/bfABmzlGbkj0fI6uo0Ra6d1VpaoH4+4QvNeF/XFOaFZJu+TAochvUhFsRYhQJEG2sFIIFS+ry8GNHLer/3xhtVym3kOMQPG5svdP5fgCx5C88FkcXvMUvhLKS5PsREVzWWfJ0iqGMEh63ZI5ImOGUrJSxTWrcK2UCsyMEzOV7tr4Tg3XyUv+4Afh6tB/zLm+3tatTZSpOFUXGhZTNBvtcgwIX6LIaD/p/EtKOwp+F4gX4tiv6r0SV7Dfi386ERO37qlhKhGkJ+IFzUD/gPuZ9qKEmIl7WPXxH+eccd1uOs6lp5pqAaO3U/8hgbe2kgdNuBx2ECFJ6Q==
X-MS-Exchange-CrossTenant-Network-Message-Id: 360556be-8e47-4086-d959-08de8bb06705
X-MS-Exchange-CrossTenant-AuthSource: DS0PR11MB6519.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 27 Mar 2026 03:24:49.4138 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: LW5sca+YpOhK+xqfuyfFQrQdKFSFxy5cHFs6cPxL8FcJoLyJxWKKQrRGfNsSp3i5nzvNMI1amfWzMXRN1AeiDA==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SJ2PR11MB7517
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
X-Spamd-Result: default: False [-0.31 / 15.00];
	ARC_REJECT(1.00)[signature check failed: fail, {[1] = sig:microsoft.com:reject}];
	DMARC_POLICY_ALLOW(-0.50)[intel.com,none];
	MAILLIST(-0.20)[mailman];
	R_DKIM_ALLOW(-0.20)[intel.com:s=Intel];
	R_SPF_ALLOW(-0.20)[+ip4:131.252.210.177];
	MIME_GOOD(-0.10)[text/plain];
	RWL_MAILSPIKE_GOOD(-0.10)[131.252.210.177:from];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	MIME_TRACE(0.00)[0:+];
	FREEMAIL_TO(0.00)[gmail.com,ffwll.ch];
	RCPT_COUNT_TWELVE(0.00)[16];
	DBL_BLOCKED_OPENRESOLVER(0.00)[intel.com:dkim,gitlab.freedesktop.org:url];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	FROM_NEQ_ENVFROM(0.00)[matthew.brost@intel.com,intel-gfx-bounces@lists.freedesktop.org];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[intel.com:+];
	MID_RHS_MATCH_FROMTLD(0.00)[];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	TAGGED_RCPT(0.00)[intel-gfx];
	MISSING_XM_UA(0.00)[];
	RCVD_COUNT_SEVEN(0.00)[9]
X-Rspamd-Queue-Id: 77F2433ECB1
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

drm-xe-next-2026-03-26-1:
Hi Dave and Sima,

Here goes our late, final drm-xe-next PR towards 7.1. We just purgeable
BO uAPI in today, hence the late pull.

In the big things we have:
- Add support for purgeable buffer objects

Thanks,
Matt

UAPI Changes:
- Add support for purgeable buffer objects (Arvind, Himal)

Driver Changes:
- Remove useless comment (Maarten)
- Issue GGTT invalidation under lock in ggtt_node_remove (Brost, Fixes)
- Fix mismatched include guards in header files (Shuicheng)
The following changes since commit 3d4939c0ec011ad6dfda7c13362b3d2013425789:

  drm/xe: Fix confusion with locals on context creation (2026-03-25 18:24:52 -0700)

are available in the Git repository at:

  https://gitlab.freedesktop.org/drm/xe/kernel.git tags/drm-xe-next-2026-03-26-1

for you to fetch changes up to 05c8b1cdc54036465ea457a0501a8c2f9409fce7:

  drm/xe/madvise: Accept canonical GPU addresses in xe_vm_madvise_ioctl (2026-03-26 19:59:54 -0700)

----------------------------------------------------------------
UAPI Changes:
- Add support for purgeable buffer objects (Arvind, Himal)

Driver Changes:
- Remove useless comment (Maarten)
- Issue GGTT invalidation under lock in ggtt_node_remove (Brost, Fixes)
- Fix mismatched include guards in header files (Shuicheng)

----------------------------------------------------------------
Arvind Yadav (11):
      drm/xe/bo: Add purgeable bo state tracking and field madv to xe_bo
      drm/xe/madvise: Implement purgeable buffer object support
      drm/xe/bo: Block CPU faults to purgeable buffer objects
      drm/xe/vm: Prevent binding of purged buffer objects
      drm/xe/madvise: Implement per-VMA purgeable state tracking
      drm/xe/madvise: Block imported and exported dma-bufs
      drm/xe/bo: Block mmap of DONTNEED/purged BOs
      drm/xe/dma_buf: Block export of DONTNEED/purged BOs
      drm/xe/bo: Add purgeable shrinker state helpers
      drm/xe/madvise: Enable purgeable buffer object IOCTL support
      drm/xe/madvise: Accept canonical GPU addresses in xe_vm_madvise_ioctl

Himal Prasad Ghimiray (1):
      drm/xe/uapi: Add UAPI support for purgeable buffer objects

Maarten Lankhorst (1):
      drm/xe: Remove useless comment.

Matthew Brost (1):
      drm/xe: Issue GGTT invalidation under lock in ggtt_node_remove

Shuicheng Lin (1):
      drm/xe: Fix mismatched include guards in header files

 drivers/gpu/drm/xe/xe_bo.c                    | 194 +++++++++++++++--
 drivers/gpu/drm/xe/xe_bo.h                    |  58 +++++
 drivers/gpu/drm/xe/xe_bo_types.h              |   6 +
 drivers/gpu/drm/xe/xe_device.c                |   3 -
 drivers/gpu/drm/xe/xe_dma_buf.c               |  24 ++
 drivers/gpu/drm/xe/xe_ggtt.c                  |   9 +-
 drivers/gpu/drm/xe/xe_gt_idle_types.h         |   6 +-
 drivers/gpu/drm/xe/xe_guc_exec_queue_types.h  |   4 +-
 drivers/gpu/drm/xe/xe_heci_gsc.h              |   6 +-
 drivers/gpu/drm/xe/xe_hw_engine_class_sysfs.h |   4 +-
 drivers/gpu/drm/xe/xe_late_bind_fw_types.h    |   4 +-
 drivers/gpu/drm/xe/xe_pagefault.c             |  15 +-
 drivers/gpu/drm/xe/xe_platform_types.h        |   4 +-
 drivers/gpu/drm/xe/xe_pt.c                    |  40 +++-
 drivers/gpu/drm/xe/xe_query.c                 |   2 +
 drivers/gpu/drm/xe/xe_svm.c                   |   1 +
 drivers/gpu/drm/xe/xe_tile_printk.h           |   4 +-
 drivers/gpu/drm/xe/xe_vm.c                    | 112 ++++++++--
 drivers/gpu/drm/xe/xe_vm_madvise.c            | 303 +++++++++++++++++++++++++-
 drivers/gpu/drm/xe/xe_vm_madvise.h            |   3 +
 drivers/gpu/drm/xe/xe_vm_types.h              |  11 +
 include/uapi/drm/xe_drm.h                     |  69 ++++++
 22 files changed, 814 insertions(+), 68 deletions(-)
