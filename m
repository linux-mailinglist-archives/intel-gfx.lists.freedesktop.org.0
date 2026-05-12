Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id SKuzJt8nA2qw1AEAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Tue, 12 May 2026 15:15:11 +0200
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id EF4AE520EB3
	for <lists+intel-gfx@lfdr.de>; Tue, 12 May 2026 15:15:10 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 686FE10EAC3;
	Tue, 12 May 2026 13:15:09 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="PNRXXEcm";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.17])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 078F610EA9C;
 Tue, 12 May 2026 13:15:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1778591708; x=1810127708;
 h=from:to:cc:subject:in-reply-to:references:date:
 message-id:mime-version;
 bh=5NyNzkH8GZFfWAKDOBF2c7+UA71fOzpuvBhwHoC29/k=;
 b=PNRXXEcmg/p3pGzbV+NpsFgxmuWhMVaCI/Ef/5tKJxlXHgms192eA1KX
 VX9PyaobmE41PyK6fRPl4gmZRvy88/3tEfNj6C2nBldKLVs/q+tN7BgyJ
 kYIfigD26ThFKuwd5f8hd6maRjIqLKdyxgYSiJi9d15+X4dXHIAJC9PVN
 NJjUe6Azqu8jqdv0XtdG3/K+hjz37k3lWoAeeVRw59wscoF4I/hhNDpIu
 nsUXwIaRoACbxWYtQWKW72x6K3EsKguHKappgJhNhxqlpGtNaRToJDaaT
 jL7iZdkjIxRZ8ilXxT45cD4yHVzteWvF2RqAoMR7F3QhqhV5Yp1es/61G A==;
X-CSE-ConnectionGUID: xAkmWoLpRlqg2vw36qL+BQ==
X-CSE-MsgGUID: rpdZXjAdTUStliRjSwtqnA==
X-IronPort-AV: E=McAfee;i="6800,10657,11783"; a="79482897"
X-IronPort-AV: E=Sophos;i="6.23,230,1770624000"; d="scan'208";a="79482897"
Received: from fmviesa006.fm.intel.com ([10.60.135.146])
 by orvoesa109.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 12 May 2026 06:15:08 -0700
X-CSE-ConnectionGUID: JhzfqjmZQCOqCAj2u5+c3A==
X-CSE-MsgGUID: JnVtv68USQGG8MPRk6CLMg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.23,230,1770624000"; d="scan'208";a="233297021"
Received: from orsmsx903.amr.corp.intel.com ([10.22.229.25])
 by fmviesa006.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 12 May 2026 06:15:04 -0700
Received: from ORSMSX902.amr.corp.intel.com (10.22.229.24) by
 ORSMSX903.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Tue, 12 May 2026 06:15:03 -0700
Received: from ORSEDG901.ED.cps.intel.com (10.7.248.11) by
 ORSMSX902.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37 via Frontend Transport; Tue, 12 May 2026 06:15:03 -0700
Received: from SN4PR2101CU001.outbound.protection.outlook.com (40.93.195.3) by
 edgegateway.intel.com (134.134.137.111) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Tue, 12 May 2026 06:15:03 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=d4cwEDBQOBWJC7LFDlIWoaWZKzVBjk3YivwxbI5hpjIWiWBJE978oMv7ok2Jx3yQ/guqjume+THMMyHadOy3++dHLOGHSv6caOIScuSTMtcaFY+LfyvjxsEHZK9S1/5yQB5sOT8lXPyWFXsEVBYmTiv6U+LZBRruEG/Jg24A9yaBSiTjIkp7KGOA6EzBykoQSg7nt0p2x9Ni8NPSpZJ5dEcKzVkJWoXDJ7tswQXvgJEVUyV8KeJtI+M50VZowXPKvtsAhLquh+TuIqHqXpafJjo4Kn9qKWl62zTu+3dOn1LhvWjK3+8eE08LHvcvoMNL+ojRNn6N6dZnfEqKd55tcg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=8f1XheWRpav7MJpzgLjEW41s4xDs+0Sy51ZxnBWs0rU=;
 b=cylIRn5Lo/Xj8aGZlwnlaxs2kCuy5VmeyqyflWlikUSS6BvknVoyNhP5xb86tZbbtxcJCS1GS+VZoJDDhwK5EQF6ZxYIJhDhlYDc9+reeywiUAU9oHJLIv5nxytBi50nBB1hE0QX/+JjElmITt4uSj5+FF+3i99QsC/9w6l/qSKvqo+dlOgnxc5FPixjjduLbYmpAbN+lzKB4W4cVC9Xi7CajJ6SwdmuJ0GEeOxOaUtetJpmFFoYb1bOLQn3NhkRFifLsg+9SuN6Jxu5jaeKfta1SPgx5KxcLWFNWFBIFcUaU+Pf6l/WoVuYh8O5NCbupxpc/l4m1PSRO87RPZjGgA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from PH8PR11MB8287.namprd11.prod.outlook.com (2603:10b6:510:1c7::14)
 by IA1PR11MB7680.namprd11.prod.outlook.com (2603:10b6:208:3fb::21)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9891.23; Tue, 12 May
 2026 13:14:55 +0000
Received: from PH8PR11MB8287.namprd11.prod.outlook.com
 ([fe80::a0e5:e99c:ee7b:620a]) by PH8PR11MB8287.namprd11.prod.outlook.com
 ([fe80::a0e5:e99c:ee7b:620a%5]) with mapi id 15.20.9913.009; Tue, 12 May 2026
 13:14:54 +0000
From: Gustavo Sousa <gustavo.sousa@intel.com>
To: Jani Nikula <jani.nikula@intel.com>, Matt Roper <matthew.d.roper@intel.com>
CC: <intel-gfx@lists.freedesktop.org>, <intel-xe@lists.freedesktop.org>,
 Rodrigo Vivi <rodrigo.vivi@intel.com>
Subject: Re: [PATCH v2 1/4] drm/i915/bw: Extract platform-specific parameters
In-Reply-To: <171b0f5dfd5400d72d4bddbdb793e8da8b136cbd@intel.com>
References: <20260511-separate-platform-from-diplay-ip-specific-bw-params-v2-0-e762cb8662da@intel.com>
 <20260511-separate-platform-from-diplay-ip-specific-bw-params-v2-1-e762cb8662da@intel.com>
 <20260511223847.GY2131374@mdroper-desk1.amr.corp.intel.com>
 <171b0f5dfd5400d72d4bddbdb793e8da8b136cbd@intel.com>
Date: Tue, 12 May 2026 10:14:51 -0300
Message-ID: <87fr3w3h2s.fsf@intel.com>
Content-Type: text/plain
X-ClientProxiedBy: SJ0PR03CA0226.namprd03.prod.outlook.com
 (2603:10b6:a03:39f::21) To PH8PR11MB8287.namprd11.prod.outlook.com
 (2603:10b6:510:1c7::14)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: PH8PR11MB8287:EE_|IA1PR11MB7680:EE_
X-MS-Office365-Filtering-Correlation-Id: 9a4958a8-f150-42fd-707e-08deb0287548
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
 ARA:13230040|376014|1800799024|366016|3023799003|11063799003|56012099003|22082099003|18002099003;
X-Microsoft-Antispam-Message-Info: CSM/jgk6BkP7Ms6nPTB4SHbWWBvJN2RR3KGcnImROnFRSYenVPZkghNxkmjLw8MgYGKIj7jJOHyKK39djDW+qly/cG5g41l6cfapGQ9v1mHkg5ePp+ytDugtG/ugpg6PHSSYJ3pmIjQb/dZQ5EL8HB1t2pXTsvX0kbccNBMOFX8JtEZkTI4V0xpFfpo/FtWVHdADNQMRpTF5dpNYGd7/9LKl4OInT0mH0DwXvCwxHu7H2CAXg2gWYLhP9V00vV7+oBTY97oDLJn4JEl/EYZlipImtwgoR33+UyWw6IUQz9oPmEMCJJMTm2wO+yjx/tOVkkN2nJN4sBJ69K8T7BZWYSTkIQ9TXy315g2TB4LpyQqCwKBZLbeThZ6bTv8Z6oSvKW2QuRQguyMNuKwRWVlHJ/Fzv4ulNfqHKdqYDD64wFzM3KRqKoRP66voB8Ssoxnp49hLNjmN8iI1cPfFdWDnyPz9PaqG09API4fu9pgNvUWWYRYdddEQI90Itk45UhU3Mfey9eHroZlHWG4yrZoa6HD2LnAhLa8/nbSzOi7Cxa1VL0GFOLQjETGS8NfyGpVpEItkAIX24Cmpp0eP3OsQpEyNGI/GHI7HGxtyi8ojB6oEbfKO8ryt5C1pG+1aOOdg6sDcuJbb/JdAMNz1n8+E/HnYZREv6KLKoRhuOPK5kAtf9fBZ6UiJDJUku5fOX7Wo
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:PH8PR11MB8287.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(376014)(1800799024)(366016)(3023799003)(11063799003)(56012099003)(22082099003)(18002099003);
 DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?qNOH0bhivNqbwvTBD0ce9VjTCouUEVmvwj00kGGtQE61Yck1I0ULefK2punH?=
 =?us-ascii?Q?xoLKDCkdO5YwEtiQLRXIFaUstw1z2n4t8wLeYSjaFPYYNEyKMbDdrczvqidV?=
 =?us-ascii?Q?rT6cialeQkV2DcspP/JnSabamDB/1JYyzfEWFrsaKd3k7LuC/kU2xmhyVB7Q?=
 =?us-ascii?Q?hg/KH7GycXsgXAHBnHWZyCY6o3LFK5A94UV9YCM4gG9j1DB1AQ3EEHEAFMvC?=
 =?us-ascii?Q?pUVXj8YOdmTOOQCW4or8q4nb2hNlmbhDHK5pHQ2Vo8DGEJ+aN83QgH5Nax8l?=
 =?us-ascii?Q?wmZVoA7IxF8dGr6/Khu7hVl/IUZbjCms1ulsqEx8oocLqMibjRC4LvukgX7M?=
 =?us-ascii?Q?Vu5sP1v61e2Focm3bmbSKbMUpm1zeBRvoDHOprbiVQTv7E4HSHzEcVgsjXIH?=
 =?us-ascii?Q?52hdO+7Hd+/G2OjdkOQRH1SvUGeNaj2zd7nSiqwvYALEu1dBtdS8Z0k20nLQ?=
 =?us-ascii?Q?BtIPVFjVtv8XA9awuG7amR6DTqO6fWTtuOpzWvG8R/AJvYigfoCuNKI+5TSJ?=
 =?us-ascii?Q?G0+KKjmXBhbtHX2FMYU5TZAH7+3unGeTqyuqThnoz/4OoQjpvtXoTeveIwdN?=
 =?us-ascii?Q?VA2WDyoDoVpbp5u6xc0pH3STW9agnw3mmm8oaSAgytY4o6a90m3wmX9TN79k?=
 =?us-ascii?Q?8o4HNv0kbOkkio7+rQY6UlzwQRzZekSF2JW968CfBkczlZqvQFCnnoUAkWqH?=
 =?us-ascii?Q?nK4CaM2WPfpcCZAEnn/SgTCJSX7d5T/FBqzVFgsTJC6kUc251Tba6xN1N3No?=
 =?us-ascii?Q?/we44ClSZ5qfdnCDJw575epCT38llClDuhEkWSXOEwr4FkY/cTgRXWLGS02f?=
 =?us-ascii?Q?C4SvN/QSfz5Q84vSVBpIINfNlRU5qA8tkbP4GWY4UjaNniQ74/rssijLh/f/?=
 =?us-ascii?Q?fHlM7l259EnpRnc69SbismaX9uwqfhLwyNMgvSlqHlSy7nR5TwgWIGVrx31y?=
 =?us-ascii?Q?60s7ENFMMfdcf0ZHozZRuEkSJkw4XZuG0JtYaYNjDI5PNqw5qyg38MS6IvHb?=
 =?us-ascii?Q?C4xvDa6WqVOZC5hVT/KrWVpXOUgrQ1KU9gbxq7Lu7qROpHe+yiq+VhVvjUXq?=
 =?us-ascii?Q?6vkN+8CmqT5TMbVdHNP4zeCUS2JLz0PQ5H8Nsa0zcRltvCYitbdJFMr4kbwk?=
 =?us-ascii?Q?4a1+vUuKSaW/NvsJgfIXXRwWsMWn6lnBwzgOYhUetL88xFkILgwQ4JtgA+Cm?=
 =?us-ascii?Q?pxSvIq26xalWcTt4l/Rb+eriXMluPStNGWbM7VoZNsTQojcfbAmLf6+bzbhX?=
 =?us-ascii?Q?bl7iiO65oT6YOoAg8DGigjr6JdC5ILZaEeP2vzeVuyeAEGIyV+mP6nT5N28u?=
 =?us-ascii?Q?UJeLCl1d02f4kCKEI3dYgnPa2x5q8uIi7ZLkUg/HFlICM4xhTB4Jp8A823bD?=
 =?us-ascii?Q?AG3PpUdQwy5m69dlwBwsz0/ROtj+gVStXdPOlwY7lODSz7IVQ2TVFn5lethO?=
 =?us-ascii?Q?rwnoCirbVonl8hY9Dfw+r4g+kMwofJ6EDgGlV7/4WzG9DQvhoIyERAFwmiTb?=
 =?us-ascii?Q?ps9I7hWdczxsGu07VLh5WefQn7213SprBxIi4CCaJwpAMFRXxB94eYO/AByE?=
 =?us-ascii?Q?wrQrDuAVLiM8vDRR4/+mT2WMvJrtDZbBagf60/BHcRpTvQTHXxQElPWZQ8st?=
 =?us-ascii?Q?dYv5mLajnG375nQImK5N0Hmki6zBypdIDcmczpuBXCCYE4bTkfSd/A2KzdBo?=
 =?us-ascii?Q?ig0b/QEqveOIGnEJLn0Ys3EkZDSDnMxlXBYK2Od+IZhbg8RwUfJdVRNEV0Zq?=
 =?us-ascii?Q?8c1lCaZ2fg=3D=3D?=
X-Exchange-RoutingPolicyChecked: hkE/GXJAzgjb4U+vXzlV/EtT7YZ5SpVdraVQPmuu8CwO3RjVAJMqSvvyNEMWDOI/zZ3q6uPG2PsZ3maAjhCV1IEXHb6TRdKdjBD1VK4QYPS78z/m5BYOEDKgGPdnqtVKu+x1A+T9x4/iXljYACguBDcPBIRlEvJeQ7JwILKODzSrcMdKD+WrYJQC9GVQ9l2IUwxuLI5wKQVGKkHFCqV19aut40Ep6i9cnxogC+rWUOjtl+A9jwiJTYGoq04cvSx1iRjZlEma5rnta3lent5Sc3jZzUeevCaSGtxxLRDnqBPq/HeJJ15DvAi7Stfc9e5BryJNY+fX7sqkIVdrcT3RIw==
X-MS-Exchange-CrossTenant-Network-Message-Id: 9a4958a8-f150-42fd-707e-08deb0287548
X-MS-Exchange-CrossTenant-AuthSource: PH8PR11MB8287.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 12 May 2026 13:14:54.8608 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: DmsgWG/eApNphuVJke4ZARMt9HHyjfrHD1dhKkhJ8OUgJzgLbhZSswuvc62e165lAWDBfpiMiEmFt3/Xl2h5qg==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: IA1PR11MB7680
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
X-Rspamd-Queue-Id: EF4AE520EB3
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

Jani Nikula <jani.nikula@intel.com> writes:

> On Mon, 11 May 2026, Matt Roper <matthew.d.roper@intel.com> wrote:
>> On Mon, May 11, 2026 at 01:30:56PM -0300, Gustavo Sousa wrote:
>>> We got confirmation from the hardware team that the bandwidth parameters
>>> deprogbwlimit and derating are platform-specific and not tied to the
>>> display IP.  As such, let's make sure that we use platform checks for
>>> those.
>>> 
>>> The rest of the members of struct intel_sa_info are tied to the display
>>> IP and we will deal with them as a follow-up.
>>> 
>>> v2:
>>>   - Use good old if-ladder instead of weird-looking pattern "assign ret,
>>>     check platform, then return ret". (Jani, Matt)
>>>   - Have a single call site for get_platform_bw_params() and pass the
>>>     result as parameter to the *_get_bw_info() functions. (Jani)
>>>   - Avoid using "plat" as abbreviation for "platform". (Jani)
>>>   - s/_plat_bw_params/_bw_params/, since all of the instances are
>>>     prefixed with platform names. (Jani)
>>>   - s/struct intel_platform_bw_params/struct intel_soc_bw_params/.
>>>     (Matt)
>>>   - Do not return a default value; prefer to return NULL and
>>>     intentionally cause a NULL pointer dereference if a platform is
>>>     missing. (Gustavo)
>>> 
>>> Cc: Jani Nikula <jani.nikula@intel.com>
>>> Cc: Matt Roper <matthew.d.roper@intel.com>
>>> Cc: Rodrigo Vivi <rodrigo.vivi@intel.com>
>>> Signed-off-by: Gustavo Sousa <gustavo.sousa@intel.com>
>>> ---
>>>  drivers/gpu/drm/i915/display/intel_bw.c | 161 ++++++++++++++++++++++----------
>>>  1 file changed, 113 insertions(+), 48 deletions(-)
>>> 
>>> diff --git a/drivers/gpu/drm/i915/display/intel_bw.c b/drivers/gpu/drm/i915/display/intel_bw.c
>>> index 9c3a9bbb49f6..cf6756b8ae52 100644
>>> --- a/drivers/gpu/drm/i915/display/intel_bw.c
>>> +++ b/drivers/gpu/drm/i915/display/intel_bw.c
>>> @@ -372,81 +372,147 @@ static int icl_sagv_max_dclk(const struct intel_qgv_info *qi)
>>>  	return dclk;
>>>  }
>>>  
>>> +struct intel_soc_bw_params {
>>> +	u8 deprogbwlimit;
>>> +	u8 derating;
>>> +};
>>> +
>>> +static const struct intel_soc_bw_params icl_bw_params = {
>>> +	.deprogbwlimit = 25,
>>> +	.derating = 10,
>>> +};
>>> +
>>> +static const struct intel_soc_bw_params tgl_bw_params = {
>>> +	.deprogbwlimit = 34,
>>> +	.derating = 10,
>>> +};
>>> +
>>> +static const struct intel_soc_bw_params rkl_bw_params = {
>>> +	.deprogbwlimit = 20,
>>> +	.derating = 10,
>>> +};
>>> +
>>> +static const struct intel_soc_bw_params adl_s_bw_params = {
>>> +	.deprogbwlimit = 38,
>>> +	.derating = 10,
>>> +};
>>> +
>>> +static const struct intel_soc_bw_params adl_p_bw_params = {
>>> +	.deprogbwlimit = 38,
>>> +	.derating = 20,
>>> +};
>>> +
>>> +static const struct intel_soc_bw_params bmg_bw_params = {
>>> +	.deprogbwlimit = 53,
>>> +	.derating = 30,
>>> +};
>>> +
>>> +static const struct intel_soc_bw_params bmg_ecc_bw_params = {
>>> +	.deprogbwlimit = 53,
>>> +	.derating = 45,
>>> +};
>>> +
>>> +static const struct intel_soc_bw_params ptl_bw_params = {
>>> +	.deprogbwlimit = 65,
>>> +	.derating = 10,
>>> +};
>>> +
>>> +static const struct intel_soc_bw_params wcl_bw_params = {
>>> +	.deprogbwlimit = 22,
>>> +	.derating = 10,
>>> +};
>>> +
>>> +static const struct intel_soc_bw_params *get_soc_bw_params(struct intel_display *display)
>>> +{
>>> +	if (display->platform.dgfx) {
>>> +		if (display->platform.dg1) {
>>> +			return &tgl_bw_params;
>>> +		} else if (display->platform.battlemage) {
>>> +			const struct dram_info *dram_info = intel_dram_info(display);
>>> +
>>> +			if (dram_info->type == INTEL_DRAM_GDDR_ECC)
>>> +				return &bmg_ecc_bw_params;
>>> +			else
>>> +				return &bmg_bw_params;
>>> +		}
>>> +	} else {
>>> +		if (display->platform.icelake ||
>>> +		    display->platform.jasperlake ||
>>> +		    display->platform.elkhartlake) {
>>> +			return &icl_bw_params;
>>> +		} else if (display->platform.tigerlake) {
>>> +			return &tgl_bw_params;
>>> +		} else if (display->platform.rocketlake) {
>>> +			return &rkl_bw_params;
>>> +		} else if (display->platform.alderlake_s) {
>>> +			return &adl_s_bw_params;
>>> +		} else if (display->platform.alderlake_p) {
>>> +			return &adl_p_bw_params;
>>> +		} else if (display->platform.meteorlake ||
>>> +			   display->platform.lunarlake) {
>>> +			return &adl_s_bw_params;
>>
>> Any reason not to combine this with the ADL-S branch of the if/else
>> ladder?
>>
>>> +		} else if (display->platform.pantherlake ||
>>> +			   display->platform.novalake) {
>>> +			if (display->platform.pantherlake_wildcatlake)
>>> +				return &wcl_bw_params;
>>
>> Can we just flatten this out rather than nesting?
>>
>>         } else if (display->platform.pantherlake_wildcatlake) {
>>                 return &wcl_bw_params;
>>         } else if (display->platform.pantherlake ||
>>                    display->platform.novalake) {
>>                 return &ptl_bw_params;
>>         }
>>
>>
>>> +			else
>>> +				return &ptl_bw_params;
>>> +		}
>>> +	}
>>> +
>>> +	drm_WARN(display->drm, 1, "Platform-specific bandwidth parameters not found!\n");
>>
>> I think 
>>
>>   i915_driver_hw_probe -> intel_bw_init_hw -> get_soc_bw_params
>>
>> is called unconditionally on all platforms for i915, not just the recent
>> ones where we started caring about memory bandwidth, so I'm not sure if
>> this WARN is appropriate since we'll always hit it on the pre-gen11
>> stuff.
>>
>> Since the values populated here only get used when paired with display
>> IP version 11 or later, we should probably add that as a condition since
>> those are the only cases where it matters that we found a set of SoC
>> parameters.
>
> In general, we should stop calling low level display init functions from
> i915 core code. Can we move the init call to some display init function?

I guess we could try to move the calls to intel_dram_detect() and
intel_bw_init_hw() into intel_display_driver_probe_noirq()?

--
Gustavo Sousa

>
> That said, it'll still get called on all sorts of platforms.
>
> BR,
> Jani.
>
>
>>
>>
>> Matt
>>
>>> +
>>> +	return NULL;
>>> +}
>>> +
>>>  struct intel_sa_info {
>>>  	u16 displayrtids;
>>> -	u8 deburst, deprogbwlimit, derating;
>>> +	u8 deburst;
>>>  };
>>>  
>>>  static const struct intel_sa_info icl_sa_info = {
>>>  	.deburst = 8,
>>> -	.deprogbwlimit = 25, /* GB/s */
>>>  	.displayrtids = 128,
>>> -	.derating = 10,
>>>  };
>>>  
>>>  static const struct intel_sa_info tgl_sa_info = {
>>>  	.deburst = 16,
>>> -	.deprogbwlimit = 34, /* GB/s */
>>>  	.displayrtids = 256,
>>> -	.derating = 10,
>>>  };
>>>  
>>>  static const struct intel_sa_info rkl_sa_info = {
>>>  	.deburst = 8,
>>> -	.deprogbwlimit = 20, /* GB/s */
>>>  	.displayrtids = 128,
>>> -	.derating = 10,
>>>  };
>>>  
>>>  static const struct intel_sa_info adls_sa_info = {
>>>  	.deburst = 16,
>>> -	.deprogbwlimit = 38, /* GB/s */
>>>  	.displayrtids = 256,
>>> -	.derating = 10,
>>>  };
>>>  
>>>  static const struct intel_sa_info adlp_sa_info = {
>>>  	.deburst = 16,
>>> -	.deprogbwlimit = 38, /* GB/s */
>>>  	.displayrtids = 256,
>>> -	.derating = 20,
>>>  };
>>>  
>>>  static const struct intel_sa_info mtl_sa_info = {
>>>  	.deburst = 32,
>>> -	.deprogbwlimit = 38, /* GB/s */
>>>  	.displayrtids = 256,
>>> -	.derating = 10,
>>> -};
>>> -
>>> -static const struct intel_sa_info xe2_hpd_sa_info = {
>>> -	.derating = 30,
>>> -	.deprogbwlimit = 53,
>>> -	/* Other values not used by simplified algorithm */
>>> -};
>>> -
>>> -static const struct intel_sa_info xe2_hpd_ecc_sa_info = {
>>> -	.derating = 45,
>>> -	.deprogbwlimit = 53,
>>> -	/* Other values not used by simplified algorithm */
>>>  };
>>>  
>>>  static const struct intel_sa_info xe3lpd_sa_info = {
>>>  	.deburst = 32,
>>> -	.deprogbwlimit = 65, /* GB/s */
>>>  	.displayrtids = 256,
>>> -	.derating = 10,
>>>  };
>>>  
>>>  static const struct intel_sa_info xe3lpd_3002_sa_info = {
>>>  	.deburst = 32,
>>> -	.deprogbwlimit = 22, /* GB/s */
>>>  	.displayrtids = 256,
>>> -	.derating = 10,
>>>  };
>>>  
>>>  static int icl_get_bw_info(struct intel_display *display,
>>>  			   const struct dram_info *dram_info,
>>> +			   const struct intel_soc_bw_params *soc_bw_params,
>>>  			   const struct intel_sa_info *sa)
>>>  {
>>>  	struct intel_qgv_info qi = {};
>>> @@ -466,7 +532,7 @@ static int icl_get_bw_info(struct intel_display *display,
>>>  	}
>>>  
>>>  	dclk_max = icl_sagv_max_dclk(&qi);
>>> -	maxdebw = min(sa->deprogbwlimit * 1000, dclk_max * 16 * 6 / 10);
>>> +	maxdebw = min(soc_bw_params->deprogbwlimit * 1000, dclk_max * 16 * 6 / 10);
>>>  	ipqdepth = min(ipqdepthpch, sa->displayrtids / num_channels);
>>>  	qi.deinterleave = DIV_ROUND_UP(num_channels, is_y_tile ? 4 : 2);
>>>  
>>> @@ -496,7 +562,7 @@ static int icl_get_bw_info(struct intel_display *display,
>>>  			bw = DIV_ROUND_UP(sp->dclk * clpchgroup * 32 * num_channels, ct);
>>>  
>>>  			bi->deratedbw[j] = min(maxdebw,
>>> -					       bw * (100 - sa->derating) / 100);
>>> +					       bw * (100 - soc_bw_params->derating) / 100);
>>>  
>>>  			drm_dbg_kms(display->drm,
>>>  				    "BW%d / QGV %d: num_planes=%d deratedbw=%u\n",
>>> @@ -518,6 +584,7 @@ static int icl_get_bw_info(struct intel_display *display,
>>>  
>>>  static int tgl_get_bw_info(struct intel_display *display,
>>>  			   const struct dram_info *dram_info,
>>> +			   const struct intel_soc_bw_params *soc_bw_params,
>>>  			   const struct intel_sa_info *sa)
>>>  {
>>>  	struct intel_qgv_info qi = {};
>>> @@ -554,7 +621,7 @@ static int tgl_get_bw_info(struct intel_display *display,
>>>  	dclk_max = icl_sagv_max_dclk(&qi);
>>>  
>>>  	peakbw = num_channels * DIV_ROUND_UP(qi.channel_width, 8) * dclk_max;
>>> -	maxdebw = min(sa->deprogbwlimit * 1000, peakbw * DEPROGBWPCLIMIT / 100);
>>> +	maxdebw = min(soc_bw_params->deprogbwlimit * 1000, peakbw * DEPROGBWPCLIMIT / 100);
>>>  
>>>  	ipqdepth = min(ipqdepthpch, sa->displayrtids / num_channels);
>>>  	/*
>>> @@ -599,7 +666,7 @@ static int tgl_get_bw_info(struct intel_display *display,
>>>  			bw = DIV_ROUND_UP(sp->dclk * clpchgroup * 32 * num_channels, ct);
>>>  
>>>  			bi->deratedbw[j] = min(maxdebw,
>>> -					       bw * (100 - sa->derating) / 100);
>>> +					       bw * (100 - soc_bw_params->derating) / 100);
>>>  			bi->peakbw[j] = DIV_ROUND_CLOSEST(sp->dclk *
>>>  							  num_channels *
>>>  							  qi.channel_width, 8);
>>> @@ -661,7 +728,7 @@ static void dg2_get_bw_info(struct intel_display *display)
>>>  
>>>  static int xe2_hpd_get_bw_info(struct intel_display *display,
>>>  			       const struct dram_info *dram_info,
>>> -			       const struct intel_sa_info *sa)
>>> +			       const struct intel_soc_bw_params *soc_bw_params)
>>>  {
>>>  	struct intel_qgv_info qi = {};
>>>  	int num_channels = dram_info->num_channels;
>>> @@ -676,14 +743,14 @@ static int xe2_hpd_get_bw_info(struct intel_display *display,
>>>  	}
>>>  
>>>  	peakbw = num_channels * qi.channel_width / 8 * icl_sagv_max_dclk(&qi);
>>> -	maxdebw = min(sa->deprogbwlimit * 1000, peakbw * DEPROGBWPCLIMIT / 10);
>>> +	maxdebw = min(soc_bw_params->deprogbwlimit * 1000, peakbw * DEPROGBWPCLIMIT / 10);
>>>  
>>>  	for (i = 0; i < qi.num_points; i++) {
>>>  		const struct intel_qgv_point *point = &qi.points[i];
>>>  		int bw = num_channels * (qi.channel_width / 8) * point->dclk;
>>>  
>>>  		display->bw.max[0].deratedbw[i] =
>>> -			min(maxdebw, (100 - sa->derating) * bw / 100);
>>> +			min(maxdebw, (100 - soc_bw_params->derating) * bw / 100);
>>>  		display->bw.max[0].peakbw[i] = bw;
>>>  
>>>  		drm_dbg_kms(display->drm, "QGV %d: deratedbw=%u peakbw: %u\n",
>>> @@ -792,6 +859,7 @@ static unsigned int icl_qgv_bw(struct intel_display *display,
>>>  void intel_bw_init_hw(struct intel_display *display)
>>>  {
>>>  	const struct dram_info *dram_info = intel_dram_info(display);
>>> +	const struct intel_soc_bw_params *soc_bw_params = get_soc_bw_params(display);
>>>  
>>>  	if (!HAS_DISPLAY(display))
>>>  		return;
>>> @@ -807,28 +875,25 @@ void intel_bw_init_hw(struct intel_display *display)
>>>  
>>>  	if (DISPLAY_VER(display) >= 30) {
>>>  		if (DISPLAY_VERx100(display) == 3002)
>>> -			tgl_get_bw_info(display, dram_info, &xe3lpd_3002_sa_info);
>>> +			tgl_get_bw_info(display, dram_info, soc_bw_params, &xe3lpd_3002_sa_info);
>>>  		else
>>> -			tgl_get_bw_info(display, dram_info, &xe3lpd_sa_info);
>>> +			tgl_get_bw_info(display, dram_info, soc_bw_params, &xe3lpd_sa_info);
>>>  	} else if (DISPLAY_VERx100(display) >= 1401 && display->platform.dgfx) {
>>> -		if (dram_info->type == INTEL_DRAM_GDDR_ECC)
>>> -			xe2_hpd_get_bw_info(display, dram_info, &xe2_hpd_ecc_sa_info);
>>> -		else
>>> -			xe2_hpd_get_bw_info(display, dram_info, &xe2_hpd_sa_info);
>>> +		xe2_hpd_get_bw_info(display, dram_info, soc_bw_params);
>>>  	} else if (DISPLAY_VER(display) >= 14) {
>>> -		tgl_get_bw_info(display, dram_info, &mtl_sa_info);
>>> +		tgl_get_bw_info(display, dram_info, soc_bw_params, &mtl_sa_info);
>>>  	} else if (display->platform.dg2) {
>>>  		dg2_get_bw_info(display);
>>>  	} else if (display->platform.alderlake_p) {
>>> -		tgl_get_bw_info(display, dram_info, &adlp_sa_info);
>>> +		tgl_get_bw_info(display, dram_info, soc_bw_params, &adlp_sa_info);
>>>  	} else if (display->platform.alderlake_s) {
>>> -		tgl_get_bw_info(display, dram_info, &adls_sa_info);
>>> +		tgl_get_bw_info(display, dram_info, soc_bw_params, &adls_sa_info);
>>>  	} else if (display->platform.rocketlake) {
>>> -		tgl_get_bw_info(display, dram_info, &rkl_sa_info);
>>> +		tgl_get_bw_info(display, dram_info, soc_bw_params, &rkl_sa_info);
>>>  	} else if (DISPLAY_VER(display) == 12) {
>>> -		tgl_get_bw_info(display, dram_info, &tgl_sa_info);
>>> +		tgl_get_bw_info(display, dram_info, soc_bw_params, &tgl_sa_info);
>>>  	} else if (DISPLAY_VER(display) == 11) {
>>> -		icl_get_bw_info(display, dram_info, &icl_sa_info);
>>> +		icl_get_bw_info(display, dram_info, soc_bw_params, &icl_sa_info);
>>>  	}
>>>  }
>>>  
>>> 
>>> -- 
>>> 2.53.0
>>> 
>
> -- 
> Jani Nikula, Intel
