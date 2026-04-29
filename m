Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id MLldO0hS8mlGpgEAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Wed, 29 Apr 2026 20:47:36 +0200
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 464FB4994D6
	for <lists+intel-gfx@lfdr.de>; Wed, 29 Apr 2026 20:47:35 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 52A4F10E00A;
	Wed, 29 Apr 2026 18:47:34 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="exyLBndc";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.21])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 2005F10E00A
 for <intel-gfx@lists.freedesktop.org>; Wed, 29 Apr 2026 18:47:32 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1777488452; x=1809024452;
 h=date:from:to:cc:subject:message-id:references:
 in-reply-to:mime-version;
 bh=Rip/ONgg6LvXl5Z3lSX/fnz53gzWS4LSORUxg7dy1Uo=;
 b=exyLBndcEucoyQh7B6fpJ1+kGVu+oLrEPkq9SXdp46y7cbZhbiCXRCO/
 V4U/r+KFJRGo3PMyjBxOY6RGvjMamAXlRq3eDAGGKD1VMSNvVDzQrGqW5
 Z/m6bVjP52t+4iQJFVJVVdY/xHhZDObgv0e85QDKLuFxGYOVL3cGMx9wY
 eltaiKOkVJTcThuRMGGFEcz+903Rew++n5caQXngHTfAZ2RXkZQpE5MCB
 /byHGwa7a3YIjr0JhHVHFAOVveksbwvleKW76F4XAL/ZE0CN23qKCmHhn
 ltAUXAR6jlo2JSkV3QeeKPJADRmTYSz+qJe/87I8u327GiDIusI5ul6hY A==;
X-CSE-ConnectionGUID: xOR1zUpDQSSeGXqXxOVWDw==
X-CSE-MsgGUID: fA/VtiIzSA62nfpw2ha5lg==
X-IronPort-AV: E=McAfee;i="6800,10657,11771"; a="78322518"
X-IronPort-AV: E=Sophos;i="6.23,206,1770624000"; d="scan'208";a="78322518"
Received: from fmviesa006.fm.intel.com ([10.60.135.146])
 by orvoesa113.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 29 Apr 2026 11:47:31 -0700
X-CSE-ConnectionGUID: 5QCDOOTqRtGYMHyAXWP5rQ==
X-CSE-MsgGUID: PPS80TvCRXa6HKGCcDkOPg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.23,206,1770624000"; d="scan'208";a="229750370"
Received: from orsmsx901.amr.corp.intel.com ([10.22.229.23])
 by fmviesa006.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 29 Apr 2026 11:47:31 -0700
Received: from ORSMSX901.amr.corp.intel.com (10.22.229.23) by
 ORSMSX901.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Wed, 29 Apr 2026 11:47:30 -0700
Received: from ORSEDG901.ED.cps.intel.com (10.7.248.11) by
 ORSMSX901.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37 via Frontend Transport; Wed, 29 Apr 2026 11:47:30 -0700
Received: from CH1PR05CU001.outbound.protection.outlook.com (52.101.193.55) by
 edgegateway.intel.com (134.134.137.111) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Wed, 29 Apr 2026 11:47:30 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=IDOIshl50RGOQm+Kks93Pf2uFGTzllkqGLaRdHNCqwEawva83XokkGGMpUxfcu9Jm+9Dn1/jQPVmeo48JjP24oxKy9EuaItQc/RQBvQHzZfcJjAkPa40glEnntiQ+4yVQQRGuKxAZ0J0GBlqqZkcoWDNRSdWRwokuujXCZ9Z9gfT8RkeEyIBP+tByomyojHnOcV6L4c2CsUTbE5LyZAIKOGb3slklf/j4ar80fDYgXSf9eO5bfg5lWzRAaPA0tC2dIjbm0YwqG6Q0+xKEXqR2UgdllTaV+dDR0L6PwLC3B8jMQAesJW+TUL0kCDNoapc7Zb1+ZYdM/ySa9osj0+Hqw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=eMgTyGSQIOrZ7KJq9saRhUmsPNK+Lnr5HgO5q3HRKIk=;
 b=NhaIM4DB3f/PxVl68rgJQCEWM6zk5l5bS8DqXIfx5F0ZjIa4evbLW4q08rMSWi5Cu47U2ogrhyJlUTTt4C67BjtIHb01COm7p3ZnJbS5UaWM5P4n4qzVA4YbVCoVSl7QoM9yGjUwgan4EmybRRocDOmrys+KHjzdlo9AkONpNP6S0smgPDxldonZYwP+vZNmRYVCXRLk97SHDK2aEAIyIWHaljdgt+dyMezjZDz426/CkZZr9HcDFWTE/J+vsPdjJ+7jJKqjshZvXOxlkwg+1Wj63qdR0Ngr+tXCHqgw99xvfustf0DfBYMfkZtUScP7kHt6tTsSDoYGO4zKh9oHTQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from CYYPR11MB8430.namprd11.prod.outlook.com (2603:10b6:930:c6::19)
 by DM4PR11MB5994.namprd11.prod.outlook.com (2603:10b6:8:5d::20) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9870.20; Wed, 29 Apr
 2026 18:47:27 +0000
Received: from CYYPR11MB8430.namprd11.prod.outlook.com
 ([fe80::1d86:a34:519a:3b0d]) by CYYPR11MB8430.namprd11.prod.outlook.com
 ([fe80::1d86:a34:519a:3b0d%5]) with mapi id 15.20.9870.016; Wed, 29 Apr 2026
 18:47:27 +0000
Date: Wed, 29 Apr 2026 14:47:23 -0400
From: Rodrigo Vivi <rodrigo.vivi@intel.com>
To: Matt Roper <matthew.d.roper@intel.com>
CC: Gustavo Sousa <gustavo.sousa@intel.com>, Jani Nikula
 <jani.nikula@linux.intel.com>, <intel-gfx@lists.freedesktop.org>
Subject: Re: [PATCH 1/4] drm/i915/bw: Extract platform-specific parameters
Message-ID: <afJSOwDldyckIP44@intel.com>
References: <20260408-separate-platform-from-diplay-ip-specific-bw-params-v1-0-23c53afa7db0@intel.com>
 <20260408-separate-platform-from-diplay-ip-specific-bw-params-v1-1-23c53afa7db0@intel.com>
 <5a2fefe3f3d7ee92d3cc1bca1ffe88370d54c822@intel.com>
 <20260409231256.GB6301@mdroper-desk1.amr.corp.intel.com>
 <87ik9yx4kx.fsf@intel.com>
 <20260410173355.GE6301@mdroper-desk1.amr.corp.intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Disposition: inline
In-Reply-To: <20260410173355.GE6301@mdroper-desk1.amr.corp.intel.com>
X-ClientProxiedBy: BY3PR03CA0021.namprd03.prod.outlook.com
 (2603:10b6:a03:39a::26) To CYYPR11MB8430.namprd11.prod.outlook.com
 (2603:10b6:930:c6::19)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: CYYPR11MB8430:EE_|DM4PR11MB5994:EE_
X-MS-Office365-Filtering-Correlation-Id: 80a89dff-3d4c-45d1-8a97-08dea61fc28e
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
 ARA:13230040|366016|1800799024|376014|22082099003|56012099003|18002099003; 
X-Microsoft-Antispam-Message-Info: p0wePI5mTi8ytqbxefGc14p9V4eG2LLOvgUiHgVkdc6qJG8zTE829jwy3YJiuKd1MPq4erHshaRSRBCaUXjILJFHYaNp0yJyH9/ywQ+FwjwqcWWV32QA0OoPRbCfbVgHJmwzXFr28nO3ZiAesp9NaEJeEzWuj+nPVnGHkYJCj9UDstRunogcd+BfC5wpygEdifaza2qiV1qGfWSYmHhKfZoR0Fdb0czeiaJOPB+dzjuKm5nmN7+U+TNDblwvXrCpVxmiVTMO6CZzVAw0VQixnLWJZQduz/QZjwkWs0rpObsUxNVokdbfDjq8/4dF2kmIWT4Djl5LM3vIZTYv3qNkipd0CbMy4aXiiOHBdhvINuAR5i19DhvKPHhP8GKyRZKUnJE+N/4xziuXVrkVkQKluusF9awDcXWwlSCFTwsLVyvO2bNNatckNoCkG4FhCOzUFWM+fH0gxSzVW67wPeRHVdN4zwW9lEOLJ7kjbp9D8u5c+0YUVOknlFm6hpe4uAYscSFIS2E7Nl27YE10s/s2SLrQRH6BAnHTyjAhkCltvOsRXPSTn9ORNsyt0xEs7WmvgHtJ5siOWqx0zEO67zT4w4NPemLNwnhAkhzcdD2oEsieDEPjeNXjoYPh3yD6qoVcqg4EZsNhYj/CNTt6DHDQobaSq6IIKy+n4/MRJKMLz18QnWIwdJosaRfdbNdD0ubpGVw2qNZHQIsXtKpkTEthrjg4YqxkNw34efWbvv91Fgc=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:CYYPR11MB8430.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(366016)(1800799024)(376014)(22082099003)(56012099003)(18002099003);
 DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?m7caa3gHSvNDeGLF2tE3q9ICkn0ODqf/gMrtGFBVqkfpo5U/0WuWyMysAQtq?=
 =?us-ascii?Q?TRJmIMCZa9IQ5niNJtH6vaocOSC5h3fpNIlYTi+Z6OODlIkyqnuan8iqzYKs?=
 =?us-ascii?Q?RriP0sIub4RbmFTqhkZnpa4jpnGERDs6uqpKScQY+VlYXY5QnFmbRUAo0w/f?=
 =?us-ascii?Q?8HHajsVuOzGipy0TL01g7X0SDtu0P9z3oyc+Q+oXKEItcFoOH0Fes+0i1D3K?=
 =?us-ascii?Q?RhATHQwVFE9sfZqJe2QHnvWFbR7J32at6ksMidCzUh5UKRFElkD6K8cLI9+q?=
 =?us-ascii?Q?O0Sm0SEmsw1AkvTwZYL83GELRbPnGL6U4ypX7r72502rMXXBhVO7wlg85dNi?=
 =?us-ascii?Q?NXGMt0nkuaPZqSfUzsoCDt4yo3P93IKJupvlPs9SHKb5jKj1I6knY459FIuW?=
 =?us-ascii?Q?Patsg76ABomRcc9+eg+NnBR1FQwDw8GIp8Ls3wIWgSu5wZHyJkT/rSce8e8m?=
 =?us-ascii?Q?8vuV+h+ujBrhDWLfupKhmCIbyt3NEvqYA4YMIFGgE31rtNyrT0Eb7vyaljV8?=
 =?us-ascii?Q?mi4qS4GRBWDOFaAKoIyQK1OBlN2x0Aqg2tsyhfzhsy111n8C5vuJ4JzBdc0H?=
 =?us-ascii?Q?n79+jlVcyl6AOgF3wApsViiZxeNVICmbKF2o9PJxT+hvOTX4TW+UoAcQodd6?=
 =?us-ascii?Q?8AaiLQHIPzr+py0y7C/8ZEpxH02oNbLobKO9WlPoygDguZ6ewgwhi+c2koI/?=
 =?us-ascii?Q?uJYaPrtjNaoalf82qHlOpua616Muu/mEfDCmSsGwUnxLJmaO6oknZK4C3j7X?=
 =?us-ascii?Q?oCjFn/rz7GIwqrYLZjqls1xBpUxVU4+lwaElTLRCgUdqIJVMOTGO9zHeJZ7b?=
 =?us-ascii?Q?/te3wZNutJmAzXA1Umh6EChylFvaZUsTv8wPnjECEVsvrtztOx0N9uUx8zYG?=
 =?us-ascii?Q?CQZRCWyDXfTUPpxuLAMvx4EElVxV4bdSCgfFP6/oG2YrnCZl922dtMPV82WP?=
 =?us-ascii?Q?7iAjpPQa5lOTh0f9ZPnqszeDEFAVM9mE+nRglOEA4SQb9tuzr40Nwc04jR5A?=
 =?us-ascii?Q?KBcJ1MMo8VsU7ZuuzObq3Yi3fqryyGmkvX2W5xhSw/0l9pgf67bM5hD6n8tP?=
 =?us-ascii?Q?MnG+XXTzSo+IF5KLAwDjoatFflKF8vRpRsKKinGxOm9tSl8ZUdp3LJ41hByP?=
 =?us-ascii?Q?avzSfxp19MM3kEwF3RPghe7wvfXf2WtrDqc+hXd7IwgaqccJdJ4uvI7UoT4k?=
 =?us-ascii?Q?C7t/tYdPuAIWvOJ2BP9Z1IqfBt1JMCvXWmvrsODVlaYY5kFg/WsnvyrUaLQB?=
 =?us-ascii?Q?FCPdnEmuEi/xbCkJEWBg27Z0HzUMGCsHJzK/tsCFQMuCLSw5GbJeS4JYXlLe?=
 =?us-ascii?Q?oAyhhmriWIRt8dkCpC45dTGZiOTacqKGcPulm2kd6IfuJIPvv6AmhlyCPsgu?=
 =?us-ascii?Q?pmIevGbhs73r830VEf0dlj5Fznl4+2mV+DBJ590ZgUUPLSIH4IQOSEF2FvWT?=
 =?us-ascii?Q?Om19HMAnpUwvE/IMRB3CpCyCaxP06a1GICqfvd8IOqb8RMgHpw5cvzxoR+iR?=
 =?us-ascii?Q?xqGFd9WUQlW3DEmQ4z78UOpbvsDtgZtSZhRP73bFvFKEOkAoFSdrn0F2UBEX?=
 =?us-ascii?Q?zLgeO1gmAow3nGcZ5Bqs7hhSWYsxFIIFsG2maK3saBAGDrkJoh6ZtOyDHisr?=
 =?us-ascii?Q?kqkn7EkvFb0fRJQqjLtKfs32ho+cLLseyJKNPs/feTnWRHCtfZLsOjkpBLoB?=
 =?us-ascii?Q?ejT+q8hAH36Me+LHx5br0Dhf9tXu6JUzZ+nmnPsxhGZpQvBP1Ft2PdsyadPl?=
 =?us-ascii?Q?9XUSim4nNw=3D=3D?=
X-Exchange-RoutingPolicyChecked: UsFVGVFGxIivBicxKD4Q0LIB2qzzkAqhs/v9TTtKHlIU+6Nv4c5kN0nz3xqWwE4M117YN6XRJh4PGyCZAilxvb7W7Oygl/vlLtnGuvkqVJ1douN7ME7kwuS6c1LyR0bVwtcXugL/+VgGGYFYgBu1Fl+tpiM287AW1w8FWnAjU0w2R0F11O1wdiChZKCbZZ3vEEfasR2NBsU1VfOL7UVQUFibjttQuxPiIpeva2aVMWOaKV7aP5W8RUcayTLgys0RUnoOg2SWqKFubTVIctcEAmgk8aoSd+keMo3IpN+LZnciRP3xLYgwZ2B6qlvoHWUzvKtWU2m56HFAAvc1m5tmaw==
X-MS-Exchange-CrossTenant-Network-Message-Id: 80a89dff-3d4c-45d1-8a97-08dea61fc28e
X-MS-Exchange-CrossTenant-AuthSource: CYYPR11MB8430.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 29 Apr 2026 18:47:27.4828 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: Go4zn5ipEkVsGspTL/9rXa6WVGFPrDrHV9kG/lWR99Hcv0ATKOawDsRq3EV3MI175O9GzVVbEqAtzM8HKiv/Uw==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DM4PR11MB5994
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
X-Rspamd-Queue-Id: 464FB4994D6
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-0.31 / 15.00];
	ARC_REJECT(1.00)[signature check failed: fail, {[1] = sig:microsoft.com:reject}];
	DMARC_POLICY_ALLOW(-0.50)[intel.com,none];
	R_SPF_ALLOW(-0.20)[+ip4:131.252.210.177:c];
	R_DKIM_ALLOW(-0.20)[intel.com:s=Intel];
	MAILLIST(-0.20)[mailman];
	MIME_GOOD(-0.10)[text/plain];
	RWL_MAILSPIKE_GOOD(-0.10)[131.252.210.177:from];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[intel.com:email,intel.com:dkim,intel.com:mid,gabe.freedesktop.org:helo,gabe.freedesktop.org:rdns];
	FORGED_SENDER(0.00)[rodrigo.vivi@intel.com,intel-gfx-bounces@lists.freedesktop.org];
	MIME_TRACE(0.00)[0:+];
	FORGED_RECIPIENTS(0.00)[m:matthew.d.roper@intel.com,m:gustavo.sousa@intel.com,m:jani.nikula@linux.intel.com,s:lists@lfdr.de];
	FORWARDED(0.00)[intel-gfx@lists.freedesktop.org];
	FORGED_SENDER_MAILLIST(0.00)[];
	DKIM_TRACE(0.00)[intel.com:+];
	MISSING_XM_UA(0.00)[];
	TO_DN_SOME(0.00)[];
	FORGED_SENDER_FORWARDING(0.00)[];
	PREVIOUSLY_DELIVERED(0.00)[intel-gfx@lists.freedesktop.org];
	FROM_NEQ_ENVFROM(0.00)[rodrigo.vivi@intel.com,intel-gfx-bounces@lists.freedesktop.org];
	FROM_HAS_DN(0.00)[];
	RCPT_COUNT_THREE(0.00)[4];
	NEURAL_HAM(-0.00)[-0.999];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	MID_RHS_MATCH_FROM(0.00)[];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	TAGGED_RCPT(0.00)[intel-gfx];
	RCVD_COUNT_SEVEN(0.00)[9]

On Fri, Apr 10, 2026 at 10:33:55AM -0700, Matt Roper wrote:
> On Fri, Apr 10, 2026 at 11:39:10AM -0300, Gustavo Sousa wrote:
> > Matt Roper <matthew.d.roper@intel.com> writes:
> > 
> > > On Wed, Apr 08, 2026 at 10:16:42PM +0300, Jani Nikula wrote:
> > >> On Wed, 08 Apr 2026, Gustavo Sousa <gustavo.sousa@intel.com> wrote:
> > >> > We got confirmation from the hardware team that the bandwidth parameters
> > >> > deprogbwlimit and derating are platform-specific and not tied to the
> > >> > display IP.  As such, let's make sure that we use platform checks for
> > >> > those.
> > >> >
> > >> > The rest of the members of struct intel_sa_info are tied to the display
> > >> > IP and we will deal with them as a follow-up.
> > >> >
> > >> > Signed-off-by: Gustavo Sousa <gustavo.sousa@intel.com>
> > >> > ---
> > >> >  drivers/gpu/drm/i915/display/intel_bw.c | 174 ++++++++++++++++++++++++--------
> > >> >  1 file changed, 133 insertions(+), 41 deletions(-)
> > >> >
> > >> > diff --git a/drivers/gpu/drm/i915/display/intel_bw.c b/drivers/gpu/drm/i915/display/intel_bw.c
> > >> > index 474438fc1ebc..ed840b592eff 100644
> > >> > --- a/drivers/gpu/drm/i915/display/intel_bw.c
> > >> > +++ b/drivers/gpu/drm/i915/display/intel_bw.c
> > >> > @@ -375,77 +375,170 @@ static int icl_sagv_max_dclk(const struct intel_qgv_info *qi)
> > >> >  	return dclk;
> > >> >  }
> > >> >  
> > >> > +struct intel_platform_bw_params {
> > >> > +	u8 deprogbwlimit;
> > >> > +	u8 derating;
> > >> > +};
> > >> > +
> > >> > +static const struct intel_platform_bw_params icl_plat_bw_params = {
> > >> > +	.deprogbwlimit = 25,
> > >> > +	.derating = 10,
> > >> > +};
> > >> > +
> > >> > +static const struct intel_platform_bw_params tgl_plat_bw_params = {
> > >> > +	.deprogbwlimit = 34,
> > >> > +	.derating = 10,
> > >> > +};
> > >> > +
> > >> > +static const struct intel_platform_bw_params rkl_plat_bw_params = {
> > >> > +	.deprogbwlimit = 20,
> > >> > +	.derating = 10,
> > >> > +};
> > >> > +
> > >> > +static const struct intel_platform_bw_params adl_s_plat_bw_params = {
> > >> > +	.deprogbwlimit = 38,
> > >> > +	.derating = 10,
> > >> > +};
> > >> > +
> > >> > +static const struct intel_platform_bw_params adl_p_plat_bw_params = {
> > >> > +	.deprogbwlimit = 38,
> > >> > +	.derating = 20,
> > >> > +};
> > >> > +
> > >> > +static const struct intel_platform_bw_params bmg_plat_bw_params = {
> > >> > +	.deprogbwlimit = 53,
> > >> > +	.derating = 30,
> > >> > +};
> > >> > +
> > >> > +static const struct intel_platform_bw_params bmg_ecc_plat_bw_params = {
> > >> > +	.deprogbwlimit = 53,
> > >> > +	.derating = 45,
> > >> > +};
> > >> > +
> > >> > +static const struct intel_platform_bw_params ptl_plat_bw_params = {
> > >> > +	.deprogbwlimit = 65,
> > >> > +	.derating = 10,
> > >> > +};
> > >> > +
> > >> > +static const struct intel_platform_bw_params wcl_plat_bw_params = {
> > >> > +	.deprogbwlimit = 22,
> > >> > +	.derating = 10,
> > >> > +};
> > >> 
> > >> In the above, "plat" feels like tautology, since they're all prefixed by
> > >> platform acronyms.
> > >
> > > "soc" might be more consistent with what we (and various hardware docs)
> > > do to refer to "stuff that's outside the graphics/media/display IP and
> > > doesn't relate to GMD_ID version numbers."  Technically "soc" is a bit
> > > of a misnomer too since a lot of our recent platforms are multi-chip and
> > > not truly SoC's anymore, but the intent is still understandable.

Well, I don't believe this is true. 'SoC' is still the glue of the multi-chips.

> > 
> > Yeah. I intetionally prefered to use "platform" as a general term to
> > refer to either SoC or multi-chip package.  Do you prefer that we name
> > the struct type intel_soc_bw_params?

Well, both terms still exist. SoC is the glue. Platform is the overall, but
sometimes platform is more about the whole group of components working together:
CPU + PCH + FW + board level integration (BMC, etc).

I'm really bad with naming... perhaps intel_product_bw_params ?!

we could perhaps live with SoC because that is perhaps the cause of the bw
limitation, but not exactly a soc 'param'.

perhaps platform is also acceptable like we used in other places.

so, no strong feeling from my side.

> > 
> > What about intel_display_bw_params that is added later? Is that a good
> > name? I thought intel_ip_bw_params would be a bit vague, since we have
> > different types of IPs (display being one of them) in the platform.
> 
> Personally I think "soc_bw_params" vs "display_bw_params" seems like a
> similar distinction to what we have elsewhere in the driver (especially
> if we add a 1-sentence comment above the structure clarifying what the
> origin/source of those parameters is.  But I'll leave it up to Jani and
> the other display experts to make the call since they're the ones who
> work with this code the most.
> 
> > 
> > >
> > >> 
> > >> > +
> > >> > +static const struct intel_platform_bw_params *get_platform_bw_params(struct intel_display *display)
> > >> > +{
> > >> > +	const struct intel_platform_bw_params *ret;
> > >> > +
> > >> > +	if (display->platform.dgfx)
> > >> > +		goto dgfx;
> > >> > +
> > >> > +	ret = &icl_plat_bw_params;
> > >> > +	if (display->platform.icelake ||
> > >> > +	    display->platform.jasperlake ||
> > >> > +	    display->platform.elkhartlake)
> > >> > +		return ret;
> > >> 
> > >> What's the point of assigning and returning ret?
> > >> 
> > >> Why not just return &icl_plat_bw_params; directly?
> > >> 
> > >
> > > It looks like the intent might have been to let people keep copy/pasting
> > > the same pattern and have the fallback at the end always default back to
> > > whatever the "newest" one was if a proper match wasn't found.  But I
> > > agree that the handling here feels awkward and a simple if/else ladder
> > > would be preferable.
> > 
> > Yeah, allowing developers to easily add new platforms without too much
> > churn was the intention here.  I knew this style was unconventional, but
> > I thought the intent justified it (and IMO the code is still readable,
> > although admittedly a bit weird).
> > 
> > If that's not acceptable, would something along the lines of below be
> > accepted?
> > 
> >     if (display->platformOB.dgfx) {
> >         if (...)
> >              return platform_a_params;
> >         else if (...)
> >              return platform_b_params;
> >         else if (...)
> >              return platform_c_params;
> >         
> >         default_params = platform_c_params;
> >     } else {
> >         if (...)
> >              return platform_d_params;
> >         else if (...)
> >              return platform_e_params;
> >         else if (...)
> >              return platform_f_params;
> >         
> >         default_params = platform_f_params;
> >     }
> >     
> >     do_warning();
> >     return default_params;
> 
> Yeah, I think a traditional if/else ladder like this is best.  I don't
> think we even need to track a 'default_params' variable; we can just
> directly return some recent platform as a fallback at the end too.  If
> the fallback winds up not getting updated when we add new platforms, I
> don't think that really matters since there's no real guarantee that
> falling back to incorrect n-1 platform numbers is better than falling
> back to incorrect n-2 platform numbers.
> 
> If we've screwed up and forgotten to add the parameters for a new
> platform, then that's going to be something that's flagged almost
> immediately by CI and will be quickly fixed long before the platform
> ever leaves force_probe.
> 
> 
> Matt
> 
> > --
> > Gustavo Sousa
> > 
> > >
> > >
> > > Matt
> > >
> > >> > +
> > >> > +	ret = &tgl_plat_bw_params;
> > >> > +	if (display->platform.tigerlake)
> > >> > +		return ret;
> > >> > +
> > >> > +	ret = &rkl_plat_bw_params;
> > >> > +	if (display->platform.rocketlake)
> > >> > +		return ret;
> > >> > +
> > >> > +	ret = &adl_s_plat_bw_params;
> > >> > +	if (display->platform.alderlake_s)
> > >> > +		return ret;
> > >> > +
> > >> > +	ret = &adl_p_plat_bw_params;
> > >> > +	if (display->platform.alderlake_p)
> > >> > +		return ret;
> > >> > +
> > >> > +	ret = &adl_s_plat_bw_params;
> > >> > +	if (display->platform.meteorlake ||
> > >> > +	    display->platform.lunarlake)
> > >> > +		return ret;
> > >> > +
> > >> > +	ret = &ptl_plat_bw_params;
> > >> > +	if (display->platform.pantherlake ||
> > >> > +	    display->platform.novalake) {
> > >> > +		if (display->platform.pantherlake_wildcatlake)
> > >> > +			ret = &wcl_plat_bw_params;
> > >> > +
> > >> > +		return ret;
> > >> > +	}
> > >> > +
> > >> > +	goto missing;
> > >> > +
> > >> > +dgfx:
> > >> > +	ret = &tgl_plat_bw_params;
> > >> > +	if (display->platform.dg1)
> > >> > +		return ret;
> > >> > +
> > >> > +	ret = &bmg_plat_bw_params;
> > >> > +	if (display->platform.battlemage) {
> > >> > +		const struct dram_info *dram_info = intel_dram_info(display);
> > >> > +
> > >> > +		if (dram_info->type == INTEL_DRAM_GDDR_ECC)
> > >> > +			ret = &bmg_ecc_plat_bw_params;
> > >> > +
> > >> > +		return ret;
> > >> > +	}
> > >> > +
> > >> > +missing:
> > >> > +	/*
> > >> > +	 * Use parameters from the most recent platform,
> > >> > +	 * but raise a warning.
> > >> > +	 */
> > >> > +	drm_WARN(display->drm, 1,
> > >> > +		 "Platform-specific bandwidth parameters not found, using possibly incompatible default values\n");
> > >> > +
> > >> > +	return ret;
> > >> 
> > >> I don't understand at all why the function is written the way it
> > >> is. Seems like it should be a regular if-ladder like we have, with zero
> > >> gotos.
> > >> 
> > >> > +}
> > >> > +
> > >> >  struct intel_sa_info {
> > >> >  	u16 displayrtids;
> > >> > -	u8 deburst, deprogbwlimit, derating;
> > >> > +	u8 deburst;
> > >> >  };
> > >> >  
> > >> >  static const struct intel_sa_info icl_sa_info = {
> > >> >  	.deburst = 8,
> > >> > -	.deprogbwlimit = 25, /* GB/s */
> > >> >  	.displayrtids = 128,
> > >> > -	.derating = 10,
> > >> >  };
> > >> >  
> > >> >  static const struct intel_sa_info tgl_sa_info = {
> > >> >  	.deburst = 16,
> > >> > -	.deprogbwlimit = 34, /* GB/s */
> > >> >  	.displayrtids = 256,
> > >> > -	.derating = 10,
> > >> >  };
> > >> >  
> > >> >  static const struct intel_sa_info rkl_sa_info = {
> > >> >  	.deburst = 8,
> > >> > -	.deprogbwlimit = 20, /* GB/s */
> > >> >  	.displayrtids = 128,
> > >> > -	.derating = 10,
> > >> >  };
> > >> >  
> > >> >  static const struct intel_sa_info adls_sa_info = {
> > >> >  	.deburst = 16,
> > >> > -	.deprogbwlimit = 38, /* GB/s */
> > >> >  	.displayrtids = 256,
> > >> > -	.derating = 10,
> > >> >  };
> > >> >  
> > >> >  static const struct intel_sa_info adlp_sa_info = {
> > >> >  	.deburst = 16,
> > >> > -	.deprogbwlimit = 38, /* GB/s */
> > >> >  	.displayrtids = 256,
> > >> > -	.derating = 20,
> > >> >  };
> > >> >  
> > >> >  static const struct intel_sa_info mtl_sa_info = {
> > >> >  	.deburst = 32,
> > >> > -	.deprogbwlimit = 38, /* GB/s */
> > >> >  	.displayrtids = 256,
> > >> > -	.derating = 10,
> > >> > -};
> > >> > -
> > >> > -static const struct intel_sa_info xe2_hpd_sa_info = {
> > >> > -	.derating = 30,
> > >> > -	.deprogbwlimit = 53,
> > >> > -	/* Other values not used by simplified algorithm */
> > >> > -};
> > >> > -
> > >> > -static const struct intel_sa_info xe2_hpd_ecc_sa_info = {
> > >> > -	.derating = 45,
> > >> > -	.deprogbwlimit = 53,
> > >> > -	/* Other values not used by simplified algorithm */
> > >> >  };
> > >> >  
> > >> >  static const struct intel_sa_info xe3lpd_sa_info = {
> > >> >  	.deburst = 32,
> > >> > -	.deprogbwlimit = 65, /* GB/s */
> > >> >  	.displayrtids = 256,
> > >> > -	.derating = 10,
> > >> >  };
> > >> >  
> > >> >  static const struct intel_sa_info xe3lpd_3002_sa_info = {
> > >> >  	.deburst = 32,
> > >> > -	.deprogbwlimit = 22, /* GB/s */
> > >> >  	.displayrtids = 256,
> > >> > -	.derating = 10,
> > >> >  };
> > >> >  
> > >> >  static int icl_get_bw_info(struct intel_display *display,
> > >> > @@ -453,6 +546,7 @@ static int icl_get_bw_info(struct intel_display *display,
> > >> >  			   const struct intel_sa_info *sa)
> > >> >  {
> > >> >  	struct intel_qgv_info qi = {};
> > >> > +	const struct intel_platform_bw_params *plat_bw_params = get_platform_bw_params(display);
> > >> 
> > >> Perhaps it would be better to pass this in instead of every function
> > >> having the call.
> > >> 
> > >> Nitpick, "plat" is not an abbreviation I'm fond of.
> > >> 
> > >> >  	bool is_y_tile = true; /* assume y tile may be used */
> > >> >  	int num_channels = max_t(u8, 1, dram_info->num_channels);
> > >> >  	int ipqdepth, ipqdepthpch = 16;
> > >> > @@ -469,7 +563,7 @@ static int icl_get_bw_info(struct intel_display *display,
> > >> >  	}
> > >> >  
> > >> >  	dclk_max = icl_sagv_max_dclk(&qi);
> > >> > -	maxdebw = min(sa->deprogbwlimit * 1000, dclk_max * 16 * 6 / 10);
> > >> > +	maxdebw = min(plat_bw_params->deprogbwlimit * 1000, dclk_max * 16 * 6 / 10);
> > >> >  	ipqdepth = min(ipqdepthpch, sa->displayrtids / num_channels);
> > >> >  	qi.deinterleave = DIV_ROUND_UP(num_channels, is_y_tile ? 4 : 2);
> > >> >  
> > >> > @@ -499,7 +593,7 @@ static int icl_get_bw_info(struct intel_display *display,
> > >> >  			bw = DIV_ROUND_UP(sp->dclk * clpchgroup * 32 * num_channels, ct);
> > >> >  
> > >> >  			bi->deratedbw[j] = min(maxdebw,
> > >> > -					       bw * (100 - sa->derating) / 100);
> > >> > +					       bw * (100 - plat_bw_params->derating) / 100);
> > >> >  
> > >> >  			drm_dbg_kms(display->drm,
> > >> >  				    "BW%d / QGV %d: num_planes=%d deratedbw=%u\n",
> > >> > @@ -524,6 +618,7 @@ static int tgl_get_bw_info(struct intel_display *display,
> > >> >  			   const struct intel_sa_info *sa)
> > >> >  {
> > >> >  	struct intel_qgv_info qi = {};
> > >> > +	const struct intel_platform_bw_params *plat_bw_params = get_platform_bw_params(display);
> > >> >  	bool is_y_tile = true; /* assume y tile may be used */
> > >> >  	int num_channels = max_t(u8, 1, dram_info->num_channels);
> > >> >  	int ipqdepth, ipqdepthpch = 16;
> > >> > @@ -557,7 +652,7 @@ static int tgl_get_bw_info(struct intel_display *display,
> > >> >  	dclk_max = icl_sagv_max_dclk(&qi);
> > >> >  
> > >> >  	peakbw = num_channels * DIV_ROUND_UP(qi.channel_width, 8) * dclk_max;
> > >> > -	maxdebw = min(sa->deprogbwlimit * 1000, peakbw * DEPROGBWPCLIMIT / 100);
> > >> > +	maxdebw = min(plat_bw_params->deprogbwlimit * 1000, peakbw * DEPROGBWPCLIMIT / 100);
> > >> >  
> > >> >  	ipqdepth = min(ipqdepthpch, sa->displayrtids / num_channels);
> > >> >  	/*
> > >> > @@ -602,7 +697,7 @@ static int tgl_get_bw_info(struct intel_display *display,
> > >> >  			bw = DIV_ROUND_UP(sp->dclk * clpchgroup * 32 * num_channels, ct);
> > >> >  
> > >> >  			bi->deratedbw[j] = min(maxdebw,
> > >> > -					       bw * (100 - sa->derating) / 100);
> > >> > +					       bw * (100 - plat_bw_params->derating) / 100);
> > >> >  			bi->peakbw[j] = DIV_ROUND_CLOSEST(sp->dclk *
> > >> >  							  num_channels *
> > >> >  							  qi.channel_width, 8);
> > >> > @@ -663,10 +758,10 @@ static void dg2_get_bw_info(struct intel_display *display)
> > >> >  }
> > >> >  
> > >> >  static int xe2_hpd_get_bw_info(struct intel_display *display,
> > >> > -			       const struct dram_info *dram_info,
> > >> > -			       const struct intel_sa_info *sa)
> > >> > +			       const struct dram_info *dram_info)
> > >> >  {
> > >> >  	struct intel_qgv_info qi = {};
> > >> > +	const struct intel_platform_bw_params *plat_bw_params = get_platform_bw_params(display);
> > >> >  	int num_channels = dram_info->num_channels;
> > >> >  	int peakbw, maxdebw;
> > >> >  	int ret, i;
> > >> > @@ -679,14 +774,14 @@ static int xe2_hpd_get_bw_info(struct intel_display *display,
> > >> >  	}
> > >> >  
> > >> >  	peakbw = num_channels * qi.channel_width / 8 * icl_sagv_max_dclk(&qi);
> > >> > -	maxdebw = min(sa->deprogbwlimit * 1000, peakbw * DEPROGBWPCLIMIT / 10);
> > >> > +	maxdebw = min(plat_bw_params->deprogbwlimit * 1000, peakbw * DEPROGBWPCLIMIT / 10);
> > >> >  
> > >> >  	for (i = 0; i < qi.num_points; i++) {
> > >> >  		const struct intel_qgv_point *point = &qi.points[i];
> > >> >  		int bw = num_channels * (qi.channel_width / 8) * point->dclk;
> > >> >  
> > >> >  		display->bw.max[0].deratedbw[i] =
> > >> > -			min(maxdebw, (100 - sa->derating) * bw / 100);
> > >> > +			min(maxdebw, (100 - plat_bw_params->derating) * bw / 100);
> > >> >  		display->bw.max[0].peakbw[i] = bw;
> > >> >  
> > >> >  		drm_dbg_kms(display->drm, "QGV %d: deratedbw=%u peakbw: %u\n",
> > >> > @@ -814,10 +909,7 @@ void intel_bw_init_hw(struct intel_display *display)
> > >> >  		else
> > >> >  			tgl_get_bw_info(display, dram_info, &xe3lpd_sa_info);
> > >> >  	} else if (DISPLAY_VERx100(display) >= 1401 && display->platform.dgfx) {
> > >> > -		if (dram_info->type == INTEL_DRAM_GDDR_ECC)
> > >> > -			xe2_hpd_get_bw_info(display, dram_info, &xe2_hpd_ecc_sa_info);
> > >> > -		else
> > >> > -			xe2_hpd_get_bw_info(display, dram_info, &xe2_hpd_sa_info);
> > >> > +		xe2_hpd_get_bw_info(display, dram_info);
> > >> >  	} else if (DISPLAY_VER(display) >= 14) {
> > >> >  		tgl_get_bw_info(display, dram_info, &mtl_sa_info);
> > >> >  	} else if (display->platform.dg2) {
> > >> 
> > >> -- 
> > >> Jani Nikula, Intel
> > >
> > > -- 
> > > Matt Roper
> > > Graphics Software Engineer
> > > Linux GPU Platform Enablement
> > > Intel Corporation
> 
> -- 
> Matt Roper
> Graphics Software Engineer
> Linux GPU Platform Enablement
> Intel Corporation
