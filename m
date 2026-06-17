Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id ZOezJubyMmr87wUAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Wed, 17 Jun 2026 21:17:58 +0200
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 8F67F69C21E
	for <lists+intel-gfx@lfdr.de>; Wed, 17 Jun 2026 21:17:57 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=intel.com header.s=Intel header.b=kaEkUH+0;
	spf=pass (mail.lfdr.de: domain of intel-gfx-bounces@lists.freedesktop.org designates 131.252.210.177 as permitted sender) smtp.mailfrom=intel-gfx-bounces@lists.freedesktop.org;
	dmarc=pass (policy=none) header.from=intel.com;
	arc=reject ("signature check failed: fail, {[1] = sig:microsoft.com:reject}")
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id B58D910F0E2;
	Wed, 17 Jun 2026 19:17:55 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.9])
 by gabe.freedesktop.org (Postfix) with ESMTPS id AE09C10EAEF;
 Wed, 17 Jun 2026 19:17:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1781723874; x=1813259874;
 h=date:from:to:cc:subject:message-id:
 content-transfer-encoding:mime-version;
 bh=RlIWZh2s8QC/5qfvRSUoTvrwTYj0y5TCfwe8SjvIeZQ=;
 b=kaEkUH+04BBv5LCdgEYtQVZ7lO6jZhXgu2u07+VYFUj4DzQCH9IHzUUQ
 OhCtvQyHVilVta/1lMAc5RqQEAbyLd3r5Vvabi6qr7vsInkMcNiQMbGQS
 BDdyltn3UsTQXVvHQHqLu1hksQdF0LDr0bLosK88QoczgvupGcaxtd762
 GUuTA+Hy8YlWRvGSnJ2PBlYwzQH3+vWkT8+FG+RSUlsfAzqLURJUmTRdh
 3phL+czkIlsvgcvkt+maaMTqSa4QeiB9GnFNgXAeWjSq8s3EkqU4eiFiW
 kmtHyrLnF8jjy6ZQ6xE+Dxm/N8gTDagbWguz23Cmm/8ekIJnOGtD6E5lv Q==;
X-CSE-ConnectionGUID: LI5THpTuSpe7qmn+0r8TjA==
X-CSE-MsgGUID: dniFNZBsT/a8oUk+k0AwJA==
X-IronPort-AV: E=McAfee;i="6800,10657,11820"; a="105339038"
X-IronPort-AV: E=Sophos;i="6.24,210,1774335600"; d="scan'208";a="105339038"
Received: from orviesa002.jf.intel.com ([10.64.159.142])
 by orvoesa101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 17 Jun 2026 12:17:53 -0700
X-CSE-ConnectionGUID: hhbvHnKxRXOXJTDrPOPgFw==
X-CSE-MsgGUID: lJVAaZzRTr2csGjbklZIYw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.24,210,1774335600"; d="scan'208";a="278345283"
Received: from orsmsx903.amr.corp.intel.com ([10.22.229.25])
 by orviesa002.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 17 Jun 2026 12:17:53 -0700
Received: from ORSMSX903.amr.corp.intel.com (10.22.229.25) by
 ORSMSX903.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Wed, 17 Jun 2026 12:17:52 -0700
Received: from ORSEDG903.ED.cps.intel.com (10.7.248.13) by
 ORSMSX903.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37 via Frontend Transport; Wed, 17 Jun 2026 12:17:52 -0700
Received: from CY3PR05CU001.outbound.protection.outlook.com (40.93.201.20) by
 edgegateway.intel.com (134.134.137.113) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Wed, 17 Jun 2026 12:17:52 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=y6yiQmUh9x7u6POkxpV7RjDIcMmBK9c1Moa42CV00lI4YBST0YdquYJ1KhNGUjNfOfur6KexqKz0oxLaoF/TDiqB//iMOytclM9yTIcDXhlXgMMpSk7eb109wBZ3F+4ulDOajoZu+n2I3h3sJLPcvUGmdjTr8f4ICm3AUelIpdvjEO4hu1bQmBS6cgGnGiLzk5SR1OaKacDL56rfemH2Y26LQbPaNEXtOwWG+28/0bkSRZTpqRuzYalVM1yJw/KmXpF0mCj/iT1bHh/D1AF7SEomrfBjOvX+P7III/cMK3AcJ49bajSqcHqCL2cymyfRAYZXO4jhfJuNi5N1VdHOvA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=CbS6Fw0TA1eydrDuHD6DL5GuMblr1e/P4Ri3LuOjAeg=;
 b=jZCWqsieT26OVEzX+FFWu8veQNcHdBATXLudx0qW3KoK5vEDtgzjSvn5L6rJX9FQWkuFy519jnLJcWg1as1N8wxJLodlYOTS9E3NHVcGyt9FkSyFRmPn3KG9FhqBhriZ0zLFkLxNylqeZOuqC9RhRyLiB/hCy1A8TBNQldMgBdADa/aOXyF15Sj2DWYgBUa+VYTker6kysV5+aD7cQrqO7H9DMMmGyIEouvevOMbTg3CJ5+xS2eHAtCfZfnEVOHk85DU4sAkHFmkMU201YpJaDuK3xk3jtIW3oQEyMo1oODLdEyaX+UAmsixH2Kpq+V/3rVjnVVHvtGHmcV1uUQPng==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from PH7PR11MB6522.namprd11.prod.outlook.com (2603:10b6:510:212::12)
 by SA2PR11MB4971.namprd11.prod.outlook.com (2603:10b6:806:118::18)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.21.113.18; Wed, 17 Jun
 2026 19:17:49 +0000
Received: from PH7PR11MB6522.namprd11.prod.outlook.com
 ([fe80::e0c5:6cd8:6e67:dc0c]) by PH7PR11MB6522.namprd11.prod.outlook.com
 ([fe80::e0c5:6cd8:6e67:dc0c%4]) with mapi id 15.21.0113.015; Wed, 17 Jun 2026
 19:17:49 +0000
Date: Wed, 17 Jun 2026 12:17:45 -0700
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
Subject: [PULL] drm-xe-next-fixes
Message-ID: <ajLy2brwvOZEFNNN@gsse-cloud1.jf.intel.com>
Content-Type: text/plain; charset="iso-8859-1"
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
X-ClientProxiedBy: MW4PR03CA0115.namprd03.prod.outlook.com
 (2603:10b6:303:b7::30) To PH7PR11MB6522.namprd11.prod.outlook.com
 (2603:10b6:510:212::12)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: PH7PR11MB6522:EE_|SA2PR11MB4971:EE_
X-MS-Office365-Filtering-Correlation-Id: 93878337-0ed6-41a1-07f7-08decca51e9f
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
 ARA:13230040|376014|1800799024|366016|7416014|23010399003|18002099003|11063799006|56012099006;
X-Microsoft-Antispam-Message-Info: 75zRnMcmiqxVDIC495/Z/x8jc6AqguwXyfDi9iBmCWqbgAZaHFPuUljBFE2KmlxS0R9kgQeSCbr5YeazCdDPvEEX+2G+1xfZy/biqIdsDdM9eevG731eqiri3hRNIgmGZi2Rp1K2ShT2N91zgQAjNsFNiTwvzvF5du9bavgXDLghEIqGD7LI5ZHGxNfP98q1/UHJL2orlOvNholj0EgkVG/GKKaUJazWpmZM6pzbme9gZMBSAyrOkpBJC3/xvCKK552sqIJdibvJEPWaC1nulXPnRqndL6XxnCNijocez3Tx6jwY142Om4BEyBzj+6FOxbVJDVYud4JIEWV3Nm6h0bJLOHmc1xhqMMd9kmqG7q3JeV0dl5aO44No6L3Nn/efEnJ2UzMco01jXZRnr0Z+kXHozC6jq8b9IDSemLB5vTUHYZ+xLEJ9kmE0WZUDVUiEPhq2kOfoLBQaGc4KoK5AdpH4tNwH7BwuTBqEHBZw34t5Pq26lg/iUrI/nLDHljbkdkkNGl81MlSOZwF24+R5r5iK50V82OYvfu38Esny3eI7pNbocJOQBnQGhdKhg//zPCELWS44TjCaSVWmfmBnp9u0tcym8IudA1LSrriap5zRjaWnkln26HvYqjFZFn5//WfG56koW2EuKv9d3NTkmA==
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:PH7PR11MB6522.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(376014)(1800799024)(366016)(7416014)(23010399003)(18002099003)(11063799006)(56012099006);
 DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?iso-8859-1?Q?m5HipVqVMmAhvXsuyLlba9LODC+ZvnfvEMojtCTTO8a+FH3/qAnNoRl4Sc?=
 =?iso-8859-1?Q?vJVkapC/GV/r5wdde0AqZavF++kI6vKAhuHXIGlxyZDB3vRISVz0I6Qjrq?=
 =?iso-8859-1?Q?zmSSATWEkh4SSIn/yZt/m4daQbVZo/vGbharzFCOU3vUu7WffgZjp3TgBZ?=
 =?iso-8859-1?Q?CAkfd4S8yqNSMLAI0ec9VA8YutiV8pKgJ2m4pdEzHwziVYT3eu0iVIk027?=
 =?iso-8859-1?Q?OlQW/us9fM3U4A5E0wRYDEuZSmUURs/z6xoU6LIcj3ffx/FtH81NFtN27T?=
 =?iso-8859-1?Q?tYMX6QfNkKm+FKXB/2yOWWGtqPey8KX3M4PryS3YnWOQxOVXsGT+x9HrQr?=
 =?iso-8859-1?Q?Kb+1MviB0ci3EZzXTWdLef3UzMIdkEPTJZ6gjYOa5rppH9J6rHjGKUsuPn?=
 =?iso-8859-1?Q?EUaZWN0NeUvdxVG3y1eLaPEsEmKZO3RAiErC8ZpOHdRh/vfiHN22h6DA+E?=
 =?iso-8859-1?Q?U0su3Lw/JJSOEHIsVAXTfXhgPG+lZ/7OpTbbjwsp7Rcev4aniqLwsVqdMJ?=
 =?iso-8859-1?Q?zra6IAGwt0xIrux4aFIGlADTWazHuWSKvSEFlxbYQddPjMBAh4NetBWwdD?=
 =?iso-8859-1?Q?wcfQM1UBn+RCkwvr+u6lHdlrU8wjp4cnlL6W7k2cnSvfg887UKKkrQwfNc?=
 =?iso-8859-1?Q?vamwhlvQA0lIXLL2ii7hTNTVggcmqqE6iaG0i8PmZVPYrf1L1muYfB/UBa?=
 =?iso-8859-1?Q?Q/6cggVlfzoxCILYQJBGZGSI1gdcTT6k31FquZRf+21Mi3Gjz36vj8GOVi?=
 =?iso-8859-1?Q?6LoAGaQL8h6PB71Eer2b8TwvUfTEQdh8xVkTOs5V3p84VBX2zMGH2IC7gm?=
 =?iso-8859-1?Q?52gyxWn5nb0HJ/kNzjdJM4NQJFmGc5Tw9ugZy6r490J9K8v10g9B75Gvv+?=
 =?iso-8859-1?Q?mNNAF9JuCrvIT5egz3meVj6+tZmj4QwP8O/xEQQjemupmzVRU2Vxt7Xfh7?=
 =?iso-8859-1?Q?Slj4nB59YRwb2a6Ge6SrJlJLJJwTc6r3gruAK+7ZFUOEOimZVz/ebwIkTS?=
 =?iso-8859-1?Q?/YpNFC17R0DqSdNioJv+uTSnDRkuXlIBeHZYrPduAhG9c1a/G6Cdsbx43f?=
 =?iso-8859-1?Q?52zVtzZPt4l2Ssz0WNLvI9vdXSfbHo7Y9BiM9965+HA7+44mLwIl83wLV4?=
 =?iso-8859-1?Q?RQst7NFhxAyX32UHRalrtSwuclS98dObWekiNH5DbeZnKZFChIW3JOUw4m?=
 =?iso-8859-1?Q?oTuhCivdX5xGb8t+Tc9AkpauDHz52XKPCxVC6i4+5NKgwkQ0FqJfA6nIzw?=
 =?iso-8859-1?Q?nu525/EWvo+JVgrZx3fTxMjlTUiT8CP1p2r5BPcsBvl4q3PTcFNlJNw/Ns?=
 =?iso-8859-1?Q?w7CFeq/uytNvZLRkJT2HIiQhLdNxATr9WmHpKSGiaZkuwJhJveYgA5YgIq?=
 =?iso-8859-1?Q?WUerz5EVcu2uTgPhzZgOSa+CAWwAeHdNlTGdooH9t6dvjPwzfcwnH1h9q0?=
 =?iso-8859-1?Q?JBnl2UMXSq98zZ30LTgEOcDDgV3aEgiMmJe5Vi6FOlKeL6k0QEYJddeVVe?=
 =?iso-8859-1?Q?femWa3MZxOayQ4E0czkTQtsrwOHIVuQP/aQ/HeIcEJv6P7hkw6olpk8mx0?=
 =?iso-8859-1?Q?drhw3i5bM95KDGmPShwdJPOZ7zyCaWaS8gHiYP1vSEsba4p85dSsaSaATJ?=
 =?iso-8859-1?Q?Nwj2beKfuT0ZxKhH28lhtQ6Ii5cn3oh6X/cT2GbciABr5K+TXV7QeHG2YG?=
 =?iso-8859-1?Q?NGF7FBH7INMRXJSm/5iy6oNwChQ/tLdrgqfZJs66ncSi1c4hbEVvJOZsBb?=
 =?iso-8859-1?Q?rWYjkd7rEXYGov9eY7dVgveh0r7wkDtOEIWa9sisAzPZYBEwVsbLD9UWCA?=
 =?iso-8859-1?Q?dPxAzcBqtQ=3D=3D?=
X-Exchange-RoutingPolicyChecked: XmTFDP+zjDKsZsvC3P39Zs8PwWJ37mtFcDZePEZh9JSlHYN7YuMPHZ9M5MNqxmyB+dALgcbekUhbTAKUZ1UgunH2USDsUVmwoBjtgj5bE1lbDRomsBOuD3OduF3ClSJs3AawOk28HNryIsSm/AlvpQ2dBRquFyXqTVQX8emwo+leB4voMLIMnYJkF7effz9S/yUUXu2nWXW2BjGh71se9tb/ZedRXg0dYvYDo8Qt6XPJcTNmqhbRA8wlXaZXTohvasDqk87Y1E3S0cW/zOQswux+IboPM6M51qrfjvJ0/tjoAjexygIEhKPd5RbozZ56buN3Fro0VYBVzBspaweifA==
X-MS-Exchange-CrossTenant-Network-Message-Id: 93878337-0ed6-41a1-07f7-08decca51e9f
X-MS-Exchange-CrossTenant-AuthSource: PH7PR11MB6522.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 17 Jun 2026 19:17:49.0044 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: V3pqsCsTqddqsAODuPttu/UoYV5ALl5wl+GHt4aGfPRQeC84KHV8qaER+w3GINddxqi4rJXWA1A3U3qwOjWADQ==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SA2PR11MB4971
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
	DBL_BLOCKED_OPENRESOLVER(0.00)[lists.freedesktop.org:from_smtp,intel.com:dkim,intel.com:from_mime,gitlab.freedesktop.org:url,gabe.freedesktop.org:rdns,gabe.freedesktop.org:helo];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	ALIAS_RESOLVED(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[matthew.brost@intel.com,intel-gfx-bounces@lists.freedesktop.org];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[intel.com:+];
	MID_RHS_MATCH_FROMTLD(0.00)[];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	TAGGED_RCPT(0.00)[intel-gfx];
	MISSING_XM_UA(0.00)[];
	RCVD_COUNT_SEVEN(0.00)[9]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: 8F67F69C21E

Hi Dave, Sima,

Here are drm-xe-next-fixes for 7.2.

Matt

drm-xe-next-fixes-2026-06-17:
The following changes since commit 52d4ab1ca790a668cc8f2c27017138b1c467168c:

  Merge tag 'drm-misc-next-fixes-2026-06-11' of https://gitlab.freedesktop.org/drm/misc/kernel into drm-next (2026-06-13 08:10:38 +1000)

are available in the Git repository at:

  https://gitlab.freedesktop.org/drm/xe/kernel.git tags/drm-xe-next-fixes-2026-06-17

for you to fetch changes up to 0b5ed2756d45b04669502a1f13b1657ec7664571:

  drm/xe: Add compact-PT and addr mask handling for page reclaim (2026-06-16 10:18:52 -0700)

----------------------------------------------------------------

----------------------------------------------------------------
Brian Nguyen (1):
      drm/xe: Add compact-PT and addr mask handling for page reclaim

Daniele Ceraolo Spurio (1):
      Revert "drm/xe/nvls: Define GuC firmware for NVL-S"

Matthew Brost (1):
      drm/xe: Set TTM device beneficial_order to 9 (2M)

Niranjana Vishwanathapura (1):
      drm/xe/multi_queue: skip submit when primary queue is suspended

Raag Jadav (3):
      drm/xe/drm_ras: Make counter allocation drm managed
      drm/xe/drm_ras: Add per node cleanup action
      drm/xe/hw_error: Use HW_ERR prefix in log

Rodrigo Vivi (1):
      drm/xe: fix job timeout recovery for unstarted jobs and kernel queues

Tangudu Tilak Tirumalesh (3):
      Revert "drm/xe: Skip exec queue schedule toggle if queue is idle during suspend"
      drm/xe: Clear pending_disable before signaling suspend fence
      drm/xe: include all registered queues in TLB invalidation

Tejas Upadhyay (1):
      drm/xe/guc: Fix buffer overflow in steered register list allocation

Thomas Hellström (1):
      drm/xe: Fix wa_oob codegen recipe for external module builds

Wentao Liang (1):
      drm/xe: fix refcount leak in xe_range_fence_insert()

 drivers/gpu/drm/xe/Makefile             |   4 +-
 drivers/gpu/drm/xe/regs/xe_gtt_defs.h   |   6 +-
 drivers/gpu/drm/xe/xe_device.c          |   3 +-
 drivers/gpu/drm/xe/xe_drm_ras.c         |  61 ++++++---------
 drivers/gpu/drm/xe/xe_exec_queue.h      |  17 -----
 drivers/gpu/drm/xe/xe_guc_capture.c     |  10 ++-
 drivers/gpu/drm/xe/xe_guc_submit.c      | 111 +++++++++++----------------
 drivers/gpu/drm/xe/xe_guc_tlb_inval.c   |   7 +-
 drivers/gpu/drm/xe/xe_hw_engine_group.c |  10 +--
 drivers/gpu/drm/xe/xe_hw_error.c        |  12 +--
 drivers/gpu/drm/xe/xe_pt.c              | 131 +++++++++++++++++++-------------
 drivers/gpu/drm/xe/xe_range_fence.c     |   2 +
 drivers/gpu/drm/xe/xe_uc_fw.c           |   1 -
 13 files changed, 174 insertions(+), 201 deletions(-)
