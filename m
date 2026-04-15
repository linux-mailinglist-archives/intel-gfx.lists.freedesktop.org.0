Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id mHLXJ/T932nUbQAAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Wed, 15 Apr 2026 23:07:00 +0200
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 52A84407FAF
	for <lists+intel-gfx@lfdr.de>; Wed, 15 Apr 2026 23:07:00 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 0255B10E7BA;
	Wed, 15 Apr 2026 21:06:57 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=Nvidia.com header.i=@Nvidia.com header.b="L/NxcZPW";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from PH0PR06CU001.outbound.protection.outlook.com
 (mail-westus3azon11011062.outbound.protection.outlook.com [40.107.208.62])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 3371A10E7A7;
 Wed, 15 Apr 2026 21:06:53 +0000 (UTC)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=XV5Mtfd7tsqroKsPR5dbDd5V7kBouuhludw55ecKCQVNBGtmHMtBaSBzYL3uj5WSiwkPytz+j+Fb3MKwsypWziP75MDJw1buLYf6l1xULTZk/MQxXErBJWtGSDYk8z8jSyT0FPjcfFlVquppup5NlsPjLZdB35NGsj7U/6C+nhyyk2ho340gbYAw4LsBu45Qt4erLpcvFdkCu4QCFQTjM9hgEZRrdzdG0ryki8yTdbP4ESX7zSXUlaAYQHLv9FB9lXhHf6eodrcXMPPATMgKQzqGgy7SlIeuw4mg/j+HACG2nhfeRhRKWrGHYd8QRgjA453eIfSBzC0zMnMPrZlEPg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=zCt6boetsKY2330442YHYLfQCGw/oOEnOc9lXUqL1Tk=;
 b=dzkB4bs+wXuTyvt6cFHUEqrD05UIgQJteENgSx6XKCmVJ+gsn7kVFtySuug/ADzbpjs8ka7jQSfT/K4FMfi7ntf/ryUZXxG9LdL3Nr1GhDG1YpbCXiv0LuRLCy90vYBWkXSOiate9yyw1QQD88cSDwNGDzWmUfNlrZZbw4yYbdFOZFqzugm/ggpI0ofFufZm4aYffh3+ps1ja6rXzVpEEVrOPF0a3gJSkED9zEsZWReDAF6uhBwwvby3LGzyJ3yrdbr5R2DqsrA6NsRhRfrfF+j7u0XDVEfay2n7BistBhJroZZwZLSx5a041OdAGGVXVqnH4ym27j4pgbmdt7PNWg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=nvidia.com; dmarc=pass action=none header.from=nvidia.com;
 dkim=pass header.d=nvidia.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=Nvidia.com;
 s=selector2;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=zCt6boetsKY2330442YHYLfQCGw/oOEnOc9lXUqL1Tk=;
 b=L/NxcZPW2I1Y2uLZYFMaLrLjtHeGmHgMc3z5O43Wb7L8BOjYGJhAjuPvAoc1lBih6VfMWty9+KXSByVpq3zF/2RhynLusglUgk14Sy07Vnjbg3GOEU+0/iPNeha7z6MSWOp5vGDVqPBrCeVm0bRJY0Nb7pTz9d5dp0cGMGPBgPNu3Da2R7JkeffDxc1K9B1izNPyZLD9II6ksgRknHBD6jCi3K7vXAhSDLH+XutZyOSwFoq+i9qsu5jNBGs+mdKWSviP9PPfpc6NmzS+vPXG5uZo782HGcGSJHM2k1YqPTOqzipBYLg6ksRHZiwCG5YYMN5jTumAHkdvcuOeB+LF9g==
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=nvidia.com;
Received: from DS0PR12MB6486.namprd12.prod.outlook.com (2603:10b6:8:c5::21) by
 CH3PR12MB8993.namprd12.prod.outlook.com (2603:10b6:610:17b::16) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9818.20; Wed, 15 Apr
 2026 21:06:40 +0000
Received: from DS0PR12MB6486.namprd12.prod.outlook.com
 ([fe80::88a9:f314:c95f:8b33]) by DS0PR12MB6486.namprd12.prod.outlook.com
 ([fe80::88a9:f314:c95f:8b33%4]) with mapi id 15.20.9818.017; Wed, 15 Apr 2026
 21:06:40 +0000
From: Joel Fernandes <joelagnelf@nvidia.com>
To: linux-kernel@vger.kernel.org
Cc: Miguel Ojeda <ojeda@kernel.org>, Boqun Feng <boqun@kernel.org>,
 Gary Guo <gary@garyguo.net>, Bjorn Roy Baron <bjorn3_gh@protonmail.com>,
 Benno Lossin <lossin@kernel.org>, Andreas Hindborg <a.hindborg@kernel.org>,
 Alice Ryhl <aliceryhl@google.com>, Trevor Gross <tmgross@umich.edu>,
 Danilo Krummrich <dakr@kernel.org>, Dave Airlie <airlied@redhat.com>,
 Daniel Almeida <daniel.almeida@collabora.com>,
 Koen Koning <koen.koning@linux.intel.com>, dri-devel@lists.freedesktop.org,
 rust-for-linux@vger.kernel.org, Nikola Djukic <ndjukic@nvidia.com>,
 Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
 Maxime Ripard <mripard@kernel.org>,
 Thomas Zimmermann <tzimmermann@suse.de>, David Airlie <airlied@gmail.com>,
 Simona Vetter <simona@ffwll.ch>, Jonathan Corbet <corbet@lwn.net>,
 Alex Deucher <alexander.deucher@amd.com>,
 Christian Koenig <christian.koenig@amd.com>,
 Jani Nikula <jani.nikula@linux.intel.com>,
 Joonas Lahtinen <joonas.lahtinen@linux.intel.com>,
 Rodrigo Vivi <rodrigo.vivi@intel.com>,
 Tvrtko Ursulin <tursulin@ursulin.net>, Huang Rui <ray.huang@amd.com>,
 Matthew Auld <matthew.auld@intel.com>,
 Lucas De Marchi <lucas.demarchi@intel.com>,
 Thomas Hellstrom <thomas.hellstrom@linux.intel.com>,
 Helge Deller <deller@gmx.de>, Alex Gaynor <alex.gaynor@gmail.com>,
 Boqun Feng <boqun.feng@gmail.com>, John Hubbard <jhubbard@nvidia.com>,
 Alistair Popple <apopple@nvidia.com>, Timur Tabi <ttabi@nvidia.com>,
 Edwin Peer <epeer@nvidia.com>, Alexandre Courbot <acourbot@nvidia.com>,
 Andrea Righi <arighi@nvidia.com>, Andy Ritger <aritger@nvidia.com>,
 Zhi Wang <zhiw@nvidia.com>, Balbir Singh <balbirs@nvidia.com>,
 Philipp Stanner <phasta@kernel.org>,
 Elle Rhumsaa <elle@weathered-steel.dev>, alexeyi@nvidia.com,
 Eliot Courtney <ecourtney@nvidia.com>, joel@joelfernandes.org,
 linux-doc@vger.kernel.org, amd-gfx@lists.freedesktop.org,
 intel-gfx@lists.freedesktop.org, intel-xe@lists.freedesktop.org,
 linux-fbdev@vger.kernel.org, Joel Fernandes <joelagnelf@nvidia.com>
Subject: [PATCH v11 19/20] gpu: nova-core: mm: Add BAR1 memory management
 self-tests
Date: Wed, 15 Apr 2026 17:05:46 -0400
Message-Id: <20260415210548.3776595-19-joelagnelf@nvidia.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20260415210548.3776595-1-joelagnelf@nvidia.com>
References: <20260415210548.3776595-1-joelagnelf@nvidia.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
X-ClientProxiedBy: CY5PR22CA0099.namprd22.prod.outlook.com
 (2603:10b6:930:65::24) To DS0PR12MB6486.namprd12.prod.outlook.com
 (2603:10b6:8:c5::21)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DS0PR12MB6486:EE_|CH3PR12MB8993:EE_
X-MS-Office365-Filtering-Correlation-Id: d3d356dd-e5f3-46bc-9e03-08de9b32e3be
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
 ARA:13230040|7416014|376014|366016|1800799024|11006099003|22082099003|18002099003|56012099003;
X-Microsoft-Antispam-Message-Info: 6HkcXu/SzQCBK388JDbCvG3WqtIB/X4k5bw/jgnyNDS1/asw3YKhdRNvGtiorqN2CifWBQQKeZlV33OI93pVz9Vvi4Q3xKwzFzpZz2KZt1dDmb2sGTYWPxG11wTJJOHMuJYeAyT3UMSQS5dfofT2H+6LjBRDcaJtCaR1M9OQEFX2WffFH9BvHL+8UEmnQxzg1/o+9swWCLtESPJS1TdXCzs0CEZLDcTBRIBqGtZSpebzRR9j9QPWDoS7r+wgGpBUDlNI5dlyQvHajVkoHz8itGHRNi7pWyLdcRiWu3EmSjfgbSRuF6s5Xe8jnuoXU18RnTYvKZAPRdZxdVI3WOrMcM8rT17B+bVRiS4nfkCxyFw+ZLc2zYpkSBmS0hv0XIOm1ztEGWoAUlfH9wTkZMW5nlWlUW8sSL0O6oMp/lf9GqMaVz+gz3y8NB3RgfOKK9mmGGMKdWxBlmnRwlaFFs1WO7/2RhHN8V/2G2ofbrW0AFFD/ymoJdQm6/4/Tvk08y2wB+YVq8QRRxLNmdHIaORL2LqhSr6694+3/gKUJNOEoNOrK/8ksSos3kc0YaK7OaiKF2mDFHC/ALK1Sxcjom+khl8g8QFTdmF7L//nT2AoqUOR9iwtekKqDg5ZM+ohU4JDDJ8J8p63gfbZ1XyJyHRd8pQgm03aRlkxDqvlhb4xLEYo781kx7tIAcAkvPGeff6lwrjkEklBbURQfdjroo/qnzUQ/iKq1ogxb2XV+5rKROo=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DS0PR12MB6486.namprd12.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(7416014)(376014)(366016)(1800799024)(11006099003)(22082099003)(18002099003)(56012099003);
 DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?TjlWZVF5dmVuMVdtK3B0bXF2NnBjU25aT1FhTVhTR3pxanpmUFZTSDIwalpR?=
 =?utf-8?B?UG9WZkErd3pWL1IyK3hWajMzRzJXYnNrZEZPZ0tham05SWRGbzY3eDBJdUxh?=
 =?utf-8?B?Mk80WXlqQ0tFTmYzQXBuNzVMeDlPNmpXOUJKaEY1ZVdmRE1QbDV2TSswbVRD?=
 =?utf-8?B?MVNKQUtNTkJ4UHVMMlhPeVJkR2lnM1VvQkl1RVhIM3N0emI4WEs1WVAyUkh3?=
 =?utf-8?B?c01Nazl4QTVtRURhV3dlQUpWTUhBQmZSTEhVbWNrQk42anhlZjN3VHVOL2U2?=
 =?utf-8?B?ZHJYUUkraFRqcDd6SEN3amsvQnQyOHczQitIY0M1RWFKNStUVEpBOU1PQTdB?=
 =?utf-8?B?NGZmcDZ2Z0c2Uml2UG1LZFRYWUxnblRvbFFDbEZiemlVdlhjWmtVSnFwSzVa?=
 =?utf-8?B?bWcwa3Vsc2tLYnplZnZqeVd6UzRtd0lsQ2pndit5UGtQV1ZHMG15eHJEb3dT?=
 =?utf-8?B?bGdDOVI5aitMZ0JIOEJKdW03YVNSdmErUm9PSmFNKzczM21JZ3U3d0hYbElQ?=
 =?utf-8?B?ZUhyZGp6aklVMW5yVWUvNHRqS09Id3p1cEVoSnA1cVpKOFRlVE02VHI0aWNj?=
 =?utf-8?B?Vmo5UGpuUUpPQkVsTHlmbnp6TVlvcnRjMHpsWWhUUG9HbUlDN2dPOFhOSVV5?=
 =?utf-8?B?WGtkbkdRTy9UeDRNd2pFNUhkTHpnYVJiUC9pUTV3ZDJweEE5Tnp2T204Q0x0?=
 =?utf-8?B?ekZ6KzJSYkhlTlVmTnAxeS9ORXRlSVprTTA5ejJWK3N5azJkRmZKdUg4NFBP?=
 =?utf-8?B?MDZpZEFTZlBrVzMzOGlKYXFBWVJsc0hvZFBIMXdhVW5NQ05NUmtSY3BxYnhj?=
 =?utf-8?B?Nk5aS0FBMmVBelpGSlJOKzVualhwWFpnMXp2Q29aYWllMHdNZ2FpQ1VQbjE1?=
 =?utf-8?B?eXNxY2Q3SjNPU1ZEbTJCQnVhQXkvZUZlMllNUXk1NlNEbXJpUWFXNG02SzBM?=
 =?utf-8?B?V015NUJrM29sZnUxTXZiSGlPaUdwZWNiMXMySS9Lc2greDREZFJzd2o2cmVi?=
 =?utf-8?B?N3ZXSWNTZ05kWHdlWTRSRVVTR1VSWkpwd0dtSGVxcWlFdXVRaWRMRlNRQk9s?=
 =?utf-8?B?NWtnMHp2VGU1SHFObkJMbkZSODNCRUpQUnpPRkhCQlhWeXBzMFNLL2Fwb2Ir?=
 =?utf-8?B?U3U2TkFxRTE0Mks3b1RwY0JqcmtmN1lYSTR3STZkTUpyWTVqeS9uaU9na1ZS?=
 =?utf-8?B?c2UyMVpYYUhlRndaaUwzeW0wZituNisxTnhqQ3ZyblcxQzRxWGhMOGZSbVRx?=
 =?utf-8?B?cE05Z2JsZmJCdVhURWNKNnl2cTRONE5xdGRuTE5HRk90cSsvU21Ld0FPQ0pv?=
 =?utf-8?B?UXVrbWtVaVhjN0Y4cGRtaDhEUFFmYjE3ZFNvVlNxOW83Mm9xbjlweFdCaHpQ?=
 =?utf-8?B?T1hXZFlkQ3RNVDg1TUtuWkV3UnBIazJoZUZabEVvS1ZNSEd1OXBLUzlNYmFM?=
 =?utf-8?B?VkM3QWlJSWNQQWROaXArTWU1ZWRUY3IxNWUvM3lPTk83akVMSEptUjl3bE9t?=
 =?utf-8?B?RXlQdHN4Lzl4NXE5SWYxU3lpTUpOTHRBUjgvNGtLSFRINkQrVHhkYTdBaHdv?=
 =?utf-8?B?QWx0Z1o3RFlVaG84WmRnV2VQaWJxTTMvVkh1dk44aFc3VnJGU3JweFJiZ0hi?=
 =?utf-8?B?dWlTRG1qRHM0bWNGWVpVQk1JL0ZTTGRuaWl1b3FxdHRHQTYzU2Fxam9yaFpL?=
 =?utf-8?B?b2hSZmxuY2dWVnVETCt4b0daMTZuelpXb3ZRMWRZQ05NcWNoV0FJNjFuWGxO?=
 =?utf-8?B?M1lLM0JhYS96eGlZT29sRjBObXJVeHozemJkWldPdlMxMllSaWlkTnNkODdZ?=
 =?utf-8?B?dVBaQUxZNEViWHNzbjl4L2piaGlJSi94L0RIcWJvOWZPK1ZWWUFBU0hlMTJj?=
 =?utf-8?B?eEhnbFZXSGpGMG4zL2VhSFlKbDVNQXc2SGgxZi9Xb1Fsak9WclVnSHpZdlJ2?=
 =?utf-8?B?WEFyeElId3ZiMXZVTTJOeDFhQXl2NG5RcFhhekR3VXBUL3dZdUt1MjNrSHFz?=
 =?utf-8?B?Qi9Tem44QUJRNjBQN3pCWUNyeDlyYW9nMUFpYm1URmNPbkc0RFlyQ0FoK0hJ?=
 =?utf-8?B?RE1GYXQ0SlFRZEd5cURTYmVSS1I2WEszTnBMY3FXQWhkV25hR29BbXM0OHFs?=
 =?utf-8?B?Nlp1WWtBUkpvV2UxUzVxUkZEQVI0MngzUEhZcktFVjlYTjBybGRoMW5mQ2pM?=
 =?utf-8?B?ZHpCbEYweU9kampTU2x3SExDMnpmZjdOMHd4YmpSdTluY1g0YlR0cFJSdE53?=
 =?utf-8?B?VWM2bzR2a3RpS1RENDdtcWtFZHJVYUZVUzQ1T0FkMlpRMk10dUluSjlCdGZS?=
 =?utf-8?B?VmxVQnhrZWc1MWdueHRUbFZ0Kzh1ODluSXIrNmt5NTB4ZUJoTlNldz09?=
X-OriginatorOrg: Nvidia.com
X-MS-Exchange-CrossTenant-Network-Message-Id: d3d356dd-e5f3-46bc-9e03-08de9b32e3be
X-MS-Exchange-CrossTenant-AuthSource: DS0PR12MB6486.namprd12.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 15 Apr 2026 21:06:40.6569 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 43083d15-7273-40c1-b7db-39efd9ccc17a
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: /66DHxuM1y9Bdh5GZGlAhpT3Z9EZAtl1z+gAKm2EVWJ9Iel0BDAh2aFu4sUh4SnZ4mwRMntURMwaliuZGzIdlg==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CH3PR12MB8993
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
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[microsoft.com:s=arcselector10001:i=1];
	MID_CONTAINS_FROM(1.00)[];
	DMARC_POLICY_ALLOW(-0.50)[nvidia.com,reject];
	R_DKIM_ALLOW(-0.20)[Nvidia.com:s=selector2];
	MAILLIST(-0.20)[mailman];
	R_SPF_ALLOW(-0.20)[+ip4:131.252.210.177:c];
	RWL_MAILSPIKE_GOOD(-0.10)[131.252.210.177:from];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	FROM_HAS_DN(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	FREEMAIL_CC(0.00)[kernel.org,garyguo.net,protonmail.com,google.com,umich.edu,redhat.com,collabora.com,linux.intel.com,lists.freedesktop.org,vger.kernel.org,nvidia.com,suse.de,gmail.com,ffwll.ch,lwn.net,amd.com,intel.com,ursulin.net,gmx.de,weathered-steel.dev,joelfernandes.org];
	DKIM_TRACE(0.00)[Nvidia.com:+];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	RCPT_COUNT_GT_50(0.00)[55];
	FROM_NEQ_ENVFROM(0.00)[joelagnelf@nvidia.com,intel-gfx-bounces@lists.freedesktop.org];
	TO_DN_SOME(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	TAGGED_RCPT(0.00)[intel-gfx];
	DBL_BLOCKED_OPENRESOLVER(0.00)[nvidia.com:mid,nvidia.com:email,gabe.freedesktop.org:helo,gabe.freedesktop.org:rdns,Nvidia.com:dkim]
X-Rspamd-Queue-Id: 52A84407FAF
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

Add self-tests for BAR1 access during driver probe when
CONFIG_NOVA_MM_SELFTESTS is enabled (default disabled). This results in
testing the Vmm, GPU buddy allocator and BAR1 region all of which should
function correctly for the tests to pass.

Cc: Nikola Djukic <ndjukic@nvidia.com>
Signed-off-by: Joel Fernandes <joelagnelf@nvidia.com>
---
 drivers/gpu/nova-core/Kconfig         |  10 ++
 drivers/gpu/nova-core/driver.rs       |   2 +
 drivers/gpu/nova-core/gpu.rs          |  31 ++++
 drivers/gpu/nova-core/mm/bar_user.rs  | 214 ++++++++++++++++++++++++++
 drivers/gpu/nova-core/mm/pagetable.rs |  28 ++++
 5 files changed, 285 insertions(+)

diff --git a/drivers/gpu/nova-core/Kconfig b/drivers/gpu/nova-core/Kconfig
index 6513007bf66f..35de55aabcfc 100644
--- a/drivers/gpu/nova-core/Kconfig
+++ b/drivers/gpu/nova-core/Kconfig
@@ -15,3 +15,13 @@ config NOVA_CORE
 	  This driver is work in progress and may not be functional.
 
 	  If M is selected, the module will be called nova_core.
+
+config NOVA_MM_SELFTESTS
+	bool "Memory management self-tests"
+	depends on NOVA_CORE
+	help
+	  Enable self-tests for the memory management subsystem. When enabled,
+	  tests are run during GPU probe to verify PRAMIN aperture access,
+	  page table walking, and BAR1 virtual memory mapping functionality.
+
+	  This is a testing option and is default-disabled.
diff --git a/drivers/gpu/nova-core/driver.rs b/drivers/gpu/nova-core/driver.rs
index e78a682a7f2a..6f95f8672158 100644
--- a/drivers/gpu/nova-core/driver.rs
+++ b/drivers/gpu/nova-core/driver.rs
@@ -97,6 +97,8 @@ fn probe(pdev: &pci::Device<Core>, _info: &Self::IdInfo) -> impl PinInit<Self, E
 
             Ok(try_pin_init!(Self {
                 gpu <- Gpu::new(pdev, bar.clone(), bar.access(pdev.as_ref())?),
+                // Run optional GPU selftests.
+                _: { gpu.run_selftests(pdev)? },
                 _reg <- auxiliary::Registration::new(
                     pdev.as_ref(),
                     c"nova-drm",
diff --git a/drivers/gpu/nova-core/gpu.rs b/drivers/gpu/nova-core/gpu.rs
index 1cd0f147994b..8f236615cc13 100644
--- a/drivers/gpu/nova-core/gpu.rs
+++ b/drivers/gpu/nova-core/gpu.rs
@@ -341,4 +341,35 @@ pub(crate) fn unbind(&self, dev: &device::Device<device::Core>) {
             .inspect(|bar| self.sysmem_flush.unregister(bar))
             .is_err());
     }
+
+    /// Run selftests on the constructed [`Gpu`].
+    pub(crate) fn run_selftests(
+        mut self: Pin<&mut Self>,
+        pdev: &pci::Device<device::Bound>,
+    ) -> Result {
+        self.as_mut().run_mm_selftests(pdev)?;
+        Ok(())
+    }
+
+    #[cfg(CONFIG_NOVA_MM_SELFTESTS)]
+    fn run_mm_selftests(self: Pin<&mut Self>, pdev: &pci::Device<device::Bound>) -> Result {
+        // BAR1 self-tests.
+        let bar1 = Arc::pin_init(pdev.iomap_region(1, c"nova-core/bar1"), GFP_KERNEL)?;
+        let bar1_access = bar1.access(pdev.as_ref())?;
+
+        crate::mm::bar_user::run_self_test(
+            pdev.as_ref(),
+            &self.mm,
+            bar1_access,
+            self.gsp_static_info.bar1_pde_base,
+            self.spec.chipset,
+        )?;
+
+        Ok(())
+    }
+
+    #[cfg(not(CONFIG_NOVA_MM_SELFTESTS))]
+    fn run_mm_selftests(self: Pin<&mut Self>, _pdev: &pci::Device<device::Bound>) -> Result {
+        Ok(())
+    }
 }
diff --git a/drivers/gpu/nova-core/mm/bar_user.rs b/drivers/gpu/nova-core/mm/bar_user.rs
index 5f7c0e9e51f9..8bccd8a8376b 100644
--- a/drivers/gpu/nova-core/mm/bar_user.rs
+++ b/drivers/gpu/nova-core/mm/bar_user.rs
@@ -150,3 +150,217 @@ fn drop(&mut self) {
         }
     }
 }
+
+/// Run MM subsystem self-tests during probe.
+///
+/// Tests page table infrastructure and `BAR1` MMIO access using the `BAR1`
+/// address space. Uses the `GpuMm`'s buddy allocator to allocate page tables
+/// and test pages as needed.
+#[cfg(CONFIG_NOVA_MM_SELFTESTS)]
+pub(crate) fn run_self_test(
+    dev: &kernel::device::Device,
+    mm: &GpuMm,
+    bar1: &Bar1,
+    bar1_pdb: u64,
+    chipset: Chipset,
+) -> Result {
+    use kernel::gpu::buddy::{
+        GpuBuddyAllocFlags,
+        GpuBuddyAllocMode, //
+    };
+    use kernel::ptr::Alignment;
+    use kernel::sizes::{
+        SZ_16K,
+        SZ_32K,
+        SZ_4K,
+        SZ_64K, //
+    };
+
+    // Test patterns.
+    const PATTERN_PRAMIN: u32 = 0xDEAD_BEEF;
+    const PATTERN_BAR1: u32 = 0xCAFE_BABE;
+
+    dev_info!(dev, "MM: Starting self-test...\n");
+
+    let pdb_addr = VramAddress::new(bar1_pdb);
+
+    // Check if initial page tables are in VRAM.
+    if crate::mm::pagetable::check_pdb_valid(mm.pramin(), pdb_addr, chipset).is_err() {
+        dev_info!(dev, "MM: Self-test SKIPPED - no valid VRAM page tables\n");
+        return Ok(());
+    }
+
+    // Set up a test page from the buddy allocator.
+    let test_page_blocks = KBox::pin_init(
+        mm.buddy().alloc_blocks(
+            GpuBuddyAllocMode::Simple,
+            SZ_4K.into_safe_cast(),
+            Alignment::new::<SZ_4K>(),
+            GpuBuddyAllocFlags::default(),
+        ),
+        GFP_KERNEL,
+    )?;
+    let test_vram_offset = test_page_blocks.iter().next().ok_or(ENOMEM)?.offset();
+    let test_vram = VramAddress::new(test_vram_offset);
+    let test_pfn = Pfn::from(test_vram);
+
+    // Create a VMM of size 64K to track virtual memory mappings.
+    let mut vmm = Vmm::new(pdb_addr, chipset.mmu_version(), SZ_64K.into_safe_cast())?;
+
+    // Create a test mapping.
+    let mapped = vmm.map_pages(mm, &[test_pfn], None, true)?;
+    let test_vfn = mapped.vfn_start;
+
+    // Pre-compute test addresses for the PRAMIN to BAR1 read test.
+    let vfn_offset: usize = test_vfn.raw().into_safe_cast();
+    let bar1_base_offset = vfn_offset.checked_mul(PAGE_SIZE).ok_or(EOVERFLOW)?;
+    let bar1_read_offset: usize = bar1_base_offset + 0x100;
+    let vram_read_addr: usize = test_vram.raw() + 0x100;
+
+    // Test 1: Write via PRAMIN, read via BAR1.
+    {
+        let mut window = mm.pramin().get_window()?;
+        window.try_write32(vram_read_addr, PATTERN_PRAMIN)?;
+    }
+
+    // Read back via BAR1 aperture.
+    let bar1_value = bar1.try_read32(bar1_read_offset)?;
+
+    let test1_passed = if bar1_value == PATTERN_PRAMIN {
+        true
+    } else {
+        dev_err!(
+            dev,
+            "MM: Test 1 FAILED - Expected {:#010x}, got {:#010x}\n",
+            PATTERN_PRAMIN,
+            bar1_value
+        );
+        false
+    };
+
+    // Cleanup - invalidate PTE.
+    vmm.unmap_pages(mm, mapped)?;
+
+    // Test 2: Two-phase prepare/execute API.
+    let prepared = vmm.prepare_map(mm, 1, None)?;
+    let mapped2 = vmm.execute_map(mm, prepared, &[test_pfn], true)?;
+    let readback = vmm.read_mapping(mm, mapped2.vfn_start)?;
+    let test2_passed = if readback == Some(test_pfn) {
+        true
+    } else {
+        dev_err!(dev, "MM: Test 2 FAILED - Two-phase map readback mismatch\n");
+        false
+    };
+    vmm.unmap_pages(mm, mapped2)?;
+
+    // Test 3: Range-constrained allocation with a hole — exercises block.size()-driven
+    // BAR1 mapping. A 4K hole is punched at base+16K, then a single 32K allocation
+    // is requested within [base, base+36K). The buddy allocator must split around the
+    // hole, returning multiple blocks (expected: {16K, 4K, 8K, 4K} = 32K total).
+    // Each block is mapped into BAR1 and verified via PRAMIN read-back.
+    //
+    // Address layout (base = 0x10000):
+    //   [    16K    ] [HOLE 4K] [4K] [ 8K ] [4K]
+    //   0x10000       0x14000  0x15000 0x16000 0x18000 0x19000
+    let range_base: u64 = SZ_64K.into_safe_cast();
+    let sz_4k: u64 = SZ_4K.into_safe_cast();
+    let sz_16k: u64 = SZ_16K.into_safe_cast();
+    let sz_32k_4k: u64 = (SZ_32K + SZ_4K).into_safe_cast();
+
+    // Punch a 4K hole at base+16K so the subsequent 32K allocation must split.
+    let _hole = KBox::pin_init(
+        mm.buddy().alloc_blocks(
+            GpuBuddyAllocMode::Range(range_base + sz_16k..range_base + sz_16k + sz_4k),
+            SZ_4K.into_safe_cast(),
+            Alignment::new::<SZ_4K>(),
+            GpuBuddyAllocFlags::default(),
+        ),
+        GFP_KERNEL,
+    )?;
+
+    // Allocate 32K within [base, base+36K). The hole forces the allocator to return
+    // split blocks whose sizes are determined by buddy alignment.
+    let blocks = KBox::pin_init(
+        mm.buddy().alloc_blocks(
+            GpuBuddyAllocMode::Range(range_base..range_base + sz_32k_4k),
+            SZ_32K.into_safe_cast(),
+            Alignment::new::<SZ_4K>(),
+            GpuBuddyAllocFlags::default(),
+        ),
+        GFP_KERNEL,
+    )?;
+
+    let mut test3_passed = true;
+    let mut total_size = 0usize;
+
+    for block in blocks.iter() {
+        total_size += IntoSafeCast::<usize>::into_safe_cast(block.size());
+
+        // Map all pages of this block.
+        let page_size: u64 = PAGE_SIZE.into_safe_cast();
+        let num_pages: usize = (block.size() / page_size).into_safe_cast();
+
+        let mut pfns = KVec::new();
+        for j in 0..num_pages {
+            let j_u64: u64 = j.into_safe_cast();
+            pfns.push(
+                Pfn::from(VramAddress::new(
+                    block.offset() + j_u64.checked_mul(page_size).ok_or(EOVERFLOW)?,
+                )),
+                GFP_KERNEL,
+            )?;
+        }
+
+        let mapped = vmm.map_pages(mm, &pfns, None, true)?;
+        let bar1_base_vfn: usize = mapped.vfn_start.raw().into_safe_cast();
+        let bar1_base = bar1_base_vfn.checked_mul(PAGE_SIZE).ok_or(EOVERFLOW)?;
+
+        for j in 0..num_pages {
+            let page_bar1_off = bar1_base + j * PAGE_SIZE;
+            let j_u64: u64 = j.into_safe_cast();
+            let page_phys = block.offset()
+                + j_u64
+                    .checked_mul(PAGE_SIZE.into_safe_cast())
+                    .ok_or(EOVERFLOW)?;
+
+            bar1.try_write32(PATTERN_BAR1, page_bar1_off)?;
+
+            let pramin_val = {
+                let mut window = mm.pramin().get_window()?;
+                window.try_read32(page_phys.into_safe_cast())?
+            };
+
+            if pramin_val != PATTERN_BAR1 {
+                dev_err!(
+                    dev,
+                    "MM: Test 3 FAILED block offset {:#x} page {} (val={:#x})\n",
+                    block.offset(),
+                    j,
+                    pramin_val
+                );
+                test3_passed = false;
+            }
+        }
+
+        vmm.unmap_pages(mm, mapped)?;
+    }
+
+    // Verify aggregate: all returned block sizes must sum to allocation size.
+    if total_size != SZ_32K {
+        dev_err!(
+            dev,
+            "MM: Test 3 FAILED - total size {} != expected {}\n",
+            total_size,
+            SZ_32K
+        );
+        test3_passed = false;
+    }
+
+    if test1_passed && test2_passed && test3_passed {
+        dev_info!(dev, "MM: All self-tests PASSED\n");
+        Ok(())
+    } else {
+        dev_err!(dev, "MM: Self-tests FAILED\n");
+        Err(EIO)
+    }
+}
diff --git a/drivers/gpu/nova-core/mm/pagetable.rs b/drivers/gpu/nova-core/mm/pagetable.rs
index 4070070922a4..4db4478564c2 100644
--- a/drivers/gpu/nova-core/mm/pagetable.rs
+++ b/drivers/gpu/nova-core/mm/pagetable.rs
@@ -383,3 +383,31 @@ fn from(val: AperturePde) -> Self {
         Bounded::from_expr(val as u64 & 0x3)
     }
 }
+
+/// Check if the PDB has valid, VRAM-backed page tables.
+#[cfg(CONFIG_NOVA_MM_SELFTESTS)]
+fn check_pdb_inner<M: MmuConfig>(
+    pramin: &pramin::Pramin,
+    pdb_addr: VramAddress,
+) -> Result {
+    let mut window = pramin.get_window()?;
+    let raw = window.try_read64(pdb_addr.raw())?;
+
+    if !M::Pde::new(raw).is_valid_vram() {
+        return Err(ENOENT);
+    }
+    Ok(())
+}
+
+/// Check if the PDB has valid, VRAM-backed page tables, dispatching by MMU version.
+#[cfg(CONFIG_NOVA_MM_SELFTESTS)]
+pub(super) fn check_pdb_valid(
+    pramin: &pramin::Pramin,
+    pdb_addr: VramAddress,
+    chipset: crate::gpu::Chipset,
+) -> Result {
+    match MmuVersion::from(chipset.arch()) {
+        MmuVersion::V2 => check_pdb_inner::<MmuV2>(pramin, pdb_addr),
+        MmuVersion::V3 => check_pdb_inner::<MmuV3>(pramin, pdb_addr),
+    }
+}
-- 
2.34.1

