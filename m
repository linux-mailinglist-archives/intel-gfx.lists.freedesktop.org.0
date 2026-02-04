Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id 8J06HoIsg2kxigMAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Wed, 04 Feb 2026 12:24:50 +0100
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id CE1E3E50A6
	for <lists+intel-gfx@lfdr.de>; Wed, 04 Feb 2026 12:24:49 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id C8D3F10E5D6;
	Wed,  4 Feb 2026 11:24:47 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=fail reason="signature verification failed" (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="JZ9CzEyv";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.16])
 by gabe.freedesktop.org (Postfix) with ESMTPS id C57A710E5D3;
 Wed,  4 Feb 2026 11:24:45 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1770204286; x=1801740286;
 h=date:from:to:cc:subject:message-id:reply-to:references:
 in-reply-to:mime-version;
 bh=oLDWoM9hWzTNoYbcar/V+RLZpnK//P+FS9QsDCJuRMs=;
 b=JZ9CzEyvchfyBzCJhLYsMnLNWcb/onabeCPOXYtL0SUkOIQ01NpPRZoz
 nkx0ZO9D0H9XBRmYVrQpfdgbSYFzRGzH7/vh+G4wctocRYGMgOKN8JKL3
 BN9//T6c+vAC2Au2+fqoj1zJE3dYWoVmOcF2QiTUFeahHrLKGi9G8tKwD
 9FtDjXF2s+YiE92tij7nWk57Cnh1Sh57cxZbjOn/hk/QxmAlzh9lCusO+
 TQAVyIurNVkQYTYA5+E9kaPpwOA1qRNw87DSL+Npb7rgBtX4L3/iZEwp8
 QEecryoV/CWdxzb5wmzTMRemVlqhbUeD+Xg09fIaqSlmoodJkrIu4iAsT w==;
X-CSE-ConnectionGUID: CgU4fgOFRX61x9bCVepwZg==
X-CSE-MsgGUID: uGvseDS4TdWh+xKKEboSBA==
X-IronPort-AV: E=McAfee;i="6800,10657,11691"; a="71551539"
X-IronPort-AV: E=Sophos;i="6.21,272,1763452800"; d="scan'208";a="71551539"
Received: from orviesa008.jf.intel.com ([10.64.159.148])
 by orvoesa108.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 04 Feb 2026 03:24:45 -0800
X-CSE-ConnectionGUID: WoJblExNQjK5MzFmcn6neQ==
X-CSE-MsgGUID: Df7JMkrgRfm9vG0yheMThQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.21,272,1763452800"; d="scan'208";a="210187724"
Received: from orsmsx901.amr.corp.intel.com ([10.22.229.23])
 by orviesa008.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 04 Feb 2026 03:24:46 -0800
Received: from ORSMSX902.amr.corp.intel.com (10.22.229.24) by
 ORSMSX901.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.35; Wed, 4 Feb 2026 03:24:44 -0800
Received: from ORSEDG901.ED.cps.intel.com (10.7.248.11) by
 ORSMSX902.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.35 via Frontend Transport; Wed, 4 Feb 2026 03:24:44 -0800
Received: from BL0PR03CU003.outbound.protection.outlook.com (52.101.53.30) by
 edgegateway.intel.com (134.134.137.111) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.35; Wed, 4 Feb 2026 03:24:44 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=ikQQTGlb5GTh7X+9F5f3N+D+MJYTk73GakexygewW9kDUgTtA4PPd5J9Jfuht7Rzbw9fx1tH5Rw8179aDwirkk7DUZiGdwWY84fpUJjGlJZ6607Uuf9R4HhPsKHJdYIT9uCDZkTihRzS+u3AhV2xI9XqOraBXWvlpCU2ywoR3jtaaKmNWLxKKsr1wc7jrGTpKtLs7Gg9SpjvVTETC02MtAnypt274gR+FboN1c/oqR4IjLDGeyK13gTstt1JNf8WZuphhmmfhFvOOL6JgVsN0P4BNWueTcZMXIi8frpv/cM1aOWtsvoE49llxUL8Ny6gpJuV1px2seZtnDjBYFrkyA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=MzLBvpZqPu4SfW5ekNqWEsJT4qzKmUifVtPOEa8Puko=;
 b=jLtCy0UawBve+MfmAZpHAJtRKoKo5uoGTJeepwb3bmSJL/MXvF+ntvMhFu+syDD8uGrkb8Se4cSQdROTfbtZDP4OChFb/idmFXfVSCi5+ZlElZFz2KXwhsvAiUSZCBuztMr0WhDRPbgxoL/rhAzly+fDVuKc5eGocSoUVDzUIoFCmaB7ghkw3TVj8TvMAfENr5MNIbjdqMhuJ52hs992w/iBW07iPgn+v9HXHkA8NPLUKViCy7wB9mSfdKalnTnp0bwLbEoYEXWXzFJW1WWm6PMeBG3YN8uHJ3q8KAhRbXtFYrbYfLUTJc3Jw17NKnvNno4hIX7zFe5iiFyxzB6Aqw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from SJ0PR11MB4845.namprd11.prod.outlook.com (2603:10b6:a03:2d1::10)
 by DM4PR11MB6552.namprd11.prod.outlook.com (2603:10b6:8:8f::7) with
 Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.9587.12; Wed, 4 Feb 2026 11:24:42 +0000
Received: from SJ0PR11MB4845.namprd11.prod.outlook.com
 ([fe80::9ca5:4d1d:db45:f523]) by SJ0PR11MB4845.namprd11.prod.outlook.com
 ([fe80::9ca5:4d1d:db45:f523%4]) with mapi id 15.20.9587.010; Wed, 4 Feb 2026
 11:24:42 +0000
Date: Wed, 4 Feb 2026 13:24:37 +0200
From: Imre Deak <imre.deak@intel.com>
To: Suraj Kandpal <suraj.kandpal@intel.com>
CC: <intel-xe@lists.freedesktop.org>, <intel-gfx@lists.freedesktop.org>,
 <ankit.k.nautiyal@intel.com>
Subject: Re: [PATCH v2] drm/i915/ltphy: Return true for TBT scenario during
 lt_phy_state compare
Message-ID: <aYMsdcUWpvF_DXgQ@ideak-desk.lan>
References: <20260203024141.1549517-1-suraj.kandpal@intel.com>
 <20260204023247.1560196-1-suraj.kandpal@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Disposition: inline
In-Reply-To: <20260204023247.1560196-1-suraj.kandpal@intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - c/o Alberga Business Park, 6
 krs Bertel Jungin Aukio 5, 02600 Espoo, Finland
X-ClientProxiedBy: GVX0EPF0005F72C.SWEP280.PROD.OUTLOOK.COM
 (2603:10a6:158:400::2ce) To SJ0PR11MB4845.namprd11.prod.outlook.com
 (2603:10b6:a03:2d1::10)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: SJ0PR11MB4845:EE_|DM4PR11MB6552:EE_
X-MS-Office365-Filtering-Correlation-Id: 6a725a5d-644d-4125-c92a-08de63dffded
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|366016|1800799024|376014;
X-Microsoft-Antispam-Message-Info: =?us-ascii?Q?7TN5ko6klGaGq8++LK0XLJ+eW0d10fFqpW7TqvmH6PKHTT+4bQid3F4Ylfcj?=
 =?us-ascii?Q?tNYStxCOmWLzKuwptn3+NELeCfwdXwKIlc0kRRq4SHy4AP1LWCTnrqlpTg2g?=
 =?us-ascii?Q?F4fimNuvNAkj+2s2oYjogL6hw2x0367cgsnZHqOCs1BVS1tPYxYQInc0FgH+?=
 =?us-ascii?Q?gpO2CjXDaEfxgXeYTwDpo+EBF/PwUWaDu2phnA0gWkd/tSzE6kL0kJ/gbFR8?=
 =?us-ascii?Q?dL905PdbmA8vOOumWKNQjeyiqkVCgIRI9gDStv0TgoL+M5gXLTw2T6rd8SZc?=
 =?us-ascii?Q?VYxiUkPdWcXlD58T0PMJ0KO+Vzx1oOAm14CoB92PES9/+w+k+kwPhowxg0bx?=
 =?us-ascii?Q?KfjW2+3RKGztvEc7T3F6+YCkn7DXRDATUZz36jwh3LB17ipU2T2RxT3z1Pk+?=
 =?us-ascii?Q?2tbyzkSqNEuG4GN7DJzkJXSAzE96/pnFNHibliU1cc61/NF3vilvCC1TL3cR?=
 =?us-ascii?Q?3ppmihIEA5e4uaheslzG9cZwYdU0kJM/LP0kmFvncIjyGVU4+BrnaAQnH2sI?=
 =?us-ascii?Q?s3UDYIhYM5+jXLSPvxGYRnr/3DB8w1A4yrewYELaZsP0ncoIp17qlRUf+3Mp?=
 =?us-ascii?Q?SophS+8J31YpDjS+GA790DsiPMJRaoBgBjyMo4kSoluTdgXt89Mv0IQSNhdV?=
 =?us-ascii?Q?Jsv8U8FuOdEFpMXXt8GlOm3PKx+KBOsll3y5T4f7SylYHoayb03mFFZtJTYi?=
 =?us-ascii?Q?j08TFmAF27IIpgfovD14UsWwTRV4gNRNNya/gy4HMlp1H5RTLkqdAOYOYh/v?=
 =?us-ascii?Q?FqvhL5zxZs094XNcgeVTZCcubKeA7jds+RJXX/MYQwmW298l/FbxLvMO1Zhw?=
 =?us-ascii?Q?GK8Ikwh74LUM21LKamtzAvC12BR+tAaQiwgKp1CXYV38GenPIMnCg6mc7f3a?=
 =?us-ascii?Q?q9oGBhJd4gnpvqJQT6lJfh/8JJ4ib0k4bg1eWbAJb6DSfBb17Je06oX9HJFJ?=
 =?us-ascii?Q?LiVOzDusoCLyADCAe/jOxfeot2gICwftTuH+RJ+MsVxRAMF0QA2xa0fWVKsP?=
 =?us-ascii?Q?cBexcUDVMCLfZ6f092mNjW1wV4g3yXaeG9rxlzD4TLgfIv3/kCrlB5PaSDEA?=
 =?us-ascii?Q?YJaytHMcWS8YSm9alB3PaRNE0GOHKX3AWC/GFvvnbPvSEAoPBK1VNZ/U2kZM?=
 =?us-ascii?Q?rg9jQNcLFi5ht+zfJGhg7TmqW9zvgurMUeQv0xjXwIQL8Tcb7saWtk6LfAyF?=
 =?us-ascii?Q?DANxcqtwxPkGJuyIRX8I6f3y2uhKh8EmcRFXiUc2PBC/3DdYfj9dUOVI/Qnt?=
 =?us-ascii?Q?C61ReTCHrjT0mucfTbumNufxaUcJDRL/RJBeVX4Ia6GKfzivtX0XtDjdYO44?=
 =?us-ascii?Q?H9Q9/iRCEfsroTNhy5vmSzp1Qkx8yu5KwNqNgH06I6bGf726KQPNeRV9lXvl?=
 =?us-ascii?Q?rGAwt8Z4KW2sOv5DDnHCDjyxffU131w2xCmipDS/12o3b9B0ESAhzHtzvbHq?=
 =?us-ascii?Q?jw14DzYOyTjPGmhhYqeNT5safj/YRGYAB3PPsGHO1oKLk3qAGF5J4RqkX8JO?=
 =?us-ascii?Q?se6UIjViRcMPh3FrFLmM7R3pFhr/zMxawGcOxOkPW3nlgVzidYizFlbzsibd?=
 =?us-ascii?Q?0grh1/mQL6aQu9iWBFA=3D?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:SJ0PR11MB4845.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(366016)(1800799024)(376014); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?dDoBBMv1uf5ETu2F3D0fDd0AL7L6aRhjhTVrtqx4QeaHw756fuKLuzJ5hki7?=
 =?us-ascii?Q?7jAegMfLW3VCnfg82Tgw5dggQhb1StD7dbTdPhCzgN+Pb238rZhCzo7zBSxO?=
 =?us-ascii?Q?2VkW4+T6v/yV5KjvR6pmIUN8FbehlVhao0dj0whG6K1AZWSJnZJtLGFW0rcY?=
 =?us-ascii?Q?cALem1Wcq7Jnq1OxeIqil6Fl+CCbTvAjQh5f1sKnJYKCAxjcaxfkKtaQahgB?=
 =?us-ascii?Q?IqDb4EuyJ61TwzO9ZtwdUW0WzN4wNgpqGSnUEZ6Z53E5/ju54e6dlzjQ4Bz1?=
 =?us-ascii?Q?XEhNKjs3vctirHlr3dQugEPV+H7r531vRGKXl5E0NELnSzaA6evlD5b3bRGo?=
 =?us-ascii?Q?xhKSdwEv18FQ++gLEExT0Yx+QYsIH9TD2RLFtsN+KjwfrKw337KGvHxhDMOA?=
 =?us-ascii?Q?aMaylWbWrmzMHBJxxQ0eeyta4nlKkku6sPFLb1mR5HEtTo4tUODM40qQPhKg?=
 =?us-ascii?Q?mnyy3svf819bTV3YrdANocepXKhHp8q/JbEGCiYUwhZxTKOyY9cOUNv7NCR1?=
 =?us-ascii?Q?PxukbIunY3pzWU7QkKCr80GdOsCEfADQ4JgLMjO5R6iPBQQ3ua+SiUsbX9oI?=
 =?us-ascii?Q?bOmU9A0aPCU0cRmx+U511KXSAcUWc854qNjmeYghL7onX0mZtAYNVzHI/LYd?=
 =?us-ascii?Q?cAKjQ8TxpdFlipkAAUp7Vl2B4cZ+sUuaYkEaqH48Zyz8f8c8oktgw3xtP6Bg?=
 =?us-ascii?Q?dVWQ9GgRhtOWC26MAId1REG/sn5WhRDdnGxFtIpKLlooAsileCPwetwSzmTW?=
 =?us-ascii?Q?mSv/ICeQfIrLoFuhy62L0qXo77DvkIYFbK105QzWCI/kcYUZGAenxOITF78A?=
 =?us-ascii?Q?9rdBY/FbYEyEjoDnjCxeEkKrtRhfcwR3+2nHbcCTT1ec1e2PDGdhfOFkral7?=
 =?us-ascii?Q?46i3LibEfu0RBT92llbXbLKuVggM2o2VPXOD6cTRaEroK9kneGnMaxnij7gJ?=
 =?us-ascii?Q?7bKZlhcQi/y+oMm9GgBzz70wMQ4A0bsLUNltMkoi0WL+eC1cPT3s6UTMgzUC?=
 =?us-ascii?Q?C5wlYR+e9zZLTQRxR7cbGf6CbcWZG+MiOFu2/J+Slpe4AC5HbZPQ0FeQUH8M?=
 =?us-ascii?Q?oWMu6E3fy050/+/mk3B5qygCsb9mNNX40R+luByFN6hcsPDnboZ4oCDOPIOK?=
 =?us-ascii?Q?Nt9ssSaO8y4xK7KxRRHLlYqkBGC9TVt6BiXStUpPVJHP9aeFFv2G5IoLbfkN?=
 =?us-ascii?Q?Ph/7y165xLjz9DmYOT+D7DLk54JbO91DL7PoEhEqfx7ghvziQKNWlM8f9YSc?=
 =?us-ascii?Q?MxyTUxtRXbY5MeferjAK+brSPX03czSSkR+gQ1YClSPhQheugmWJqxDsjODv?=
 =?us-ascii?Q?bQJMmUUxvzPaC8fIUhQQWbLmyynjjMqdvos/oPG2sYsa5PR4VG5f7nWA1ZIE?=
 =?us-ascii?Q?R1JyFF4gpAQUaHOlNWfNq6yM+tST2ae604teX/cRWA53qWSCNu2109w9z2he?=
 =?us-ascii?Q?PebPxwZuSQY0PxGH4zNZ0mCgcwzisD2y5fGmLByOORCmwjsLJFK6N0Bqeux7?=
 =?us-ascii?Q?eb586bcKVv8nWa0ORcxTNTwTYbcyaaiGkxfWTzMUOR4qPWSwKnmxPboiIE1J?=
 =?us-ascii?Q?3TzdVxo5dNDQwgLDXpttInL/z7bXnd6YUJqRNAEFHc9wAXvN7vOE9vqffnLp?=
 =?us-ascii?Q?mwuiGsVnO7cVLzA6WF3kXGyhpMk8R9Y2IGsDj2eTQF1YjcgdNclrqrsz9J1b?=
 =?us-ascii?Q?ivxIYn0kdkSjPJ7fzKi0IpwSb8HKibMZfykX/mH1AQdSKKLR/JFtS/Ez+ISP?=
 =?us-ascii?Q?uKErn9sGcg=3D=3D?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 6a725a5d-644d-4125-c92a-08de63dffded
X-MS-Exchange-CrossTenant-AuthSource: SJ0PR11MB4845.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 04 Feb 2026 11:24:42.4491 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: XobfOJx7WUMlheWCTq9mETG7oGewEIupM1Gh5zsCgOPglEWq+p7RA8Q0dpuo0fgOPH2usEGJgK/SdveZSQCYyw==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DM4PR11MB6552
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
X-Spamd-Result: default: False [1.49 / 15.00];
	R_DKIM_REJECT(1.00)[intel.com:s=Intel];
	ARC_REJECT(1.00)[signature check failed: fail, {[1] = sig:microsoft.com:reject}];
	MAILLIST(-0.20)[mailman];
	R_SPF_ALLOW(-0.20)[+ip4:131.252.210.177];
	RWL_MAILSPIKE_GOOD(-0.10)[131.252.210.177:from];
	MIME_GOOD(-0.10)[text/plain];
	DMARC_POLICY_SOFTFAIL(0.10)[intel.com : SPF not aligned (relaxed),none];
	HAS_LIST_UNSUB(-0.01)[];
	REPLYTO_DOM_EQ_TO_DOM(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	HAS_ORG_HEADER(0.00)[];
	TO_DN_SOME(0.00)[];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[intel.com:replyto,intel.com:email,ideak-desk.lan:mid,gabe.freedesktop.org:helo,gabe.freedesktop.org:rdns];
	DKIM_TRACE(0.00)[intel.com:-];
	HAS_REPLYTO(0.00)[imre.deak@intel.com];
	REPLYTO_ADDR_EQ_FROM(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[imre.deak@intel.com,intel-gfx-bounces@lists.freedesktop.org];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	NEURAL_HAM(-0.00)[-0.994];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	TAGGED_RCPT(0.00)[intel-gfx];
	RCPT_COUNT_THREE(0.00)[4];
	MISSING_XM_UA(0.00)[];
	RCVD_COUNT_SEVEN(0.00)[9]
X-Rspamd-Queue-Id: CE1E3E50A6
X-Rspamd-Action: no action

On Wed, Feb 04, 2026 at 08:02:47AM +0530, Suraj Kandpal wrote:
> TBT PHY is enablement/disablement is handled by its own TBT module.
> We do not play a big part in it's state management, that being take care
> by it's own TBT modeule.
> The PHY/PLL TypeC mode (TBT, DP-alt) can change after the PLL state was
> computed for a modeset, so the state verification after the modeset
> sequence would indicate a mismatch in case the mode changed from DP-alt
> to TBT, or from TBT to DP-alt mode. To avoid such a mismatch error the
> verification is skipped if the mode for either the read-out or the
> computed state is TBT (where that TBT PLL state doesn't reflect anyway
> the PLL's actual HW state).
> Simply return true when we are in tbt mode.
> 
> Signed-off-by: Suraj Kandpal <suraj.kandpal@intel.com>

Reviewed-by: Imre Deak <imre.deak@intel.com>

> ---
> V1 -> V2:
> - Reframe commit messgae with give the full explanation as to why we
> skip verification (Imre)
> 
>  drivers/gpu/drm/i915/display/intel_lt_phy.c | 3 +++
>  1 file changed, 3 insertions(+)
> 
> diff --git a/drivers/gpu/drm/i915/display/intel_lt_phy.c b/drivers/gpu/drm/i915/display/intel_lt_phy.c
> index 04f63bdd0b87..27ad8407606b 100644
> --- a/drivers/gpu/drm/i915/display/intel_lt_phy.c
> +++ b/drivers/gpu/drm/i915/display/intel_lt_phy.c
> @@ -2158,6 +2158,9 @@ bool
>  intel_lt_phy_pll_compare_hw_state(const struct intel_lt_phy_pll_state *a,
>  				  const struct intel_lt_phy_pll_state *b)
>  {
> +	if (a->tbt_mode || b->tbt_mode)
> +		return true;
> +
>  	/*
>  	 * With LT PHY values other than VDR0_CONFIG and VDR2_CONFIG are
>  	 * unreliable. They cannot always be read back since internally
> -- 
> 2.34.1
> 
