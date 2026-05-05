Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id 2IDYD7ar+Wky+wIAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Tue, 05 May 2026 10:35:02 +0200
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 8DEAF4C8B92
	for <lists+intel-gfx@lfdr.de>; Tue, 05 May 2026 10:35:01 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 9B35C10E9E5;
	Tue,  5 May 2026 08:34:59 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=fail reason="signature verification failed" (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="UBHmhnoB";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.12])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 9526610E9E5;
 Tue,  5 May 2026 08:34:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1777970099; x=1809506099;
 h=date:from:to:cc:subject:message-id:reply-to:references:
 in-reply-to:mime-version;
 bh=gxgNOt6lAt4072ouIe+6OlLAOPhkudQUuf83sPG6cQk=;
 b=UBHmhnoBI3d8UWTLNDq8VJDJD3ooKxwF3kiY6SSnJrwcVxgn4Q2528nz
 3BKtdJFMQFM9pkhJ7sRkbHF8Nzxe76J1Qr5J2X1pOOLatG7i7haxNBfoY
 6qi1Ieli3P3FUwUGxPKClhLMlWndVt9N/SMYPo6V3QEZj7E7fOoS8/amK
 qhm0W9Nr+uUzNl+efLmDAUgDvp/jA4+DeoP5TLC93jrwJF6/8Zzf9Wk3l
 RyiGbH0xlTvuH4+sgLs+QJHr3ggyRFX2xbb+2RBvD75oYuT5FNqPz4hLY
 gVbdf33p++NVdX0r+XxlzvGj9Ng/DlYsS5hxuZnDMLaie5h3fLZOTLZbe g==;
X-CSE-ConnectionGUID: MMP0D35VQMGNem/qagD0CA==
X-CSE-MsgGUID: FsGj48j7RNGwuvAXjZ3aaQ==
X-IronPort-AV: E=McAfee;i="6800,10657,11776"; a="90290603"
X-IronPort-AV: E=Sophos;i="6.23,217,1770624000"; d="scan'208";a="90290603"
Received: from orviesa006.jf.intel.com ([10.64.159.146])
 by orvoesa104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 05 May 2026 01:34:58 -0700
X-CSE-ConnectionGUID: DWi7rtaAR5mMxtMzMRKpbA==
X-CSE-MsgGUID: uXiwme64QZe+FrY7GBsrFw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.23,217,1770624000"; d="scan'208";a="234742161"
Received: from orsmsx902.amr.corp.intel.com ([10.22.229.24])
 by orviesa006.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 05 May 2026 01:34:58 -0700
Received: from ORSMSX902.amr.corp.intel.com (10.22.229.24) by
 ORSMSX902.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Tue, 5 May 2026 01:34:57 -0700
Received: from ORSEDG903.ED.cps.intel.com (10.7.248.13) by
 ORSMSX902.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37 via Frontend Transport; Tue, 5 May 2026 01:34:57 -0700
Received: from DM1PR04CU001.outbound.protection.outlook.com (52.101.61.65) by
 edgegateway.intel.com (134.134.137.113) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Tue, 5 May 2026 01:34:56 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=cWq90OsiSo/7moWbiMvIDiw5QuukshUtdMBr2P8qKQNTiZUowA20i2vENeGZXNR2iZ19W8E9B2Sq0FY4Jf49fZpJczCehrpdd1MkMsw08NmeWNhkS3Iu83lQDno3N83f50mq+TkKa7iuT+YzhgY/MPMYBn5Sl7uc/B2220apt8XoRdWoY2SwUOxY5M5Z+8JdJSGadLnHgz0ixD9o7ZsBUgB0maGj2nLQVdkz9jtXtmFNoy0mPdi/STRI8gtB7YMJtrHNUKYB255T5xzO4UdZ53nK+VlRLKcdGjVINXCnoWQ8VkyAwrMzYZc891lUvIIWrSn/s8QYuWtfW2NoIrZVkw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=pF/U47VagkHc+yFjT5kFOpjy28C4TikVKOw+V46TsgE=;
 b=oD/ETDZ0VKfcqplrkPqFi6uGo6/5du4BnxVz3i3TzCOj520zysM9XPgXALXWImJZBNA9dxF8TWbcF9SoguXe5BX4hBWOBE+Dk95mFUE25uOBLkJwWwgYv217Oz0UE1nhKURy/WHPT2/fwCv5LJ0oYiX7U+SDhtsNBm8/EsZTy/NfgDG/4t037QAmUYczTmqbNXJ1FzNlXbt+lq9XCGNtO3w8sfY+mW3D1OmtPW2gqQwexM9fwROERFY/HRiBYaRqKMxUjbPCmLmPBa9wfl3JFHTs00EB8eTVnUuJWGRrchBKS0up2qaCnBH9F3/obqkhmCymN8JFtR4CxiC1Wqa97Q==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from SJ0PR11MB4845.namprd11.prod.outlook.com (2603:10b6:a03:2d1::10)
 by SA1PR11MB6845.namprd11.prod.outlook.com (2603:10b6:806:29f::11)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9870.25; Tue, 5 May
 2026 08:34:53 +0000
Received: from SJ0PR11MB4845.namprd11.prod.outlook.com
 ([fe80::9ca5:4d1d:db45:f523]) by SJ0PR11MB4845.namprd11.prod.outlook.com
 ([fe80::9ca5:4d1d:db45:f523%5]) with mapi id 15.20.9870.023; Tue, 5 May 2026
 08:34:52 +0000
Date: Tue, 5 May 2026 11:34:43 +0300
From: Imre Deak <imre.deak@intel.com>
To: ChunAn Wu <an.wu@canonical.com>
CC: Jani Nikula <jani.nikula@linux.intel.com>, Rodrigo Vivi
 <rodrigo.vivi@intel.com>, Joonas Lahtinen <joonas.lahtinen@linux.intel.com>,
 Tvrtko Ursulin <tursulin@ursulin.net>, David Airlie <airlied@gmail.com>,
 Simona Vetter <simona@ffwll.ch>, <intel-gfx@lists.freedesktop.org>,
 <intel-xe@lists.freedesktop.org>, <dri-devel@lists.freedesktop.org>,
 <linux-kernel@vger.kernel.org>
Subject: Re: [PATCH v2] drm/i915/tc: Recover AUX channel after external TC
 port mode change
Message-ID: <afmroyG15GjNRJUM@ideak-desk.lan>
References: <20260505033558.157604-1-an.wu@canonical.com>
Content-Type: text/plain; charset="us-ascii"
Content-Disposition: inline
In-Reply-To: <20260505033558.157604-1-an.wu@canonical.com>
Organization: Intel Finland Oy - BIC 0357606-4 - c/o Alberga Business Park, 6
 krs Bertel Jungin Aukio 5, 02600 Espoo, Finland
X-ClientProxiedBy: GVYP280CA0002.SWEP280.PROD.OUTLOOK.COM
 (2603:10a6:150:fa::9) To SJ0PR11MB4845.namprd11.prod.outlook.com
 (2603:10b6:a03:2d1::10)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: SJ0PR11MB4845:EE_|SA1PR11MB6845:EE_
X-MS-Office365-Filtering-Correlation-Id: f2b99427-0c51-4b39-41aa-08deaa812d8b
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
 ARA:13230040|366016|376014|1800799024|56012099003|18002099003|22082099003; 
X-Microsoft-Antispam-Message-Info: bsDj1lSs1fHLCFzN6gsZKvtYtLmxH+xUJIv7skNqRTR6bcXL8zh9+H4zECOFbkTmMRtX6Vi9KyNIf+nt5SJGmLvlnco7lc1ch9HKArZLVubRTmmpN4fwAGSG6okOLATux/u6U8IATuGZDqbFOMjEbAGJIRQXTblqM6aO1wVJBlCRgV2un3SZxkyO73zJ7p0ptMuuI7TTgJ1Uhiq1ZCbJIHrlONJ45Zz7avZCUZX/VscRTOhMXibpd/+8ApI8V4f5QIVMJGQegGKDLYCNH2CbzQPKnDxPzNJrPyL3I7lm40EcV59ebuZppcfSq874L3Zxa22oPFPl+YdHaWWYFR4AtAsvU4JTbBFynPp4FshMpZNjdtNPgeSwaS6+BPclTUj3Q/W5zb4iMuJ6kas7/NsmPr1EF1DCiGaROpxa0dFbVyBp92JV7BnOWeXd/+kp4YFBK1TXM08G0K4lOvhgjSTj/inFzCHB+tWEqlFKKwzrXLQRM80ZOxj3Vd8KGll8b7CO3MxxDHSAE79cUDxxAoEidVVvRrxMwl4iDGqanfDyUxzlNpaIMHsbNpWCzIoxYuSkoIwoVa3tqtghnlwKvu3aMNc/Em1Vq0y+78hS46J0RkWgdnvQEctN/XndFVWD2es+WhmcCTiN5Zn2dPqt8/b9v8N29Y8g3muryMxVIrnSmY0Zv5QayPH20o2Sed0OmRzh
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:SJ0PR11MB4845.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(366016)(376014)(1800799024)(56012099003)(18002099003)(22082099003);
 DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?mVgvp08CvK7o/LR5/ZrsIyl6qSG769tb005fzscQZ4P99OyC792Uqb9wTadN?=
 =?us-ascii?Q?5LjPccZsKUhgKnBdBP1Wl22NuGJq+NsYOn2R05XsN0b/fkNg927Fobkf+VqX?=
 =?us-ascii?Q?FCGV3FdozBJJmEaQgvccRy11qV6aeLLBPkGOIHhTz/E3bB9dHO6AeV9xx9TA?=
 =?us-ascii?Q?bruEMJqCqd6vHaD5U88l/KqnRCC2hn3FuCZxyBbgZWt0g+XBcWtUfFWjcn/B?=
 =?us-ascii?Q?NgDCuYRiqq3beL27UWgIvBA7aU4qju9IWFfYEhf7xmdk5QiF5mx44dgCJMe3?=
 =?us-ascii?Q?a7gOdb+IoR84JtTnN7PhqLtDPq0/nzMr/SQ7WRZ9I2kf3PwGTIu2F/Aq8UyQ?=
 =?us-ascii?Q?QTKbPTwFtBYWvttsSkMRc4yymOW2qZKy3Ucy1gWVxiQmu1HpNkVF0BDJbEho?=
 =?us-ascii?Q?k5WQn+Q5ZgfwgsWEleZXZincoQLwe6/kHxv7uhUqeqvVd+B54OfvypWGZ2pI?=
 =?us-ascii?Q?LzVY/eGejFtKUMNumjuISbD5W/o5qma848xQCjUZgosOFjdXv8mkABi5INOE?=
 =?us-ascii?Q?YCyqHSLhf4v2h8UvIV/x404vky892NdpoZGo3APB/cc0KbXsIwcQ0nOGrHwB?=
 =?us-ascii?Q?0CnIGdsbANLvJiOVuk7JXZdKT0mFtybrxVGM+HNrQ6kJmwxv8moXooPAGf4c?=
 =?us-ascii?Q?nimscJy9yVFkldL4CDUFSOYa2xmlEBLbQWG2KDRR2uA6sFvXBvwlNNXfgY5A?=
 =?us-ascii?Q?mKa4LS7xzYmuurRCUIJedksgIqLHtJ6GRVz3wsJunZgn2LjcY06fZIW5+81e?=
 =?us-ascii?Q?5P9JKnF8e7YwQD2SxOagRrMyKJFnv8ji3UywI5mMw4Mq9CVH8wA1/6H4syok?=
 =?us-ascii?Q?5FDRba9Dr6lZtIZZBgu0dGjqVhNWtrksdDAs/KqLJwEm7iqkMTlsT1nUaXbB?=
 =?us-ascii?Q?UEptDmnVWeNf+jU6BfdNu2aXquGGdDxfIGq78rSc1dAe69kA2dgcUvDsXb1O?=
 =?us-ascii?Q?8XzftUh8gR61GS04VYAzY7hSJ2psxf5s6yOV46g0Y2V5mrPSVGqMqIoytx4U?=
 =?us-ascii?Q?gxRorjwvc9TNNIOgjsI6xpAsjouPwsDfRwKMSj7yuapHyG6Q7aU54lMz7W9P?=
 =?us-ascii?Q?k+RIkqX6fWbXTuVBpDQ6Rr/9RKbPLft6cSlt1nmcXNQx5rui9DSHMsiupT5M?=
 =?us-ascii?Q?I6Aa45qEV71QfjRLJHurnEeCDObwWFaCJx0OpTlGYSyBQHXsyON+07OlSiBF?=
 =?us-ascii?Q?KKMmfPYyk5fzCTKcVdbEgc+vyKTAUutDktfzuDd9wQtSHxFs3iLvyVuq2TjC?=
 =?us-ascii?Q?64ddZfkwXzbYNIN0xq0ipd798fvR58WY4LfFeCk+q5JbHO9vrUEzIhY7p4TP?=
 =?us-ascii?Q?tMswepa/4dme2B4EMSS0yzf0PJNPGaLVLO9A+BVqWtCStrfU3inBr5wIDx9Y?=
 =?us-ascii?Q?tvLisZZeLUcFdKsCq4TxRUGPyvcZQ1rzkxr9Gakkoi+eECz23VnEMadqXfHT?=
 =?us-ascii?Q?8/9xqLnXI0S6tHWpMHXsmD4BhHNtDNGFX2Ya4P96+fTJWwMSt52TYacF2Z7E?=
 =?us-ascii?Q?zFHd3lX3NGgpLIkf+pThPbb4J0v16inr9+u2Afsh2dhKOqWL0ziTY30NvXwU?=
 =?us-ascii?Q?y87N8CsdRdYgHaJI5p9KNN6nJNMxbK5WqHK7wP52I07Y0cowZDaQGZSlITMh?=
 =?us-ascii?Q?OU1E4NtHs9E2HUm7LAIAUE/tso7+JeLwDWRr+bY+Q5r8qehqj+5qRk6PUdre?=
 =?us-ascii?Q?kiizh1IVJ87gw+t92oNLSpjMhu6ywWlj11BWB4Lqivcy/CKKhsMjq7SWXWp+?=
 =?us-ascii?Q?AnBPk2b5cg=3D=3D?=
X-Exchange-RoutingPolicyChecked: Yt5CUgz7Z5g/EMxD2RfpKMPyt7/MNfsNKDn499/oFVUBgUO5tvJr2rf+4J5JlMUBCAgLuG62kXXndiQoTfVldG+5PDzrogRz4F8XE7t94nT9DqLgX8+tTwPVZ9/u2WS7jszL/OY7cxIRGJwebdCwUeXX/ohklLzcbwnocvEAXPvWBHCRzcFEr3tfwJ2ftRMwHluE2AhRsg069C4rQdmFqU8v+SVxIAGbOJPQsGrkzSrm/rityDW+aRB58yrxfwycpcJlkLIv/APyvV3AwUpGsCXfdqvAT0rgiOHlpccGPmPj5M4hsufyBNNMTVUoie495nhu01wA1Hk63Xz6GC4ZZA==
X-MS-Exchange-CrossTenant-Network-Message-Id: f2b99427-0c51-4b39-41aa-08deaa812d8b
X-MS-Exchange-CrossTenant-AuthSource: SJ0PR11MB4845.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 05 May 2026 08:34:52.8465 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: v6rbSllcAMm+Ml7Z8PRNEONTKj53xmS6t192j4uXl68UY3knQGdDy65qnjqCPq5XBQCz/8IU0tAn331sC+V5XQ==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SA1PR11MB6845
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
X-Rspamd-Queue-Id: 8DEAF4C8B92
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [1.49 / 15.00];
	ARC_REJECT(1.00)[signature check failed: fail, {[1] = sig:microsoft.com:reject}];
	R_DKIM_REJECT(1.00)[intel.com:s=Intel];
	MAILLIST(-0.20)[mailman];
	R_SPF_ALLOW(-0.20)[+ip4:131.252.210.177:c];
	RWL_MAILSPIKE_GOOD(-0.10)[131.252.210.177:from];
	MIME_GOOD(-0.10)[text/plain];
	DMARC_POLICY_SOFTFAIL(0.10)[intel.com : SPF not aligned (relaxed),none];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[intel.com:replyto,gabe.freedesktop.org:helo,gabe.freedesktop.org:rdns];
	HAS_ORG_HEADER(0.00)[];
	MIME_TRACE(0.00)[0:+];
	FREEMAIL_CC(0.00)[linux.intel.com,intel.com,ursulin.net,gmail.com,ffwll.ch,lists.freedesktop.org,vger.kernel.org];
	FORGED_SENDER_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	DKIM_TRACE(0.00)[intel.com:-];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	HAS_REPLYTO(0.00)[imre.deak@intel.com];
	REPLYTO_ADDR_EQ_FROM(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[imre.deak@intel.com,intel-gfx-bounces@lists.freedesktop.org];
	FROM_HAS_DN(0.00)[];
	REPLYTO_DOM_NEQ_TO_DOM(0.00)[];
	NEURAL_HAM(-0.00)[-0.941];
	TAGGED_RCPT(0.00)[intel-gfx];
	RCPT_COUNT_SEVEN(0.00)[11];
	MISSING_XM_UA(0.00)[];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	RCVD_COUNT_SEVEN(0.00)[9]

On Tue, May 05, 2026 at 11:35:57AM +0800, ChunAn Wu wrote:
> When Fn+F4 triggers mirror mode, the BIOS/EC reconfigures a TC port
> mode (e.g. DP-Alt to TBT-Alt via UCSI) without generating HPD. The
> driver's cached TC mode becomes stale, so intel_dp_aux_xfer() uses
> the wrong power domain and IO routing, and AUX transactions fail.
> 
> This occurs when the USB-C-to-HDMI dongle does not support TBT, so
> the mode switch creates a mismatch. It also occurs with slow monitors
> whose delayed HPD/DDC/EDID recovery causes the Type-C layer to settle
> on a stale tbt-alt state before the dongle finishes re-negotiation.
> 
> Add intel_tc_port_aux_recover() to detect hardware/cached TC mode
> divergence and reset the PHY. Wrap it with
> intel_dp_aux_xfer_with_recovery() to retry with corrected settings.
> 
> Tested on Panther Lake and Lunar Lake with a BenQ HDMI monitor via
> USB-C-to-HDMI dongle.
> 
> Signed-off-by: ChunAn Wu <an.wu@canonical.com>
> ---
>
> [...]
>
> +/**
> + * intel_tc_port_aux_recover - Recover AUX channel after external TC mode change
> + * @dig_port: digital port
> + *
> + * When firmware causes a TC port mode change (e.g., dp-alt -> disconnect ->
> + * tbt-alt) during a hotkey-triggered display mode switch, AUX transactions
> + * using the stale power domain and IO flags will fail with timeouts or errors.
> + * This happens because:
> + *
> + *   1. The display driver holds the TC link in dp-alt mode (link_refcount > 0)
> + *   2. Firmware (e.g., via HP WMI hotkey BIOS action) reconfigures the TC port
> + *      mode externally without notifying the display driver
> + *   3. tc->mode stays as TC_PORT_DP_ALT while HW transitions to a different
> + *      mode, invalidating the AUX power domain and IO flags used by
> + *      intel_dp_aux_xfer()
> + *
> + * This function detects the discrepancy between tc->mode and actual HW state,
> + * and re-synchronizes them via a TC PHY reset. After recovery, AUX retries
> + * will use the correct power domain and control flags.
> + *
> + * The link_refcount is temporarily cleared to allow intel_tc_port_reset_mode()
> + * to proceed without the PHY-ownership assertion that fires when link_refcount
> + * is non-zero and firmware has already released PHY ownership.
> + *
> + * Must be called outside the TC port lock (tc->lock).
> + *
> + * Returns: %true if recovery was performed and AUX can be retried,
> + *          %false if recovery was not needed or not possible.
> + */
> +bool intel_tc_port_aux_recover(struct intel_digital_port *dig_port)
> +{
> +	struct intel_tc_port *tc;
> +	struct intel_display *display;
> +	bool recovered = false;
> +
> +	if (!intel_encoder_is_tc(&dig_port->base))
> +		return false;
> +
> +	tc = to_tc_port(dig_port);
> +	display = to_intel_display(dig_port);
> +
> +	mutex_lock(&tc->lock);
> +
> +	/*
> +	 * Recovery is only needed when the link is actively held AND the HW
> +	 * TC mode has diverged from the driver's cached state.
> +	 */
> +	if (!tc->link_refcount || !intel_tc_port_needs_reset(tc))
> +		goto out;
> +
> +	drm_dbg_kms(display->drm,
> +		    "Port %s: AUX recover: external TC mode change detected (%s -> HW), reconnecting TC PHY\n",
> +		    tc->port_name, tc_port_mode_name(tc->mode));
> +
> +	/*
> +	 * Temporarily clear link_refcount so intel_tc_port_reset_mode() can
> +	 * run the PHY disconnect/connect cycle without the ownership assertion
> +	 * that fires when link_refcount > 0 and firmware has already released
> +	 * PHY ownership externally.
> +	 */
> +	tc->link_refcount = 0;

This looks wrong, NAK from my side:

A non-zero link_refcount guards an active output, which must maintain
the TypeC mode with which the output was enabled. So that TypeC mode
cannot be reset from under the active output as done in this patch.

The commit message fails to mention how the display driver is supposed
to notice that the user have pressed F4 and the firmware has
reconfigured things in the background. Assuming that the FW's
reconfiguration in the background is actually a valid thing to do, i.e.
doesn't result in getting the active TypeC port into a broken state, the
transition to the new TypeC mode should happen in the regular way: via
an HPD event, if neecessary using the
drm_connector_funcs::oob_hotplug_event interface, disabling any active
outputs and _then_ switching the driver's idea of the TypeC mode to
reflect the HW state.

> +	intel_tc_port_reset_mode(tc, 1, false);
> +	tc->link_refcount = 1;
> +
> +	recovered = tc->mode != TC_PORT_DISCONNECTED;
> +	if (!recovered)
> +		drm_warn(display->drm,
> +			 "Port %s: AUX recover: failed to restore TC port mode\n",
> +			 tc->port_name);
> +
> +out:
> +	mutex_unlock(&tc->lock);
> +	return recovered;
> +}
> +
>  static void __intel_tc_port_lock(struct intel_tc_port *tc,
>  				 int required_lanes)
>  {
> diff --git a/drivers/gpu/drm/i915/display/intel_tc.h b/drivers/gpu/drm/i915/display/intel_tc.h
> index 6719aea5bd58..d44998a3081a 100644
> --- a/drivers/gpu/drm/i915/display/intel_tc.h
> +++ b/drivers/gpu/drm/i915/display/intel_tc.h
> @@ -108,6 +108,7 @@ bool intel_tc_port_ref_held(struct intel_digital_port *dig_port);
>  bool intel_tc_port_link_needs_reset(struct intel_digital_port *dig_port);
>  bool intel_tc_port_link_reset(struct intel_digital_port *dig_port);
>  void intel_tc_port_link_cancel_reset_work(struct intel_digital_port *dig_port);
> +bool intel_tc_port_aux_recover(struct intel_digital_port *dig_port);
>  
>  int intel_tc_port_init(struct intel_digital_port *dig_port, bool is_legacy);
>  void intel_tc_port_cleanup(struct intel_digital_port *dig_port);
> -- 
> 2.34.1
> 
