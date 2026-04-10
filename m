Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id kKdMMIZo2Wn5pQgAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Fri, 10 Apr 2026 23:15:50 +0200
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 078B93DCCA4
	for <lists+intel-gfx@lfdr.de>; Fri, 10 Apr 2026 23:15:49 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 1660810E1EB;
	Fri, 10 Apr 2026 21:15:48 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="iEgbaeiK";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.17])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 1F28610E1EB
 for <intel-gfx@lists.freedesktop.org>; Fri, 10 Apr 2026 21:15:46 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1775855746; x=1807391746;
 h=from:to:cc:subject:in-reply-to:references:date:
 message-id:mime-version;
 bh=c55J8Ml3Hld4rbPv1Mf/ieqe7QO4/7T5Eowem6GrkjM=;
 b=iEgbaeiKsE1S4+Bbjb8bmECaJtofW0a3iaDpvC3M4gnyw4SKY+sAOZd3
 +0k2QKYzJf3N3Jvi2v+7isPhS1tKE+Lwen/uK//aCDRTG0EMXdpAhnLDl
 P9r5q3om9gE2PL5IDcVL+QQi9He5+o7KhuHFzBGbhrmtYUILj9gjKXMga
 3dazbGNPz5VAsT89Iu+D3qdDaD8p8m7yTi9VIHGZmMiam4Sa/G51WL+gj
 SPMG4USmkKsqo9EVh2pf8oHcsJ2/z0iG65EyBVLZ47gt/6K6isNDOOjbA
 0Tj2ecX8tC4vqyLR++SEhLiElNr23IkHnmWqCNraM0+fVouBsuQ2odA+M w==;
X-CSE-ConnectionGUID: 1cEjwrHXR+2WGNDxKOGZug==
X-CSE-MsgGUID: YECRDJp0StWFnmISTV0VTw==
X-IronPort-AV: E=McAfee;i="6800,10657,11755"; a="76772152"
X-IronPort-AV: E=Sophos;i="6.23,172,1770624000"; d="scan'208";a="76772152"
Received: from fmviesa005.fm.intel.com ([10.60.135.145])
 by fmvoesa111.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 10 Apr 2026 14:15:46 -0700
X-CSE-ConnectionGUID: SDHiSBvIQEeaH3g7woMkRw==
X-CSE-MsgGUID: pHyAvOsRSiKYZjwpZCRomQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.23,172,1770624000"; d="scan'208";a="234114825"
Received: from orsmsx902.amr.corp.intel.com ([10.22.229.24])
 by fmviesa005.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 10 Apr 2026 14:15:45 -0700
Received: from ORSMSX901.amr.corp.intel.com (10.22.229.23) by
 ORSMSX902.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Fri, 10 Apr 2026 14:15:45 -0700
Received: from ORSEDG901.ED.cps.intel.com (10.7.248.11) by
 ORSMSX901.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37 via Frontend Transport; Fri, 10 Apr 2026 14:15:45 -0700
Received: from BL2PR02CU003.outbound.protection.outlook.com (52.101.52.47) by
 edgegateway.intel.com (134.134.137.111) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Fri, 10 Apr 2026 14:15:44 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=jkgG95eVsN30TPUUcRRfmz29iHlniEeowoX//j+D6nMInxBmEEbfewTgpkSHFSPiEN7zzL4WFyW6sS2yKLpT/PU9c/qfnEspFhEgikGMgU8jfXPRCvQa6H9luWY+MQrU70xONEensDK3/zl4Y02+Hs0I4iDXETDPlzQ63EJxw9vaX0rcTaAC0EVlh3PFjzH9f3+Y8t6QzRei95nWhWz6JjlWEvLRB8XGxqS7+aQXcshWiUl0LB6Wr6ufhrtPZ6ebVvAeGmBOPIokFckbSkbmIj98IZfjGu4iwMJNna3YO/dOa1c+g3ALkivQF+kfIGIIpCfUAHZGfwon0jZ7CuSLOQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=UoSUkTMXbt3Uv6muv8zaf9uPnazYHxwiSeCdV9+311c=;
 b=RSg8Y6kgWN9fCLctxXwkQArBN4K5/HflhM8OVw1+LbfeHB2K5EMCuFC+2D9Wx7cO0w34ZbGHLgi9n43G3EEURHHINMN+ZiYBD5OFoFsOHh2uhRmJHnpWwc/qnV30XnVHNVWaSrWwTRZLCN49efadNFWl9wB/0NWAtgV7Sgnp3gqQeq54UfYQx44SHA62NDXc+U+RsgttDXwwPeFnU4cuQdgDH6XeDohmA5y5GeRYnD082/yPq36GaNWYEEq6vBzQSb9ZQtr8yHEIpbBvaBtUepVjcJWH4ChmyZw10+TA+8e8rcvjaaRFMAi61oWTjG/ZbiARZPvwtvgth2dwcvGTUg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from PH8PR11MB8287.namprd11.prod.outlook.com (2603:10b6:510:1c7::14)
 by SJ2PR11MB8472.namprd11.prod.outlook.com (2603:10b6:a03:574::15)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9791.34; Fri, 10 Apr
 2026 21:15:39 +0000
Received: from PH8PR11MB8287.namprd11.prod.outlook.com
 ([fe80::a0e5:e99c:ee7b:620a]) by PH8PR11MB8287.namprd11.prod.outlook.com
 ([fe80::a0e5:e99c:ee7b:620a%3]) with mapi id 15.20.9769.041; Fri, 10 Apr 2026
 21:15:39 +0000
From: Gustavo Sousa <gustavo.sousa@intel.com>
To: Matt Roper <matthew.d.roper@intel.com>
CC: Jani Nikula <jani.nikula@linux.intel.com>,
 <intel-gfx@lists.freedesktop.org>
Subject: Re: [PATCH 1/4] drm/i915/bw: Extract platform-specific parameters
In-Reply-To: <20260410173355.GE6301@mdroper-desk1.amr.corp.intel.com>
References: <20260408-separate-platform-from-diplay-ip-specific-bw-params-v1-0-23c53afa7db0@intel.com>
 <20260408-separate-platform-from-diplay-ip-specific-bw-params-v1-1-23c53afa7db0@intel.com>
 <5a2fefe3f3d7ee92d3cc1bca1ffe88370d54c822@intel.com>
 <20260409231256.GB6301@mdroper-desk1.amr.corp.intel.com>
 <87ik9yx4kx.fsf@intel.com>
 <20260410173355.GE6301@mdroper-desk1.amr.corp.intel.com>
Date: Fri, 10 Apr 2026 18:15:34 -0300
Message-ID: <87cy06wm89.fsf@intel.com>
Content-Type: text/plain
X-ClientProxiedBy: BYAPR05CA0054.namprd05.prod.outlook.com
 (2603:10b6:a03:74::31) To PH8PR11MB8287.namprd11.prod.outlook.com
 (2603:10b6:510:1c7::14)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: PH8PR11MB8287:EE_|SJ2PR11MB8472:EE_
X-MS-Office365-Filtering-Correlation-Id: 0d5db11c-f6c6-4940-4da9-08de97465092
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
 ARA:13230040|1800799024|376014|366016|18002099003|56012099003|22082099003; 
X-Microsoft-Antispam-Message-Info: 0yFODZd+8LN9+x5SOsjxZdVSF0aFqrbOEChaqbol7CzUTW22Val5EOZepSu+nLhFU8SybobDYRg9TS4BOAwWmdsQQzB9AG+wuvpyb3rBXHbGs/HzeN3ZKqyoGF31t9z3lpW9sMyrSBE5oQQazghCQKPjT7gP1NBrCCCfX5LnKoAfYF9szg/2bYeK+0+mfQ3YeN+M/hZXLa9MzzPEr/b37cvAgZ2nDsdyuEOZHA9KxLqkzefBfTi6Mei0Oi8FopNvJdMSszrQCaI3SqcGz+wDn1MLnmV1aWzwdOMMa7oFsL6FxqOFV5X1F213BdNQjsKZwMgG0EHtH1bLo9511P0AcDgmfIGZTpxrZS/crGp7y/1fI4XK8oJz/cQsQbinfWdOGca++esmJGUrhWbgi3JdVySqnIAcEJQ+e0zu7DFqaSvNJvL+BQK2DSpLW4nK9fC7GAYKZB2CI55EEQMv4GNvxiNVkJSyEyLKOgIyWLBHUYVY0rgLtV7k/zISwPAeuBvfmy4uBcoPYzrW6l6PhI5lk84DWkrOOjrMmNgg4C8Xq/ZBcwtLDYY2ib3QgMGQS94mnWgrnuyzZYBpmY3Jw33hUrVZoOFGSx0Dt3hGpI3tOlKPg01c69Cj+DEVWwGSbj6zIcbuZhRxaJXy7kFH4xFsPG/LX3wPaPGirt+RnPpUUYo768E6wMBCM3sFeQQpNuWDQc+K8FJoFV9yZGOvNzNzFpShcRH1SCZ3HVg8auNWQPU=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:PH8PR11MB8287.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(1800799024)(376014)(366016)(18002099003)(56012099003)(22082099003);
 DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?+ZTDsFuqmLY/NZ9XLZ3V6BZ3XHcy6eFT3tpVaImCHBpSNSIzK5AqpRlsyHtY?=
 =?us-ascii?Q?e65Y0kqdBUJ6sT/tf0l/u2fqfWfh/SZatogBXwVPLXApy/5xeC6n8URkce35?=
 =?us-ascii?Q?1c6zMQzoIsvg7XzZzNGH/Di07nUO7BhI/1kg1lzw/k4ToYDYlbdXc/iwb+IB?=
 =?us-ascii?Q?InVBfIaCPF2UcuJm5mrOWI3UY0U0cav9nmGozF8glJv/OYjtk/6tWLzNiKgy?=
 =?us-ascii?Q?P8Lt0i5MisLkHU0h5ys/BUcmMtA3oGDW/jVR87ny7Ka0tWBg/SHvqqNIYGVx?=
 =?us-ascii?Q?zyCdv6fWUME2mctJfoF7mZnSa/2MKJI3gX7cIJSTPCLg5y3PunW5bUYF8lh6?=
 =?us-ascii?Q?C1V+yp4XNMK0FvFLPIrzpCwBU9Wa/CBdtQ54xBo2gjLAONfsWItttmb7ruAC?=
 =?us-ascii?Q?AfmBbv81r+nv5jOuodtTcvz5Jw2LvZGv8oecLaMzCwLenq/IGslk2IPLyRRt?=
 =?us-ascii?Q?V9ND3PYSA78iOcUQk+t8f2dL34Z7cS3QAhwTUalwwE3Fhf73kof/BpSHe7SW?=
 =?us-ascii?Q?jdIDh1kOW3vEfBYPQ9NInSSOOvdVxLsXCSOD2X7KV/y02CLzboNruShyiKqJ?=
 =?us-ascii?Q?/m/wP5VDYeIH7aGwCPfItKC7/OrtC5J0blf4kJAoc+aTP6T+dtMKw4V/Uf96?=
 =?us-ascii?Q?Qkee3hMEISSybh/MPK0o+oBVbE2thzoZadOOuvAq6RvQVdwrcsKeMveWT11A?=
 =?us-ascii?Q?R1Xq0aTwnWVVyiXmtiQhKaJWZqd9vbZUMw4bj0oy8E6vttybtDM7NH+/1Lcw?=
 =?us-ascii?Q?UiDPPqykO6JlYa87mlZwpDE9Po0cCF3utVP26Vm+XhOeAAVg2iKFY7z4dXy3?=
 =?us-ascii?Q?+T3Ss8gy3geq6zy/8ndHcNi2d3bMWxM5XtnSSFxAbFxVSMSg/jCFfjZwnBWv?=
 =?us-ascii?Q?YhoOc3Beivq9adm1cZGs0NG7wPSGucmQiDsR0cWWZ9M/0WOLZhPRG0pusipF?=
 =?us-ascii?Q?Amn89xQB0zLQF619fxevP1u4D5ouDvkutvMz2V6ZX5GVqiVr28EDO9SDUmDp?=
 =?us-ascii?Q?5vZo0DbmqgIwSsbev+5IMPrurim8NgG8++xS9GulBxCrn3j1gjB5MnrwudoV?=
 =?us-ascii?Q?UQbWsWD1ExR2szOuiXbIWNfcpvirh7178bDpoJb4mOIVPQ9UeqKhsq1cEvd3?=
 =?us-ascii?Q?mgKl3j9U1I0kuP6/ZJBjU3pmq2/H8kZbqE2uqQCvM2jYKHYHtJCXFFjmK4gk?=
 =?us-ascii?Q?/CAkC4ih6tjk2JqRzT2GofsFy2xn8xurRG8noAwvWQ9octp3YGdJ2W+hSNXm?=
 =?us-ascii?Q?Uk4kFY13Fvj+e3BBIYsjku3Jy+PuM73xmDmuka0DAN7yTXoSQWoiI9n7U/d+?=
 =?us-ascii?Q?Ch+fSuvb+w3uh+Lf8Iaewg9fHCOP6Q5qmnwqgU4d+uez3AlsvRxHJl7e3IRl?=
 =?us-ascii?Q?feQpmpAqrMNQ3I7lKVrLFGXmZJ521PTJk4aiquIwbmyBMJ+AFuKlukPkFjmU?=
 =?us-ascii?Q?kQBjqR1DWBTji4TRMMkpJrK7aMyC8M8SHxgUg/d0A6F8M4tDHZ/NIR2zJIVo?=
 =?us-ascii?Q?6LiMjcrUGYIROXOIYg7L1ounllKDK0mgOicpVH+hdxKZHSSj9g10n+aYuajy?=
 =?us-ascii?Q?zzy/eunV7k0QUE13AWl6qxWg2c0kRXGEHrUX5iMQYAcvO4pjRlspSSjjl+u1?=
 =?us-ascii?Q?fZqMxLsNjfPlt5TNNMwEyNXockoH4T0p231NBCVP1gLhMrqWG5xDDvMaMrBD?=
 =?us-ascii?Q?EDPE2RbpJYcV3+tWrSLu5lb+tT1HMhDMxSiWBqHGT1eheU8swFyEdJ5DFm7c?=
 =?us-ascii?Q?icYELkMzKQ=3D=3D?=
X-Exchange-RoutingPolicyChecked: jO1ANifilqJUesp+aECuKcVB4WWS2sn0S5NZJB7EHv5nugUTznoFTGP83rD1z0hgPtb724BkFYc3Cs8PZZBFKZ64mqzYr1cNIKKStpy6ZENcaSN1aXioq1yFhISFBInkOjquWhIIus6lnug3rxp+hd4TItXRAalfBZaH6VvXcFnWhfBOwYRMh7zml4R7XprrUUrPm7y8h+IUy+ATTc2MDcrPMxFnRSFI0efG7YW4QHpu1wIiywU+BSsnOIRi0ogkd0Ofup+yc3PiOiMAyA+fMU/3jdSwxrJhUsWBD/A+gfZlRih69W6V+/4GFqGZcd7aAjgc6L+10UWk9bOQCWPrcQ==
X-MS-Exchange-CrossTenant-Network-Message-Id: 0d5db11c-f6c6-4940-4da9-08de97465092
X-MS-Exchange-CrossTenant-AuthSource: PH8PR11MB8287.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 10 Apr 2026 21:15:39.0619 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: nRfxeAzITToaw9U0mXWg7Ku+NiqBaeJs3OzT7iEoCx1hfkaXo9Kb7gO89HLrV7IFWXu2D8ApU5b9N+OkyUlXaA==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SJ2PR11MB8472
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
X-Spamd-Result: default: False [0.19 / 15.00];
	ARC_REJECT(1.00)[signature check failed: fail, {[1] = sig:microsoft.com:reject}];
	R_MISSING_CHARSET(0.50)[];
	DMARC_POLICY_ALLOW(-0.50)[intel.com,none];
	R_SPF_ALLOW(-0.20)[+ip4:131.252.210.177:c];
	R_DKIM_ALLOW(-0.20)[intel.com:s=Intel];
	MAILLIST(-0.20)[mailman];
	RWL_MAILSPIKE_GOOD(-0.10)[131.252.210.177:from];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	MIME_TRACE(0.00)[0:+];
	FORWARDED(0.00)[intel-gfx@lists.freedesktop.org];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	FORGED_RECIPIENTS(0.00)[m:matthew.d.roper@intel.com,m:jani.nikula@linux.intel.com,s:lists@lfdr.de];
	FORGED_SENDER_MAILLIST(0.00)[];
	FORGED_SENDER(0.00)[gustavo.sousa@intel.com,intel-gfx-bounces@lists.freedesktop.org];
	DKIM_TRACE(0.00)[intel.com:+];
	MISSING_XM_UA(0.00)[];
	TO_DN_SOME(0.00)[];
	FORGED_SENDER_FORWARDING(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[intel.com:dkim,intel.com:email,intel.com:mid,gabe.freedesktop.org:helo,gabe.freedesktop.org:rdns];
	FROM_NEQ_ENVFROM(0.00)[gustavo.sousa@intel.com,intel-gfx-bounces@lists.freedesktop.org];
	FROM_HAS_DN(0.00)[];
	RCPT_COUNT_THREE(0.00)[3];
	PREVIOUSLY_DELIVERED(0.00)[intel-gfx@lists.freedesktop.org];
	MID_RHS_MATCH_FROM(0.00)[];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	NEURAL_HAM(-0.00)[-1.000];
	TAGGED_RCPT(0.00)[intel-gfx];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	RCVD_COUNT_SEVEN(0.00)[9]
X-Rspamd-Queue-Id: 078B93DCCA4
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

Matt Roper <matthew.d.roper@intel.com> writes:

> On Fri, Apr 10, 2026 at 11:39:10AM -0300, Gustavo Sousa wrote:
>> Matt Roper <matthew.d.roper@intel.com> writes:
>> 
>> > On Wed, Apr 08, 2026 at 10:16:42PM +0300, Jani Nikula wrote:
>> >> On Wed, 08 Apr 2026, Gustavo Sousa <gustavo.sousa@intel.com> wrote:
>> >> > We got confirmation from the hardware team that the bandwidth parameters
>> >> > deprogbwlimit and derating are platform-specific and not tied to the
>> >> > display IP.  As such, let's make sure that we use platform checks for
>> >> > those.
>> >> >
>> >> > The rest of the members of struct intel_sa_info are tied to the display
>> >> > IP and we will deal with them as a follow-up.
>> >> >
>> >> > Signed-off-by: Gustavo Sousa <gustavo.sousa@intel.com>
>> >> > ---
>> >> >  drivers/gpu/drm/i915/display/intel_bw.c | 174 ++++++++++++++++++++++++--------
>> >> >  1 file changed, 133 insertions(+), 41 deletions(-)
>> >> >
>> >> > diff --git a/drivers/gpu/drm/i915/display/intel_bw.c b/drivers/gpu/drm/i915/display/intel_bw.c
>> >> > index 474438fc1ebc..ed840b592eff 100644
>> >> > --- a/drivers/gpu/drm/i915/display/intel_bw.c
>> >> > +++ b/drivers/gpu/drm/i915/display/intel_bw.c
>> >> > @@ -375,77 +375,170 @@ static int icl_sagv_max_dclk(const struct intel_qgv_info *qi)
>> >> >  	return dclk;
>> >> >  }
>> >> >  
>> >> > +struct intel_platform_bw_params {
>> >> > +	u8 deprogbwlimit;
>> >> > +	u8 derating;
>> >> > +};
>> >> > +
>> >> > +static const struct intel_platform_bw_params icl_plat_bw_params = {
>> >> > +	.deprogbwlimit = 25,
>> >> > +	.derating = 10,
>> >> > +};
>> >> > +
>> >> > +static const struct intel_platform_bw_params tgl_plat_bw_params = {
>> >> > +	.deprogbwlimit = 34,
>> >> > +	.derating = 10,
>> >> > +};
>> >> > +
>> >> > +static const struct intel_platform_bw_params rkl_plat_bw_params = {
>> >> > +	.deprogbwlimit = 20,
>> >> > +	.derating = 10,
>> >> > +};
>> >> > +
>> >> > +static const struct intel_platform_bw_params adl_s_plat_bw_params = {
>> >> > +	.deprogbwlimit = 38,
>> >> > +	.derating = 10,
>> >> > +};
>> >> > +
>> >> > +static const struct intel_platform_bw_params adl_p_plat_bw_params = {
>> >> > +	.deprogbwlimit = 38,
>> >> > +	.derating = 20,
>> >> > +};
>> >> > +
>> >> > +static const struct intel_platform_bw_params bmg_plat_bw_params = {
>> >> > +	.deprogbwlimit = 53,
>> >> > +	.derating = 30,
>> >> > +};
>> >> > +
>> >> > +static const struct intel_platform_bw_params bmg_ecc_plat_bw_params = {
>> >> > +	.deprogbwlimit = 53,
>> >> > +	.derating = 45,
>> >> > +};
>> >> > +
>> >> > +static const struct intel_platform_bw_params ptl_plat_bw_params = {
>> >> > +	.deprogbwlimit = 65,
>> >> > +	.derating = 10,
>> >> > +};
>> >> > +
>> >> > +static const struct intel_platform_bw_params wcl_plat_bw_params = {
>> >> > +	.deprogbwlimit = 22,
>> >> > +	.derating = 10,
>> >> > +};
>> >> 
>> >> In the above, "plat" feels like tautology, since they're all prefixed by
>> >> platform acronyms.
>> >
>> > "soc" might be more consistent with what we (and various hardware docs)
>> > do to refer to "stuff that's outside the graphics/media/display IP and
>> > doesn't relate to GMD_ID version numbers."  Technically "soc" is a bit
>> > of a misnomer too since a lot of our recent platforms are multi-chip and
>> > not truly SoC's anymore, but the intent is still understandable.
>> 
>> Yeah. I intetionally prefered to use "platform" as a general term to
>> refer to either SoC or multi-chip package.  Do you prefer that we name
>> the struct type intel_soc_bw_params?
>> 
>> What about intel_display_bw_params that is added later? Is that a good
>> name? I thought intel_ip_bw_params would be a bit vague, since we have
>> different types of IPs (display being one of them) in the platform.
>
> Personally I think "soc_bw_params" vs "display_bw_params" seems like a
> similar distinction to what we have elsewhere in the driver (especially
> if we add a 1-sentence comment above the structure clarifying what the
> origin/source of those parameters is.  But I'll leave it up to Jani and
> the other display experts to make the call since they're the ones who
> work with this code the most.
>
>> 
>> >
>> >> 
>> >> > +
>> >> > +static const struct intel_platform_bw_params *get_platform_bw_params(struct intel_display *display)
>> >> > +{
>> >> > +	const struct intel_platform_bw_params *ret;
>> >> > +
>> >> > +	if (display->platform.dgfx)
>> >> > +		goto dgfx;
>> >> > +
>> >> > +	ret = &icl_plat_bw_params;
>> >> > +	if (display->platform.icelake ||
>> >> > +	    display->platform.jasperlake ||
>> >> > +	    display->platform.elkhartlake)
>> >> > +		return ret;
>> >> 
>> >> What's the point of assigning and returning ret?
>> >> 
>> >> Why not just return &icl_plat_bw_params; directly?
>> >> 
>> >
>> > It looks like the intent might have been to let people keep copy/pasting
>> > the same pattern and have the fallback at the end always default back to
>> > whatever the "newest" one was if a proper match wasn't found.  But I
>> > agree that the handling here feels awkward and a simple if/else ladder
>> > would be preferable.
>> 
>> Yeah, allowing developers to easily add new platforms without too much
>> churn was the intention here.  I knew this style was unconventional, but
>> I thought the intent justified it (and IMO the code is still readable,
>> although admittedly a bit weird).
>> 
>> If that's not acceptable, would something along the lines of below be
>> accepted?
>> 
>>     if (display->platformOB.dgfx) {
>>         if (...)
>>              return platform_a_params;
>>         else if (...)
>>              return platform_b_params;
>>         else if (...)
>>              return platform_c_params;
>>         
>>         default_params = platform_c_params;
>>     } else {
>>         if (...)
>>              return platform_d_params;
>>         else if (...)
>>              return platform_e_params;
>>         else if (...)
>>              return platform_f_params;
>>         
>>         default_params = platform_f_params;
>>     }
>>     
>>     do_warning();
>>     return default_params;
>
> Yeah, I think a traditional if/else ladder like this is best.  I don't
> think we even need to track a 'default_params' variable; we can just
> directly return some recent platform as a fallback at the end too.  If
> the fallback winds up not getting updated when we add new platforms, I
> don't think that really matters since there's no real guarantee that
> falling back to incorrect n-1 platform numbers is better than falling
> back to incorrect n-2 platform numbers.

Well, I would like to make a distinction between client and discrete
(e.g. there is a significant difference between BMG's and
PTL's derating param).  That would be the reason for the default_params
variable, which would allow a single place to raise the warning.

>
> If we've screwed up and forgotten to add the parameters for a new
> platform, then that's going to be something that's flagged almost
> immediately by CI and will be quickly fixed long before the platform
> ever leaves force_probe.

Yeah, true.  Another possibility is to just return NULL and purposefully
cause anull-pointer dereference; or even have the default being all
zeros, so that we don't worry about updating the default from time to
time.

--
Gustavo Sousa

>
>
> Matt
>
>> --
>> Gustavo Sousa
>> 
>> >
>> >
>> > Matt
>> >
>> >> > +
>> >> > +	ret = &tgl_plat_bw_params;
>> >> > +	if (display->platform.tigerlake)
>> >> > +		return ret;
>> >> > +
>> >> > +	ret = &rkl_plat_bw_params;
>> >> > +	if (display->platform.rocketlake)
>> >> > +		return ret;
>> >> > +
>> >> > +	ret = &adl_s_plat_bw_params;
>> >> > +	if (display->platform.alderlake_s)
>> >> > +		return ret;
>> >> > +
>> >> > +	ret = &adl_p_plat_bw_params;
>> >> > +	if (display->platform.alderlake_p)
>> >> > +		return ret;
>> >> > +
>> >> > +	ret = &adl_s_plat_bw_params;
>> >> > +	if (display->platform.meteorlake ||
>> >> > +	    display->platform.lunarlake)
>> >> > +		return ret;
>> >> > +
>> >> > +	ret = &ptl_plat_bw_params;
>> >> > +	if (display->platform.pantherlake ||
>> >> > +	    display->platform.novalake) {
>> >> > +		if (display->platform.pantherlake_wildcatlake)
>> >> > +			ret = &wcl_plat_bw_params;
>> >> > +
>> >> > +		return ret;
>> >> > +	}
>> >> > +
>> >> > +	goto missing;
>> >> > +
>> >> > +dgfx:
>> >> > +	ret = &tgl_plat_bw_params;
>> >> > +	if (display->platform.dg1)
>> >> > +		return ret;
>> >> > +
>> >> > +	ret = &bmg_plat_bw_params;
>> >> > +	if (display->platform.battlemage) {
>> >> > +		const struct dram_info *dram_info = intel_dram_info(display);
>> >> > +
>> >> > +		if (dram_info->type == INTEL_DRAM_GDDR_ECC)
>> >> > +			ret = &bmg_ecc_plat_bw_params;
>> >> > +
>> >> > +		return ret;
>> >> > +	}
>> >> > +
>> >> > +missing:
>> >> > +	/*
>> >> > +	 * Use parameters from the most recent platform,
>> >> > +	 * but raise a warning.
>> >> > +	 */
>> >> > +	drm_WARN(display->drm, 1,
>> >> > +		 "Platform-specific bandwidth parameters not found, using possibly incompatible default values\n");
>> >> > +
>> >> > +	return ret;
>> >> 
>> >> I don't understand at all why the function is written the way it
>> >> is. Seems like it should be a regular if-ladder like we have, with zero
>> >> gotos.
>> >> 
>> >> > +}
>> >> > +
>> >> >  struct intel_sa_info {
>> >> >  	u16 displayrtids;
>> >> > -	u8 deburst, deprogbwlimit, derating;
>> >> > +	u8 deburst;
>> >> >  };
>> >> >  
>> >> >  static const struct intel_sa_info icl_sa_info = {
>> >> >  	.deburst = 8,
>> >> > -	.deprogbwlimit = 25, /* GB/s */
>> >> >  	.displayrtids = 128,
>> >> > -	.derating = 10,
>> >> >  };
>> >> >  
>> >> >  static const struct intel_sa_info tgl_sa_info = {
>> >> >  	.deburst = 16,
>> >> > -	.deprogbwlimit = 34, /* GB/s */
>> >> >  	.displayrtids = 256,
>> >> > -	.derating = 10,
>> >> >  };
>> >> >  
>> >> >  static const struct intel_sa_info rkl_sa_info = {
>> >> >  	.deburst = 8,
>> >> > -	.deprogbwlimit = 20, /* GB/s */
>> >> >  	.displayrtids = 128,
>> >> > -	.derating = 10,
>> >> >  };
>> >> >  
>> >> >  static const struct intel_sa_info adls_sa_info = {
>> >> >  	.deburst = 16,
>> >> > -	.deprogbwlimit = 38, /* GB/s */
>> >> >  	.displayrtids = 256,
>> >> > -	.derating = 10,
>> >> >  };
>> >> >  
>> >> >  static const struct intel_sa_info adlp_sa_info = {
>> >> >  	.deburst = 16,
>> >> > -	.deprogbwlimit = 38, /* GB/s */
>> >> >  	.displayrtids = 256,
>> >> > -	.derating = 20,
>> >> >  };
>> >> >  
>> >> >  static const struct intel_sa_info mtl_sa_info = {
>> >> >  	.deburst = 32,
>> >> > -	.deprogbwlimit = 38, /* GB/s */
>> >> >  	.displayrtids = 256,
>> >> > -	.derating = 10,
>> >> > -};
>> >> > -
>> >> > -static const struct intel_sa_info xe2_hpd_sa_info = {
>> >> > -	.derating = 30,
>> >> > -	.deprogbwlimit = 53,
>> >> > -	/* Other values not used by simplified algorithm */
>> >> > -};
>> >> > -
>> >> > -static const struct intel_sa_info xe2_hpd_ecc_sa_info = {
>> >> > -	.derating = 45,
>> >> > -	.deprogbwlimit = 53,
>> >> > -	/* Other values not used by simplified algorithm */
>> >> >  };
>> >> >  
>> >> >  static const struct intel_sa_info xe3lpd_sa_info = {
>> >> >  	.deburst = 32,
>> >> > -	.deprogbwlimit = 65, /* GB/s */
>> >> >  	.displayrtids = 256,
>> >> > -	.derating = 10,
>> >> >  };
>> >> >  
>> >> >  static const struct intel_sa_info xe3lpd_3002_sa_info = {
>> >> >  	.deburst = 32,
>> >> > -	.deprogbwlimit = 22, /* GB/s */
>> >> >  	.displayrtids = 256,
>> >> > -	.derating = 10,
>> >> >  };
>> >> >  
>> >> >  static int icl_get_bw_info(struct intel_display *display,
>> >> > @@ -453,6 +546,7 @@ static int icl_get_bw_info(struct intel_display *display,
>> >> >  			   const struct intel_sa_info *sa)
>> >> >  {
>> >> >  	struct intel_qgv_info qi = {};
>> >> > +	const struct intel_platform_bw_params *plat_bw_params = get_platform_bw_params(display);
>> >> 
>> >> Perhaps it would be better to pass this in instead of every function
>> >> having the call.
>> >> 
>> >> Nitpick, "plat" is not an abbreviation I'm fond of.
>> >> 
>> >> >  	bool is_y_tile = true; /* assume y tile may be used */
>> >> >  	int num_channels = max_t(u8, 1, dram_info->num_channels);
>> >> >  	int ipqdepth, ipqdepthpch = 16;
>> >> > @@ -469,7 +563,7 @@ static int icl_get_bw_info(struct intel_display *display,
>> >> >  	}
>> >> >  
>> >> >  	dclk_max = icl_sagv_max_dclk(&qi);
>> >> > -	maxdebw = min(sa->deprogbwlimit * 1000, dclk_max * 16 * 6 / 10);
>> >> > +	maxdebw = min(plat_bw_params->deprogbwlimit * 1000, dclk_max * 16 * 6 / 10);
>> >> >  	ipqdepth = min(ipqdepthpch, sa->displayrtids / num_channels);
>> >> >  	qi.deinterleave = DIV_ROUND_UP(num_channels, is_y_tile ? 4 : 2);
>> >> >  
>> >> > @@ -499,7 +593,7 @@ static int icl_get_bw_info(struct intel_display *display,
>> >> >  			bw = DIV_ROUND_UP(sp->dclk * clpchgroup * 32 * num_channels, ct);
>> >> >  
>> >> >  			bi->deratedbw[j] = min(maxdebw,
>> >> > -					       bw * (100 - sa->derating) / 100);
>> >> > +					       bw * (100 - plat_bw_params->derating) / 100);
>> >> >  
>> >> >  			drm_dbg_kms(display->drm,
>> >> >  				    "BW%d / QGV %d: num_planes=%d deratedbw=%u\n",
>> >> > @@ -524,6 +618,7 @@ static int tgl_get_bw_info(struct intel_display *display,
>> >> >  			   const struct intel_sa_info *sa)
>> >> >  {
>> >> >  	struct intel_qgv_info qi = {};
>> >> > +	const struct intel_platform_bw_params *plat_bw_params = get_platform_bw_params(display);
>> >> >  	bool is_y_tile = true; /* assume y tile may be used */
>> >> >  	int num_channels = max_t(u8, 1, dram_info->num_channels);
>> >> >  	int ipqdepth, ipqdepthpch = 16;
>> >> > @@ -557,7 +652,7 @@ static int tgl_get_bw_info(struct intel_display *display,
>> >> >  	dclk_max = icl_sagv_max_dclk(&qi);
>> >> >  
>> >> >  	peakbw = num_channels * DIV_ROUND_UP(qi.channel_width, 8) * dclk_max;
>> >> > -	maxdebw = min(sa->deprogbwlimit * 1000, peakbw * DEPROGBWPCLIMIT / 100);
>> >> > +	maxdebw = min(plat_bw_params->deprogbwlimit * 1000, peakbw * DEPROGBWPCLIMIT / 100);
>> >> >  
>> >> >  	ipqdepth = min(ipqdepthpch, sa->displayrtids / num_channels);
>> >> >  	/*
>> >> > @@ -602,7 +697,7 @@ static int tgl_get_bw_info(struct intel_display *display,
>> >> >  			bw = DIV_ROUND_UP(sp->dclk * clpchgroup * 32 * num_channels, ct);
>> >> >  
>> >> >  			bi->deratedbw[j] = min(maxdebw,
>> >> > -					       bw * (100 - sa->derating) / 100);
>> >> > +					       bw * (100 - plat_bw_params->derating) / 100);
>> >> >  			bi->peakbw[j] = DIV_ROUND_CLOSEST(sp->dclk *
>> >> >  							  num_channels *
>> >> >  							  qi.channel_width, 8);
>> >> > @@ -663,10 +758,10 @@ static void dg2_get_bw_info(struct intel_display *display)
>> >> >  }
>> >> >  
>> >> >  static int xe2_hpd_get_bw_info(struct intel_display *display,
>> >> > -			       const struct dram_info *dram_info,
>> >> > -			       const struct intel_sa_info *sa)
>> >> > +			       const struct dram_info *dram_info)
>> >> >  {
>> >> >  	struct intel_qgv_info qi = {};
>> >> > +	const struct intel_platform_bw_params *plat_bw_params = get_platform_bw_params(display);
>> >> >  	int num_channels = dram_info->num_channels;
>> >> >  	int peakbw, maxdebw;
>> >> >  	int ret, i;
>> >> > @@ -679,14 +774,14 @@ static int xe2_hpd_get_bw_info(struct intel_display *display,
>> >> >  	}
>> >> >  
>> >> >  	peakbw = num_channels * qi.channel_width / 8 * icl_sagv_max_dclk(&qi);
>> >> > -	maxdebw = min(sa->deprogbwlimit * 1000, peakbw * DEPROGBWPCLIMIT / 10);
>> >> > +	maxdebw = min(plat_bw_params->deprogbwlimit * 1000, peakbw * DEPROGBWPCLIMIT / 10);
>> >> >  
>> >> >  	for (i = 0; i < qi.num_points; i++) {
>> >> >  		const struct intel_qgv_point *point = &qi.points[i];
>> >> >  		int bw = num_channels * (qi.channel_width / 8) * point->dclk;
>> >> >  
>> >> >  		display->bw.max[0].deratedbw[i] =
>> >> > -			min(maxdebw, (100 - sa->derating) * bw / 100);
>> >> > +			min(maxdebw, (100 - plat_bw_params->derating) * bw / 100);
>> >> >  		display->bw.max[0].peakbw[i] = bw;
>> >> >  
>> >> >  		drm_dbg_kms(display->drm, "QGV %d: deratedbw=%u peakbw: %u\n",
>> >> > @@ -814,10 +909,7 @@ void intel_bw_init_hw(struct intel_display *display)
>> >> >  		else
>> >> >  			tgl_get_bw_info(display, dram_info, &xe3lpd_sa_info);
>> >> >  	} else if (DISPLAY_VERx100(display) >= 1401 && display->platform.dgfx) {
>> >> > -		if (dram_info->type == INTEL_DRAM_GDDR_ECC)
>> >> > -			xe2_hpd_get_bw_info(display, dram_info, &xe2_hpd_ecc_sa_info);
>> >> > -		else
>> >> > -			xe2_hpd_get_bw_info(display, dram_info, &xe2_hpd_sa_info);
>> >> > +		xe2_hpd_get_bw_info(display, dram_info);
>> >> >  	} else if (DISPLAY_VER(display) >= 14) {
>> >> >  		tgl_get_bw_info(display, dram_info, &mtl_sa_info);
>> >> >  	} else if (display->platform.dg2) {
>> >> 
>> >> -- 
>> >> Jani Nikula, Intel
>> >
>> > -- 
>> > Matt Roper
>> > Graphics Software Engineer
>> > Linux GPU Platform Enablement
>> > Intel Corporation
>
> -- 
> Matt Roper
> Graphics Software Engineer
> Linux GPU Platform Enablement
> Intel Corporation
