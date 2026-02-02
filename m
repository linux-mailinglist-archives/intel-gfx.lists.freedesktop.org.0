Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id GLOzJqc0gWlyEwMAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Tue, 03 Feb 2026 00:35:03 +0100
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 06B01D2AC3
	for <lists+intel-gfx@lfdr.de>; Tue, 03 Feb 2026 00:35:02 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 889E110E2EF;
	Mon,  2 Feb 2026 23:35:01 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="CP9whWQS";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.16])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 8E07A10E129;
 Mon,  2 Feb 2026 23:34:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1770075299; x=1801611299;
 h=date:from:to:cc:subject:message-id:references:
 in-reply-to:mime-version;
 bh=eyC6zJnmj5/Iu4BGMKytuSRRmfWr30b0eLp2MC1Zax4=;
 b=CP9whWQSRX10bpadf4jfwuj7+my5BLp0xyQfpkvtHk6I96xA62POVePu
 aPl4YxSSYL39zCUuVyo4omVyAukHenDTe1BZNRoXlWiNUdZQuKR8h9srO
 NCUl1ZYo0Jlqz9qE5+paTVuqaB2VGNiuv1cW3J8OkiBkWTTi0fkEIr/LX
 OY72BeAwwS89SGZg5pgyFaNLAhvpapXAFxumxDvt4DHVZt07bpqYuDAxP
 prEm9cDL8Zp8Wjnx4v+67WT/YoCvanu5nSkrGyPBlKG4gxFsd+au02nsX
 wtLUB42yw9RjHrzFqLSMYyQ1Qlwi6OwJy72taXPPETx+WNLayMxLYLbJt Q==;
X-CSE-ConnectionGUID: hNtCVM/kS6Wjl9KtQy/4CA==
X-CSE-MsgGUID: 8nbLROS9T7+EzSFb6aljhw==
X-IronPort-AV: E=McAfee;i="6800,10657,11690"; a="58820794"
X-IronPort-AV: E=Sophos;i="6.21,269,1763452800"; d="scan'208";a="58820794"
Received: from orviesa007.jf.intel.com ([10.64.159.147])
 by fmvoesa110.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 02 Feb 2026 15:34:59 -0800
X-CSE-ConnectionGUID: Al035k1qQE+AlsHNCSiBpA==
X-CSE-MsgGUID: J5Il4WyRRQOb9LLg6w7cPQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.21,269,1763452800"; d="scan'208";a="209748613"
Received: from fmsmsx901.amr.corp.intel.com ([10.18.126.90])
 by orviesa007.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 02 Feb 2026 15:34:59 -0800
Received: from FMSMSX903.amr.corp.intel.com (10.18.126.92) by
 fmsmsx901.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.35; Mon, 2 Feb 2026 15:34:57 -0800
Received: from fmsedg903.ED.cps.intel.com (10.1.192.145) by
 FMSMSX903.amr.corp.intel.com (10.18.126.92) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.35 via Frontend Transport; Mon, 2 Feb 2026 15:34:57 -0800
Received: from PH7PR06CU001.outbound.protection.outlook.com (52.101.201.29) by
 edgegateway.intel.com (192.55.55.83) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.35; Mon, 2 Feb 2026 15:34:57 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=j/QpIXMkC29lv/95BFQhXO1ZVYQNa0XSRvOOKODo+vtqt3pm49Z2iHFJcaPcReNKgpJPR1t4dCJYm9jgY/N0q3ejJBaj/bndYSrH1+ThJ3HCLP6B+6Kq8eSTV6MzzVqULQdvoyZyV04xlH+mIak2XcXKau5cWs/0ZixdV1lpBFrDuCqm7xTww3XClzyX0kOD+vjX/Muj8tZu2k0FUVZVRU+x5+wuRoqNXPVafIWsl0babJ9fYmkjOtH71PkeZh+LHZuoyozfDT1fzhtdOGlyvAJEGRKzf9Q4SZgdo+ouGeeH5jk6ooZ3T40N9BepxehwemsZO7IkOaygtnhYKdk4Hw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=OaknzouRzmuR6jPr1tF1FMq8DR09RRLtKEjgLWDIupE=;
 b=MQF+qYrLLQsav2WJ46LTtSo5eXOV2WMmLQY2corFDZkTaowDXLT/8DAWF4Lw3kum5JUwzQe+yQvI5kFTF8wZz2mv/5yBAoqQqNq+pAvi+PHGMrR42AmXhrhu/wwz5cWuFOTNyL3Zgpl4IC+Ggiwo4mjjLLg/ReUJ2jI7MjFWbFupEZnU5MlJrLQNukCeiJkOO2BextJbRzXqw6Zrvak/Z5U2j47zbPXM4h09MJvBLnn5voGhHDimCq9zrAOzcP9w1cJprKIyqbXEVxAPXEhPr+j6RLzhBMZDivA24nQUG5DMI5iIH6SuGmfHwkrtkWg/QC/36QnJyZEiyvz7h2d/4w==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from DS0PR11MB8182.namprd11.prod.outlook.com (2603:10b6:8:163::17)
 by DS7PR11MB5992.namprd11.prod.outlook.com (2603:10b6:8:73::10) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9564.16; Mon, 2 Feb
 2026 23:34:50 +0000
Received: from DS0PR11MB8182.namprd11.prod.outlook.com
 ([fe80::7b65:81e6:c6c4:449e]) by DS0PR11MB8182.namprd11.prod.outlook.com
 ([fe80::7b65:81e6:c6c4:449e%7]) with mapi id 15.20.9564.016; Mon, 2 Feb 2026
 23:34:50 +0000
Date: Mon, 2 Feb 2026 15:34:48 -0800
From: Matt Roper <matthew.d.roper@intel.com>
To: Gustavo Sousa <gustavo.sousa@intel.com>
CC: <intel-xe@lists.freedesktop.org>, <intel-gfx@lists.freedesktop.org>,
 Aradhya Bhatia <aradhya.bhatia@intel.com>
Subject: Re: [PATCH 11/16] drm/xe/xe3p_lpg: Set STLB bank hash mode to 4KB
Message-ID: <20260202233448.GM458797@mdroper-desk1.amr.corp.intel.com>
References: <20260202-nvl-p-upstreaming-v1-0-653e4ff105dc@intel.com>
 <20260202-nvl-p-upstreaming-v1-11-653e4ff105dc@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Disposition: inline
In-Reply-To: <20260202-nvl-p-upstreaming-v1-11-653e4ff105dc@intel.com>
X-ClientProxiedBy: BY3PR10CA0002.namprd10.prod.outlook.com
 (2603:10b6:a03:255::7) To DS0PR11MB8182.namprd11.prod.outlook.com
 (2603:10b6:8:163::17)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DS0PR11MB8182:EE_|DS7PR11MB5992:EE_
X-MS-Office365-Filtering-Correlation-Id: 9dffaa15-624b-4e58-5257-08de62b3a8f8
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|366016|1800799024|376014|7142099003;
X-Microsoft-Antispam-Message-Info: =?us-ascii?Q?FFD+eiLVzv7EU1httaNSnj+MSbUg/ziRcgwJFF/DVqAHV8v0OJp8fQBu3GTA?=
 =?us-ascii?Q?bVUx6oVhRiZVajLeyAZ5CA+07+EraWTCRrTKT/CEslVkZtwV3LJujQEz5LkE?=
 =?us-ascii?Q?Q8+2/02kMs/aycPsClm5E8X7mcZIJ7O9LWE3riL5NMg89ldsnNzih8oAvGv7?=
 =?us-ascii?Q?UfcXYMmY8Dnz4rfzgCwUsUoXJZ6e/QlUvz8JyN+O2/BcNUXohentaiKHv2rH?=
 =?us-ascii?Q?azHCY4nvoAmIryU9oaYl3eLJ6hF8o8cNzuED1t6KziKANV5jIP6SWEhg0gZJ?=
 =?us-ascii?Q?SbAy9ErHEfKHoWTdEnCYnAMqk1FaMZg/d1qXNKvItFio+z9wpC9pzmV+hoGC?=
 =?us-ascii?Q?2Y938ZGoopyAPnxw2r8QhoESa+jcVdLPWP63Dv1vWxZDnaAkq7B7vCG9l8r1?=
 =?us-ascii?Q?8NmNlZSKmNDWw/O2h+EsRzWDrGL36SL2FSHAMj3TadixDJiQmiNPPda8hbNz?=
 =?us-ascii?Q?z2yPflFGt5v/WUBde6qRxsae5FankUnV0oooos+sn+3Kv7khp7EA35JjyX+i?=
 =?us-ascii?Q?YbDAfJ3YDW4TKDH6FNrdO0vtvtctsNUJligdBxMcCFCbSAUwIINqtxWGElVx?=
 =?us-ascii?Q?j60lmUeSyDSLyuT506sZptDKEJx2Xl/HhUgxyA1+jmtSjGwE0LdMgj5Vgajk?=
 =?us-ascii?Q?0mw4SEUFBpRlHhkbhcCxUytFBMmUnihP56Xbzj+NbXvoo1SYv5hCvxs9uX51?=
 =?us-ascii?Q?lFtEsNDXhtydOJ5L7yOoMqN8Fmt8NQO+uEn4oGTQ+9rBWMxlP2BOEz/fLItb?=
 =?us-ascii?Q?Ur8/bhqq5kjPDxL9cLX3jmdNtJ8JR7vSpRH/EkWybfmC4apC1YzwJeuAoryW?=
 =?us-ascii?Q?5NAmWwCCgHD1gkP19iFDf2HkA7oQRbPo+NwaQefpR/xiSA7wESH0Jl1EtX2c?=
 =?us-ascii?Q?3tM8lOqTqsAcY6XqrXXspjdlzy+GaHdMuh/lOhKZDrjSkIz1ceCcsRGm/dEP?=
 =?us-ascii?Q?YAN3ccgBp8HkKNgeUINOd32Eb0SqglxhEP73562DGhhVzW/duPIZY4ZtnvqJ?=
 =?us-ascii?Q?w8Y3ZWlQfhhM9SwshtZiS3WWCFLOgCunyW48NHbQMIhz91wxMEeRehixxMEH?=
 =?us-ascii?Q?3XvjeikEdiSF0bMwb655WOzOMkCfxEvpJIau566doOne2Rker7Qy9V86OMvL?=
 =?us-ascii?Q?xUASSNGkvbBi+OeZZ6gfuPtGGc4I16ilX8zV71OHtrM/lCHMMt9CVRE6Uuii?=
 =?us-ascii?Q?kFpyEFvFylN01sNO/MZN+AJFJjnSJFwkf7kkAbQRfLsVi7GUtrLXNiFObHh3?=
 =?us-ascii?Q?Ga3rFgWV2Bqrd014caB9J7eQ5RwkYwTn3uZEiQifVn0hoOpOkuCotSsap4ZX?=
 =?us-ascii?Q?lyUmRhp1y5Mn0GmtgWIgYMK0oBG49gIdL/4/+9nuSG9zO5Y9aS7EUuqW+UPW?=
 =?us-ascii?Q?IK245tAkRWNEQCHNSWdtM+u6peo9NxV5qwZbMEat3QXJOyBJsus94PwslGTo?=
 =?us-ascii?Q?mlAQen/T//+kQLvulZKMaVUgGEoMz6FXR5vjgp6Leb+5PjD91jqIGu/iBHu7?=
 =?us-ascii?Q?9TAAsgLvZoM2Cs9MdCKZJtQWCUT2HMQeHygSvznJ4NMCYzzOUYmitchBZu0W?=
 =?us-ascii?Q?F45nndGY/vPWSkKpOFA=3D?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DS0PR11MB8182.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(366016)(1800799024)(376014)(7142099003); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?KB5k5KpV/vR8UOOJhxbBV+ocuvX8KcoVXIOCgiOXlCGb6ZzWCYE/GkhZNqHP?=
 =?us-ascii?Q?tNhg7kM2BqRBMyjhsbAJdKnPZWljYbtvMyTxtza7Fc5bGVHhzoOkQ6eFmu/M?=
 =?us-ascii?Q?R0CcgAJedldng6ilc4mPpb/QM5oEeT3yUWn/UX1fiC0TwK71PuzDzQpwxTqp?=
 =?us-ascii?Q?YaayjXoFZhRX2Y9Bu4UM4s+VeordrjNwLPhx1kpAN7Bjof1RWPFD6KcLe+23?=
 =?us-ascii?Q?0nsuGuvC6zJouSbHUoZqdeLZ66f6uKWNCmJlgQeqWuRU4xwcMLb38S1EwZlo?=
 =?us-ascii?Q?rEHERYY5HoNGVL3NB1mxSUfV/kK91+8ZdK37kpoE2K7+8CWsYJmVnGOXfggq?=
 =?us-ascii?Q?C0LOTPQr4w0irZtqQuH29YJ/S00MfPRmrOLQK5gpCMzuy5s+ldYF3IhX8Rdx?=
 =?us-ascii?Q?h4tLYO4wodoQSeZgG+xrkfxR1X3+rqRIfoIj8sUp42FD2S+JX4OopRkMVLlc?=
 =?us-ascii?Q?PKIO8QbsFVmRYjbX30GymonffFjSX3KweVG04edYobDzAeOMbytPvyCcAOQ5?=
 =?us-ascii?Q?FgA0MCIE1Hurx4Ih5XBPO5ENCOuIZW5hChq9jV/FuVInsT529myYQGCAZlwK?=
 =?us-ascii?Q?W6ldQuOUTRJJlV7TmT1jQxQ7Bl/iBaupa3VoMj1VveYDVLQbHEunxAO2JMC1?=
 =?us-ascii?Q?UNBlqv/lSSdcxlHpZAbd5SZ8nOBUC9aHqBABT98LQsDOAUgthM8Cnb8kZOB9?=
 =?us-ascii?Q?DxxwpFooOYvns3PifeRpW7nMlBc21b3D66xD20x71azkgI2Tal4cIxoP7gzh?=
 =?us-ascii?Q?1UAS5gmIoH1DpvbPYFi9hyI3mNJ1Mnvb6KFgN9fOYqrAiEgU4irMWBWrz1DY?=
 =?us-ascii?Q?dki185HcXHf00OBCqQhmig9NvEIGVKCp86sOevfcpbIYkb9KHB+cYDKboeCV?=
 =?us-ascii?Q?F6gYVULxR50xQ3nSM9LVVqthGLgwHrCbmu5pzBjJ2uz7cKIeCaKnzHuq//2b?=
 =?us-ascii?Q?enBnSFt/Nwcg0gktAwn5qlEo0UtsbsD3/LjUoz2pD9THKbkuLB2UNJd+7/Sy?=
 =?us-ascii?Q?6Lyx9ad4bpmN7KERM9Q/a+SebJdoyBNanPIuZvQ98uiJyp72uGL1AWHuVwbH?=
 =?us-ascii?Q?OuSGBIqcqoaGFqz+K+RIsTNOiCQWUulvFNS9BB9Kji2YVQDxy4edTknzVJSk?=
 =?us-ascii?Q?sVZ2JOBcTzITnQQPP9cCTV1jI0vQeXB579SH1vbv7mYU5UYaDzzB7u07SH1S?=
 =?us-ascii?Q?jU1fjhG6/K5lMiTAV8rqbLrX8ZroRYVhMgUh0lNrwXeeF6ZPbx+qlMviQs85?=
 =?us-ascii?Q?b8MOwQeHNgMBqxVhc6Z6tnYA+bZN7/XClqmOTZBGY2s2RVs5O+Y6flTZYENC?=
 =?us-ascii?Q?TQVDesoVLCb6R7b+UfYwUAbGzlMXrZAwFxIJkZHDWJsdy4UPzXmSG9oKxdI2?=
 =?us-ascii?Q?kNr5mMYmcoiDU4tkTOOKv3eNNW/rj7ujdDnvRAirBEplcJp357ph7JYoFnM9?=
 =?us-ascii?Q?M1Xj3LysIa5AkiQby1dSXr8zJX9Lq5bzN8Ub0t/5PdeKcVHVQbRbe/Iw3ffe?=
 =?us-ascii?Q?vrTz2cWf4SEQIVB3LzMU+JCW7GRMrfGu5T9WwUk/yt8KAXO5XyieQnEBVK1A?=
 =?us-ascii?Q?ixUW6cIpEmoXnZYZIgo18LmanS/mSc9YFmvaLMhQoVjxYOwqggBJsvD7LsfB?=
 =?us-ascii?Q?qg4ji8vAOZLeK3RlvYlUmsgVv8Q9v9D0t2PHTMnl4wa6HnlTmSXGY02x4jBA?=
 =?us-ascii?Q?aJgYiiNs1IsBVqBhCg9Aeh6FIORdEJC0CxbA87LyQs2cLgqg6JsLZVye+Dlc?=
 =?us-ascii?Q?bmlUip2bWk4NE8ITyEJzUO4o5IhSCmA=3D?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 9dffaa15-624b-4e58-5257-08de62b3a8f8
X-MS-Exchange-CrossTenant-AuthSource: DS0PR11MB8182.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 02 Feb 2026 23:34:50.7729 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: x9eJ/j51Ol/jwQbiJYUEJx7Xc3KPRT1rGDeI352Hq0salx5JLhOORcfCdMXS/0S2lt/aKHBc8zWs3prPWNglL43ebDXKZMVz85rfeofCOUk=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DS7PR11MB5992
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
X-Spamd-Result: default: False [-0.31 / 15.00];
	ARC_REJECT(1.00)[signature check failed: fail, {[1] = sig:microsoft.com:reject}];
	DMARC_POLICY_ALLOW(-0.50)[intel.com,none];
	MAILLIST(-0.20)[mailman];
	R_SPF_ALLOW(-0.20)[+ip4:131.252.210.177:c];
	R_DKIM_ALLOW(-0.20)[intel.com:s=Intel];
	MIME_GOOD(-0.10)[text/plain];
	RWL_MAILSPIKE_GOOD(-0.10)[131.252.210.177:from];
	HAS_LIST_UNSUB(-0.01)[];
	DKIM_TRACE(0.00)[intel.com:+];
	DBL_BLOCKED_OPENRESOLVER(0.00)[intel.com:email,intel.com:dkim,gabe.freedesktop.org:helo,gabe.freedesktop.org:rdns];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	MIME_TRACE(0.00)[0:+];
	RCPT_COUNT_THREE(0.00)[4];
	MISSING_XM_UA(0.00)[];
	TO_DN_SOME(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[matthew.d.roper@intel.com,intel-gfx-bounces@lists.freedesktop.org];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	TAGGED_RCPT(0.00)[intel-gfx];
	MID_RHS_MATCH_FROMTLD(0.00)[];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	RCVD_COUNT_SEVEN(0.00)[9]
X-Rspamd-Queue-Id: 06B01D2AC3
X-Rspamd-Action: no action

On Mon, Feb 02, 2026 at 06:43:17PM -0300, Gustavo Sousa wrote:
> From: Aradhya Bhatia <aradhya.bhatia@intel.com>
> 
> Since the dominant size of the pages referred in an i-gpu, such as
> Xe3p_LPG, will be 4KB, the HW default of mix of 64K and 2M for STLB bank
> hash mode does not make sense.
> 
> Allow the SW to change it to 4KB Mode, for Xe3p_LPG.
> 
> Signed-off-by: Aradhya Bhatia <aradhya.bhatia@intel.com>
> Signed-off-by: Gustavo Sousa <gustavo.sousa@intel.com>

It was a bit hard to track down the source of this since it isn't on the
usual "tuning" page of the bspec.  We should make sure we add a bspec
reference, especially so this can be double checked for accuracy on
future platforms.

Bspec: 78248
Reviewed-by: Matt Roper <matthew.d.roper@intel.com>


> ---
>  drivers/gpu/drm/xe/regs/xe_gt_regs.h | 2 ++
>  drivers/gpu/drm/xe/xe_tuning.c       | 9 +++++++++
>  2 files changed, 11 insertions(+)
> 
> diff --git a/drivers/gpu/drm/xe/regs/xe_gt_regs.h b/drivers/gpu/drm/xe/regs/xe_gt_regs.h
> index 19f053a7f9be..cd84b8945a5d 100644
> --- a/drivers/gpu/drm/xe/regs/xe_gt_regs.h
> +++ b/drivers/gpu/drm/xe/regs/xe_gt_regs.h
> @@ -473,6 +473,8 @@
>  #define   FORCE_MISS_FTLB			REG_BIT(3)
>  
>  #define XEHP_GAMSTLB_CTRL			XE_REG_MCR(0xcf4c)
> +#define   BANK_HASH_MODE			REG_GENMASK(27, 26)
> +#define   BANK_HASH_4KB_MODE			REG_FIELD_PREP(BANK_HASH_MODE, 0x3)
>  #define   CONTROL_BLOCK_CLKGATE_DIS		REG_BIT(12)
>  #define   EGRESS_BLOCK_CLKGATE_DIS		REG_BIT(11)
>  #define   TAG_BLOCK_CLKGATE_DIS			REG_BIT(7)
> diff --git a/drivers/gpu/drm/xe/xe_tuning.c b/drivers/gpu/drm/xe/xe_tuning.c
> index 694385ae75f1..316f5e2b2e48 100644
> --- a/drivers/gpu/drm/xe/xe_tuning.c
> +++ b/drivers/gpu/drm/xe/xe_tuning.c
> @@ -90,6 +90,15 @@ static const struct xe_rtp_entry_sr gt_tunings[] = {
>  	  XE_RTP_RULES(MEDIA_VERSION(2000)),
>  	  XE_RTP_ACTIONS(SET(XE2LPM_SCRATCH3_LBCF, RWFLUSHALLEN))
>  	},
> +
> +	/* Xe3p */
> +
> +	{ XE_RTP_NAME("Tuning: Set STLB Bank Hash Mode to 4KB"),
> +	  XE_RTP_RULES(GRAPHICS_VERSION_RANGE(3510, XE_RTP_END_VERSION_UNDEFINED),
> +		       IS_INTEGRATED),
> +	  XE_RTP_ACTIONS(FIELD_SET(XEHP_GAMSTLB_CTRL, BANK_HASH_MODE,
> +				   BANK_HASH_4KB_MODE))
> +	},
>  };
>  
>  static const struct xe_rtp_entry_sr engine_tunings[] = {
> 
> -- 
> 2.52.0
> 

-- 
Matt Roper
Graphics Software Engineer
Linux GPU Platform Enablement
Intel Corporation
