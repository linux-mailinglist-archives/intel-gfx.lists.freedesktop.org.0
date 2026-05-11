Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id mL/2OL7QAWrbkAEAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Mon, 11 May 2026 14:51:10 +0200
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 59AAC50E3A2
	for <lists+intel-gfx@lfdr.de>; Mon, 11 May 2026 14:51:10 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id BE76C10E6DE;
	Mon, 11 May 2026 12:51:08 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="mVNZR2dz";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.10])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 0188110E6DE;
 Mon, 11 May 2026 12:51:07 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1778503868; x=1810039868;
 h=from:to:cc:subject:in-reply-to:references:date:
 message-id:mime-version;
 bh=2YzofBjCAojszJSgzm5m7k6ai4YNpfYlFQuwbBIBppg=;
 b=mVNZR2dz8OW+cG6BgxKw341q4MvQGSMCIjZNalMJPc5UQcBqEVI6eqHv
 0/lqHhYrcOilRE21+X4VGnjxCPtX0dGVwH1wCAp5sNcB0lgN2N7yzseT1
 zNERZBPBbNGs+QpLYUWjoXIJJ6xFujCf75DJJBcAmGU64F6tpcgcxLJ5L
 omUkPWlOgAqlwgU+64lIOVI3kSX21QQIuBSLEL3kki6y4kVl3FRzdXuD+
 NiUnWgr7a8KxTYjLoZ6J+rFROhPJ/xpgVb5s+XUkCMxjTZkGJmzSLEC+v
 bhNvzIetei5CpY42bT+nacDfPgWByRaFmSbO7gOLRUX9vWoegQki1a8xx Q==;
X-CSE-ConnectionGUID: kkYJB1+0T16kyrAisinyOQ==
X-CSE-MsgGUID: Yi8a7UtPSvWUu9eCtceg9g==
X-IronPort-AV: E=McAfee;i="6800,10657,11782"; a="90765251"
X-IronPort-AV: E=Sophos;i="6.23,228,1770624000"; d="scan'208";a="90765251"
Received: from fmviesa003.fm.intel.com ([10.60.135.143])
 by fmvoesa104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 11 May 2026 05:51:08 -0700
X-CSE-ConnectionGUID: vZa2LbNNSKyNA8UldTsS9Q==
X-CSE-MsgGUID: ijJ3a3VWTeeJPHxRr4AYdA==
X-ExtLoop1: 1
Received: from orsmsx901.amr.corp.intel.com ([10.22.229.23])
 by fmviesa003.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 11 May 2026 05:51:08 -0700
Received: from ORSMSX903.amr.corp.intel.com (10.22.229.25) by
 ORSMSX901.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Mon, 11 May 2026 05:51:07 -0700
Received: from ORSEDG902.ED.cps.intel.com (10.7.248.12) by
 ORSMSX903.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37 via Frontend Transport; Mon, 11 May 2026 05:51:07 -0700
Received: from DM1PR04CU001.outbound.protection.outlook.com (52.101.61.34) by
 edgegateway.intel.com (134.134.137.112) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Mon, 11 May 2026 05:51:06 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=YXsnbt7lweyYASXqigzpi0edivnu3xE3PEcEc1uSfksn4UA64Pth/2Ar9bJt+UvaZHS2JbGJ6BcDJJXtK4qqyUCLJ8+umHXXnQQ0h5VOFHD/JalJkkjIgOo1rrnX3cr57EhzDmfCt9HyCmDxVDuIFyPHOoEdUj8aG6G+jI0FovIZVQ/VbLR+Rx/jUtd6/21SXeasTUki3u/uJvhX0GwGK86X7miRQO4rz8BmVYH2IozhUNMhO59Sm7QpGVRLS1xpGcOnwuepch+LqDVvWKlDZjPcT88nEgW4w9++0R42W+EAwploSDBu9CSzW5tCn4cV8KkL7RiYxiaBUYhM/yZDuQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=qmxfef+S9KbDt0RBD80uYd0mwVkxI+nVMqyOrHIRr0Y=;
 b=iHf2CG5RbfbyZsHXeMxQMpMWNk7RGgOWAhfkBWyCNu4w5+GbfSeeP15g9CEJphauL0Fs2RD6DQRAOvam9iFojplKuo951s7fuYQqTgm9BoEEj4SCLzLxdqN31709HabmDHmH6/hMMJyHhwp8PNrAOrlfDySAn2er3tOKf/dJTuD4+KW/M0m3lldpLMXr+A6ag4VTRtNAh7jl4kkJl33IKufHr7L3hao+IaIhHhnUEDKIptgLKrNDK8MjvW76lzUhYOArKgxX9GdC4WjpJUM/cGSgYDawu3fWnkudlzY3oSOXEkmmI0ARdB1z1SaCjiMEi6pkgKIW5zmZN1kcfGCXyw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from PH8PR11MB8287.namprd11.prod.outlook.com (2603:10b6:510:1c7::14)
 by IA3PR11MB9254.namprd11.prod.outlook.com (2603:10b6:208:573::10)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9891.22; Mon, 11 May
 2026 12:51:04 +0000
Received: from PH8PR11MB8287.namprd11.prod.outlook.com
 ([fe80::a0e5:e99c:ee7b:620a]) by PH8PR11MB8287.namprd11.prod.outlook.com
 ([fe80::a0e5:e99c:ee7b:620a%5]) with mapi id 15.20.9891.020; Mon, 11 May 2026
 12:51:03 +0000
From: Gustavo Sousa <gustavo.sousa@intel.com>
To: <imre.deak@intel.com>
CC: James Xiong <james.xiong@intel.com>, <intel-gfx@lists.freedesktop.org>,
 <intel-xe@lists.freedesktop.org>, <jani.nikula@linux.intel.com>
Subject: Re: [PATCH v3] drm/i915/dmc: fix assert_dmc_loaded WARN during
 async firmware load
In-Reply-To: <agHOCIcYOsDPyUi0@ideak-desk.lan>
References: <20260508181329.666762-1-james.xiong@intel.com>
 <87tsseqgrb.fsf@intel.com> <agHOCIcYOsDPyUi0@ideak-desk.lan>
Date: Mon, 11 May 2026 09:50:59 -0300
Message-ID: <87o6imqfd8.fsf@intel.com>
Content-Type: text/plain
X-ClientProxiedBy: SJ0PR03CA0203.namprd03.prod.outlook.com
 (2603:10b6:a03:2ef::28) To PH8PR11MB8287.namprd11.prod.outlook.com
 (2603:10b6:510:1c7::14)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: PH8PR11MB8287:EE_|IA3PR11MB9254:EE_
X-MS-Office365-Filtering-Correlation-Id: bf5b065f-808a-4fd5-7711-08deaf5bf582
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
 ARA:13230040|376014|366016|1800799024|22082099003|18002099003|56012099003|11063799003;
X-Microsoft-Antispam-Message-Info: 2wztK+axAH8rRb51kAPdmM1DKXV7+uBmH40GFDyFuCn7MOl4JjYDvTvubFrmrA4h+4tQ+jcCj3RDRqUZadJ8edhQLVy1VVkh9JLfVcIgplOTL63BpkAXoZKMKUKPdWhf+virPNz8y923Pg/Br+XqkfLlF763O9hMAlPiJCpd9olLimkoBh7jsMrwcxDGsFrVpdddeaTU2pC7uFessDCGfC/Q6jtZfE8TQmMLVdP3Qr+g/hq3ocBY5Xw96CacKuTgMIq2K2n28V02JL3/ctsZ0tymP7F320IYwSoX17gyavGt41UPteyVDd0errvcNm8oxCFT20idE/5NB7F4DaiApOiP9sbih0TUlLWstcPRfk2BvHm3cz5w+FHFPkPS9ilYkiZffQq1D6dEO7TruJzlBobyUYAWTBZcNPq7kFL7QOi+3zoOY7ZBB9JxhOQb/Vn0sxAVx0vDZw695oDyadJo+s3L1pBBoVtpYDhbEC+qeWbEAaz0QBzOO367hjNs2C9EZiuEddxB4oYULuqISt/+g6ljAEcGM4R/+ft7QD98DM9XgFihWYCP9t0X82retucUYyIIyA8z+NRXXg4xvlq9sO6Y21hYSApBfLiKIrkJozc+C39nauMK+Zxh0qHNEh0onk0U6dEMXIVmltdNXXvc1lrG94PVEC7OgKRBJGONWJU5X9bSGO3wMMslhwAQO1gm
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:PH8PR11MB8287.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(376014)(366016)(1800799024)(22082099003)(18002099003)(56012099003)(11063799003);
 DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?PYcNZeHnmAliofNY1mXqhlF5fBXJdq8Erzdx4DE6i2y8Yiw1AG/Z+iU0J/Sd?=
 =?us-ascii?Q?RGsMgBnrdgsy1xiTpMgC6Z1K7OMxKHrYOKUpZ/KzWgPkqn02XmPeVlj9QHTV?=
 =?us-ascii?Q?BTMZI33oB5Ql4rEuxozeFLgjijA2E4ZLxOIF7SCVUqMMd7R89ByORLXOv48L?=
 =?us-ascii?Q?DV+rIVS8NXoT8cjGPfrAQMvWeqkaPVmVnuDQQ0vHnkBaduCJ7uOnetUiqWh8?=
 =?us-ascii?Q?jSYDEA+X4WzT226YiHYkHd4k9Gf3KBHSH8RhAb+OIV+kGn9NIBcmDD6nrgVf?=
 =?us-ascii?Q?h1vx9zJOfGcLgOMjgxTSGZLF2iebjQmJn7Fl4bFJdev0Ow1+2iqmFCSqJf1f?=
 =?us-ascii?Q?flFUsjwi5kJ+sq3Ct4OzbRkMEQtI0MbseCrEOR69J00Xv/p6GyV/N4kynLQ6?=
 =?us-ascii?Q?IYfUH4bjIBCAdRgLrI7O351P156OTdJdvj21nsakriOdj7MHipn6ywxnk6Hj?=
 =?us-ascii?Q?reLeU1LhQ6e8u6/fKaFqJHW7D4j4QNjfip8GGgqq+at09QJf4Lb9I5fq3hjn?=
 =?us-ascii?Q?evIv3GhO9jpYE3lt1pxAcj3UsnnVccuIQZUBGzIEuH5mGzlTD5ZI3tawDi8b?=
 =?us-ascii?Q?0DUqA/CQ4gBA0yERaZcIPS371WPBA8aR3jm11xPK3dm5aArg5J/QsBrqdpQ5?=
 =?us-ascii?Q?LAwh0u6O3usu979iFebz/JHH0+VaMUD//J5HEwJrzafBamAG816GGp289YeZ?=
 =?us-ascii?Q?8Ry1yC1/YB8QaG5kh73/VYxkFTkNuU1sIVctSBlCyBJcigRyw/O2SvBHI8OX?=
 =?us-ascii?Q?ii5+oeVUNgVsuA7/c5Jj8QwjYMFkZJRipd3HhZGz7Wo/+M6BAJNvw5kJ63Rx?=
 =?us-ascii?Q?xW8Lp3DkLxXJn3mWR597tonTV3N/8VLwsO3gt51i6iD6fpAIpeg6u5n7X+m/?=
 =?us-ascii?Q?xnn4kUN+rTpR6Iqrsm3aZj00ICBlggLfyZxMp+CzySpgFSL834vMahqsyC49?=
 =?us-ascii?Q?ETZJQLhDwjIQwMxBdaYLJKGr5ZzbIwU7PB+7WvFs9Ta0pnrMsJt4enFglFTI?=
 =?us-ascii?Q?h3g3jDLqWDR+JTs7kFxM8dZfYK7UjaSgE6i9jnW3wt/r6CVgD/bpACE9y1LV?=
 =?us-ascii?Q?VcNsopCvxxTMS/EgJZErU1kyZu6QrgsPo+qfTBotwhyyux2BUiSB07Gb/L64?=
 =?us-ascii?Q?RUHeSxZLJV0hUfY0pL7uKVrIADQHMsYL7WwhW2bLnpw8Ppd1UuvFBy+OvXNr?=
 =?us-ascii?Q?z+mXJtY/A8FRlbEWiKXkTcC7STaFY+i1d+2G9fmxjDzhhwctjQT3LjGKAyE3?=
 =?us-ascii?Q?ad2RbJc0ccUkIC3DiBUjPUZSKQQWYUootq3b3V7KQmFbB3F1vz3XgKBjteRs?=
 =?us-ascii?Q?2glXVCvygj74pOxHs+uM2zoKT1CCY4/y+u44I9pnKz6+TKIDYuzL4qYzyBz4?=
 =?us-ascii?Q?r+tGOwgZ0WU5jpbYkSO+EWCfBrTC+Unr9ujfupY/6WSdlygn69XJQzJ8njGb?=
 =?us-ascii?Q?MVA10MHBr0gcXjkRvj5wUKClm/vXibaTI5qvgfez4+eVdj0YKfzLkbe8QioF?=
 =?us-ascii?Q?lL0zHPubCb53T04S7Gm9YcetyaxUye7O1/5BBRHr3BMke5TwN8eNdpOUmmkh?=
 =?us-ascii?Q?h+28i2jo/zWkxPxJH6BRGMpHaB12e9/0ofkkSIxHYYFUxk47ULmV+wNCKMPD?=
 =?us-ascii?Q?nrV+jWVgXIyGddjZmEGdMt25oFIv6vO4NcVjXNVGHJLX62J771MzsarBIkFk?=
 =?us-ascii?Q?ir2Whg5+YSFFy/tu6n3pRwxgnmepIZWcGhRXvRNAA5Jada9PEwAML7sKlqvw?=
 =?us-ascii?Q?yPDNAF2CeQ=3D=3D?=
X-Exchange-RoutingPolicyChecked: cj8BlkzVQASr+WPX/1lx0UpA+Jzqw4xnEQ+6g8ZEF6uMHAe8OEFayWTsCOmyYJJ5g1OFQGAyjAA20GGxCpinHy4Vj7fHHHxy6Rp7jWnxAEDwWsGmX6yanCYW53mO8lGG24PAKkzpWyBAi+e50JY+umiAw2DvybkQqdJKqNqmDfuGSCktsZc+b0aq5iGiThCJQsdPdVH7N0JlTrZgtH+9s1oMi7pCD0+0s+4yDfeqA1fpFPFxaFw0elyePlOAq+ESA/zHWfr6BKq24WJ2oCb/NrBdFnv2LjdYc+6va96we2uvBpF9r586YyBV603YxvblvITl2fU4fqtucD7qq5ToGQ==
X-MS-Exchange-CrossTenant-Network-Message-Id: bf5b065f-808a-4fd5-7711-08deaf5bf582
X-MS-Exchange-CrossTenant-AuthSource: PH8PR11MB8287.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 11 May 2026 12:51:03.2283 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: suGkdU1unKG9L1eEMlWghAl/hupjdzYZKqC2EauzCV4v7hPTVrsqZXCWzNDvAAC0rf0NwryssjTaC+ITVzTKNw==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: IA3PR11MB9254
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
X-Rspamd-Queue-Id: 59AAC50E3A2
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [0.19 / 15.00];
	ARC_REJECT(1.00)[signature check failed: fail, {[1] = sig:microsoft.com:reject}];
	R_MISSING_CHARSET(0.50)[];
	DMARC_POLICY_ALLOW(-0.50)[intel.com,none];
	R_DKIM_ALLOW(-0.20)[intel.com:s=Intel];
	R_SPF_ALLOW(-0.20)[+ip4:131.252.210.177:c];
	MAILLIST(-0.20)[mailman];
	MIME_GOOD(-0.10)[text/plain];
	RWL_MAILSPIKE_GOOD(-0.10)[131.252.210.177:from];
	HAS_LIST_UNSUB(-0.01)[];
	TO_DN_SOME(0.00)[];
	MIME_TRACE(0.00)[0:+];
	RCVD_TLS_LAST(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	DKIM_TRACE(0.00)[intel.com:+];
	MISSING_XM_UA(0.00)[];
	RCPT_COUNT_FIVE(0.00)[5];
	DBL_BLOCKED_OPENRESOLVER(0.00)[gabe.freedesktop.org:helo,gabe.freedesktop.org:rdns,intel.com:email,intel.com:mid,intel.com:dkim];
	FROM_NEQ_ENVFROM(0.00)[gustavo.sousa@intel.com,intel-gfx-bounces@lists.freedesktop.org];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	NEURAL_HAM(-0.00)[-0.998];
	TAGGED_RCPT(0.00)[intel-gfx];
	MID_RHS_MATCH_FROM(0.00)[];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	RCVD_COUNT_SEVEN(0.00)[9]
X-Rspamd-Action: no action

Imre Deak <imre.deak@intel.com> writes:

> On Mon, May 11, 2026 at 09:20:56AM -0300, Gustavo Sousa wrote:
>> James Xiong <james.xiong@intel.com> writes:
>> 
>> > During driver probe, DMC firmware is loaded asynchronously via a
>> > workqueue. There is a race between parse_dmc_fw() setting the payload
>> > pointer (making has_dmc_id_fw() return true) and intel_dmc_load_program()
>> > writing the firmware to hardware registers. If the probe thread calls
>> > intel_dmc_enable_pipe() -> assert_dmc_loaded() in this window via
>> > intel_modeset_setup_hw_state(), it sees parsed payload but stale HW
>> > registers, triggering a ~20% intermittent WARNING on ADL-N warm boot.
>> >
>> > v2: Fix by calling intel_dmc_wait_fw_load() in
>> >     intel_modeset_setup_hw_state() before iterating the CRTCs (Gustavo
>> >     Sousa).
>> >
>> > v3: Move intel_dmc_wait_fw_load() into intel_dmc_enable_pipe() itself
>> >     so the function is self-contained (Jani Nikula, Gustavo Sousa).
>> >
>> > Signed-off-by: James Xiong <james.xiong@intel.com>
>> 
>> +Imre
>> 
>> Perhaps this deserves a fixes tag?
>
> Since that would result in backporting the fix to -stable, it depends on
> whether enabling the pipe DMC functionality before the firmware is
> loaded is an actual functionality problem.

I think we depend on pipe DMC for the flip queue functionality, so I
suspect it could be an issue.  That said, I'm not very involved in that,
so I can say for sure.

--
Gustavo Sousa

>
>> If so, maybe it should be this one:
>> 
>> Fixes: 3af2ff0840be ("drm/i915: Enable a PIPEDMC whenever its corresponding pipe is enabled")
>> 
>> The change itself looks good to me, so
>> 
>> Reviewed-by: Gustavo Sousa <gustavo.sousa@intel.com>
>> 
>> > ---
>> >  drivers/gpu/drm/i915/display/intel_dmc.c | 7 ++++++-
>> >  1 file changed, 6 insertions(+), 1 deletion(-)
>> >
>> > diff --git a/drivers/gpu/drm/i915/display/intel_dmc.c b/drivers/gpu/drm/i915/display/intel_dmc.c
>> > index 0df4f42ba3e3..4151eae92744 100644
>> > --- a/drivers/gpu/drm/i915/display/intel_dmc.c
>> > +++ b/drivers/gpu/drm/i915/display/intel_dmc.c
>> > @@ -786,7 +786,12 @@ void intel_dmc_enable_pipe(const struct intel_crtc_state *crtc_state)
>> >  	enum pipe pipe = crtc->pipe;
>> >  	enum intel_dmc_id dmc_id = PIPE_TO_DMC_ID(pipe);
>> >  
>> > -	if (!is_valid_dmc_id(dmc_id) || !has_dmc_id_fw(display, dmc_id))
>> > +	if (!is_valid_dmc_id(dmc_id))
>> > +		return;
>> > +
>> > +	intel_dmc_wait_fw_load(display);
>> > +
>> > +	if (!has_dmc_id_fw(display, dmc_id))
>> >  		return;
>> >  
>> >  	if (!can_enable_pipedmc(crtc_state)) {
>> > -- 
>> > 2.34.1
