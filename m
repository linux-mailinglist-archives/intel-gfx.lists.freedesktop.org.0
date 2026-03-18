Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id cD1oOkGEumnrXQIAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Wed, 18 Mar 2026 11:53:53 +0100
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 99E482BA471
	for <lists+intel-gfx@lfdr.de>; Wed, 18 Mar 2026 11:53:53 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 5F1BC10E7C1;
	Wed, 18 Mar 2026 10:53:49 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=Nvidia.com header.i=@Nvidia.com header.b="lsdtkf2c";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from PH0PR06CU001.outbound.protection.outlook.com
 (mail-westus3azon11011065.outbound.protection.outlook.com [40.107.208.65])
 by gabe.freedesktop.org (Postfix) with ESMTPS id E5C6F10E7C0;
 Wed, 18 Mar 2026 10:53:47 +0000 (UTC)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=STkg1Lp/5X25KqYvCbztwX6w9yoTa2JeOW63ONl+EzckZVoJ+Pmlnj66yOBIy76EIlyAyYXqmm3epX5Hry3QOWc+7udxsa5KwjZDCK3JTJwiIgd7TnlORuTOfzfICjZNRuRAjPRAUZeg8NFroBnbgD5aL2JdBk7yajgelZEbJRxRwDRcz5/PHy7LS/uzDXKRPOCErQZHjGOjJhZyjQMtJfAjYAXZiVq+DHyrJWcz07HPABXhFrjtL/iOv5p0g15tN5hnCgHo/6/CmG8NYnqErs7F6iXX6TBzgkH50xktz9eMgKPgVC769JxBbZYtEeH3YdmVVboBKLP69+ReQ36fZA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=r4FC3alME1o83dSXWr/NNL6b59JOeZobm5kra7KDq9o=;
 b=pmJx+UL25xPocwkyu/kvZGN4Y13lb+gnQkZoL0NybcVq3ZVBtxhQ8uIhREnN0j9XwAepLfUDbzUeTXIzOaLl0K8oU/NjA+qE2zk3S1ajyQfiztAmo+/CzBdmGWYrc0aWHBTgkPqlA/IrjpFSXq7a20lTOETqe4whInynDGuQHXoY+mp44AyhsKbXB+2QWbOVWjZzq0ZFDcYgjKIl0Yeg7c3BxYk3IKnp+4bZGP5LIhXXRa97ZGevbu/9x+QVeIBjMi1Z/4wrDoUhtuZyf7kbw7y0R39PqdgFlyzt6IAbu1zbQanY4bpvVXuEORaGOEKYdVvoDqBU+KhLBowFfiwBsQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=nvidia.com; dmarc=pass action=none header.from=nvidia.com;
 dkim=pass header.d=nvidia.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=Nvidia.com;
 s=selector2;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=r4FC3alME1o83dSXWr/NNL6b59JOeZobm5kra7KDq9o=;
 b=lsdtkf2cDGRhlwEqchJkymgdPbQBmTPVQAfXV045RyB4xKwUNFOTbna7V510RNcVpkLp+A0ss/4jP3iLZSOQbi1/M+wA3Jopf1smbEp7GohcqSdbTcbyarD5o6UIcHwtPEeQvlwYZ1wM0YBaa1EjpfzOn/zJdvAdhZHpcit8hoiF3yDt3SNJALoMNeRB5m5hNWPXs1m+JME7RMpGXqLOn2LRVncHT55D2RiKcEn+yjzsKrGFVtgc1hQFLapqkCB+Yt9NnuXEKLzw5VM/0qYoJjda/DS8V+FHG/Xcs4T31SAFZfpqAFAmkFKqSUYrupHe8cnGPGMp9Gy7eoIcn4k0JQ==
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=nvidia.com;
Received: from CH2PR12MB3990.namprd12.prod.outlook.com (2603:10b6:610:28::18)
 by SN7PR12MB6960.namprd12.prod.outlook.com (2603:10b6:806:260::18)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9745.9; Wed, 18 Mar
 2026 10:53:42 +0000
Received: from CH2PR12MB3990.namprd12.prod.outlook.com
 ([fe80::7de1:4fe5:8ead:5989]) by CH2PR12MB3990.namprd12.prod.outlook.com
 ([fe80::7de1:4fe5:8ead:5989%6]) with mapi id 15.20.9745.007; Wed, 18 Mar 2026
 10:53:42 +0000
Content-Transfer-Encoding: quoted-printable
Content-Type: text/plain; charset=UTF-8
Date: Wed, 18 Mar 2026 19:53:38 +0900
Message-Id: <DH5UOS96171T.Z8XSRX583Q60@nvidia.com>
Cc: "Joel Fernandes" <joelagnelf@nvidia.com>,
 <linux-kernel@vger.kernel.org>, "Miguel Ojeda" <ojeda@kernel.org>, "Boqun
 Feng" <boqun@kernel.org>, "Gary Guo" <gary@garyguo.net>,
 =?utf-8?q?Bj=C3=B6rn_Roy_Baron?= <bjorn3_gh@protonmail.com>, "Benno Lossin"
 <lossin@kernel.org>, "Andreas Hindborg" <a.hindborg@kernel.org>, "Trevor
 Gross" <tmgross@umich.edu>, "Alex Gaynor" <alex.gaynor@gmail.com>, "Danilo
 Krummrich" <dakr@kernel.org>, "Dave Airlie" <airlied@redhat.com>, "David
 Airlie" <airlied@gmail.com>, "Maarten Lankhorst"
 <maarten.lankhorst@linux.intel.com>, "Maxime Ripard" <mripard@kernel.org>,
 "Thomas Zimmermann" <tzimmermann@suse.de>, "Simona Vetter"
 <simona@ffwll.ch>, "Daniel Almeida" <daniel.almeida@collabora.com>, "Koen
 Koning" <koen.koning@linux.intel.com>, "Nikola Djukic"
 <ndjukic@nvidia.com>, "Philipp Stanner" <phasta@kernel.org>, "Elle Rhumsaa"
 <elle@weathered-steel.dev>, "Jonathan Corbet" <corbet@lwn.net>, "Alex
 Deucher" <alexander.deucher@amd.com>, =?utf-8?q?Christian_K=C3=B6nig?=
 <christian.koenig@amd.com>, "Jani Nikula" <jani.nikula@linux.intel.com>,
 "Joonas Lahtinen" <joonas.lahtinen@linux.intel.com>, "Rodrigo Vivi"
 <rodrigo.vivi@intel.com>, "Tvrtko Ursulin" <tursulin@ursulin.net>, "Huang
 Rui" <ray.huang@amd.com>, "Matthew Auld" <matthew.auld@intel.com>, "Matthew
 Brost" <matthew.brost@intel.com>, "Lucas De Marchi"
 <lucas.demarchi@intel.com>, =?utf-8?q?Thomas_Hellstr=C3=B6m?=
 <thomas.hellstrom@linux.intel.com>, "Helge Deller" <deller@gmx.de>, "John
 Hubbard" <jhubbard@nvidia.com>, "Alistair Popple" <apopple@nvidia.com>,
 "Timur Tabi" <ttabi@nvidia.com>, "Edwin Peer" <epeer@nvidia.com>, "Andrea
 Righi" <arighi@nvidia.com>, "Andy Ritger" <aritger@nvidia.com>, "Zhi Wang"
 <zhiw@nvidia.com>, "Balbir Singh" <balbirs@nvidia.com>,
 <alexeyi@nvidia.com>, "Eliot Courtney" <ecourtney@nvidia.com>,
 <dri-devel@lists.freedesktop.org>, <rust-for-linux@vger.kernel.org>,
 <linux-doc@vger.kernel.org>, <amd-gfx@lists.freedesktop.org>,
 <intel-gfx@lists.freedesktop.org>, <intel-xe@lists.freedesktop.org>,
 <linux-fbdev@vger.kernel.org>
Subject: Re: [PATCH v13 1/1] rust: interop: Add list module for C linked
 list interface
From: "Alexandre Courbot" <acourbot@nvidia.com>
To: "Alice Ryhl" <aliceryhl@google.com>
References: <20260317201710.934932-1-joelagnelf@nvidia.com>
 <20260317201710.934932-2-joelagnelf@nvidia.com>
 <46986da6-8c89-475c-8561-964adaa7d034@nvidia.com>
 <abppV3e91iVzplcv@google.com>
In-Reply-To: <abppV3e91iVzplcv@google.com>
X-ClientProxiedBy: TYCP286CA0216.JPNP286.PROD.OUTLOOK.COM
 (2603:1096:400:3c5::12) To CH2PR12MB3990.namprd12.prod.outlook.com
 (2603:10b6:610:28::18)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: CH2PR12MB3990:EE_|SN7PR12MB6960:EE_
X-MS-Office365-Filtering-Correlation-Id: ac12986b-f350-466d-cf7b-08de84dc9e88
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
 ARA:13230040|7416014|376014|10070799003|366016|1800799024|13003099007|18002099003|56012099003|22082099003;
X-Microsoft-Antispam-Message-Info: +7J4rMQJAoIEdHzztsRIRTRHKPk6ThsWJoYS2aBdx4RyAi7YbnsZanSKMYGyateFqLsOGLVqxkm/3Qk3mwqkAj8G5qijNrAID6XfDhuX8g1xmsMZtcuuWdWzd8lM/Law8+ih8mJVZ0O5VdFgOU/90A8+2Qvptx9ni1RJVA/jzbSGb0MFpBi3GojiMLehZQ/UOPzjkt2H9HzxJxx1YEtvTVxcXjdEZbW74U7U0Txojo+BFR97GNy3zhA1EkZyCxh+aH+D+odT3KrXDVdNG02oneM3bHHMySgTjtG/1KN0y9r6ziFjxVLt16tzUayKt188xi3U6mXq+tlR/bLRDxJUH9jBgzlXFEXfdLj7p1i3wMh5iIqF5Ev9zdb4W/SVOQvSsPZhxYJHKS8I4zi5+tQfhd5BKOwdf7yg5RlAx/yYHQLZVqt6mMD7qqinn5anWLQdQ7KSUPm+kwU2V+bSSQOoJSvilbiklvFroDyMloaUMUjuhVA42Kjuvy3u9dmqm5eDZk/N4671o+slyvk5pYwdHY+2r9/vk2vJybU04OOmThdTLJnSRruqKLip/tfyz3xPUE47m9Y0kLhtQZWfCYdJO50HUvlGpP5v9xYs+O+OyBaJU+yJQefbOOtnsa0r9J+jPVAJuuQ1qj6nmD3Yi9fCvj94KTZOavmRpNrxolvM0vMnTwVNB2pQitH7ZvJUGvFeAIcGHhCMSNwafppC9SYkzc0TW83TCOspP+LlA91WKvw=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:CH2PR12MB3990.namprd12.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(7416014)(376014)(10070799003)(366016)(1800799024)(13003099007)(18002099003)(56012099003)(22082099003);
 DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 2
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?Vm9XUytWdGZ3dHNPYnVzV1Z5a3QrK20xZThDaU4ySmlYbC85RkJpeXpOU1Rm?=
 =?utf-8?B?WkVZUjQ2LzlIblhYcURhYldzbkRkdHh6azc5WVE0bk52OGRjWVZ4TjRrQWtN?=
 =?utf-8?B?MzNzZWI2N0Y1d0FMN2MrMERHTllYVzJMcTk5NUlGdWNpbVVlWkxRalcrNEp5?=
 =?utf-8?B?UU9MWlNxQy9xZEYxb1drT0l6NURqSkE3NG5iT3ZrRE5TaGRBZFk0bU5EQWhV?=
 =?utf-8?B?d2ZETndoSFU2eU0vQVhLZktHc21oeHRBQTF6a1dNQzFKK0I2WWRSbGdpaTRR?=
 =?utf-8?B?b1J3cyt4YTZKNWdXb0p0UFFWTmdjZVBXRGdmbGJQeGdLdFZJSGYxb2JPTUNR?=
 =?utf-8?B?RTIvUkpCd3UxSHljWVpSV09DMDZZOVJ2MjQxSHhhMnZMeFRFdjZDTVExNWc0?=
 =?utf-8?B?TE5yTEh6R09VWnV0a0NsdjVTVFgyN2M5WlpKVTRHL3pTWHBpMk0xLzFIeHll?=
 =?utf-8?B?UmhndHl5RFMvZTZwd25BZ0VuNXUwVGJreUlCS2xvVzVxQUo3NFJseFBNSHRN?=
 =?utf-8?B?MnRCalhpMUk4MzBDZU51eWdFQjJZL0dDbzA1dVY5bFdCcGtTS0JyWU1RcGVa?=
 =?utf-8?B?L0lEYkhVWC90a211TFlVT1ZHZnNkWjdDSk9IYzBMQUROM1o3a1hwTTdQR3Vp?=
 =?utf-8?B?bzlVeE1tay9lSzdHdUR5dmxQY1dlaHEyWkZTemJEM05DNTZ3QkFyS3hwMitP?=
 =?utf-8?B?MlhVZk5jMFpVWDFnc3Z1Qk9Db3BzSTZYOVJ1L0p0NEhTRitBRm8ya3FiMldP?=
 =?utf-8?B?cTUvQVFwZ0pRSnhGSkVUMG4wODFFdlpSdWlNU0FvSU1RNm1YcXBXbUtib0pQ?=
 =?utf-8?B?N1BhelkvNUFPVXlhL01tTjAyd1ZyMjBPbFl5b2xVb3F6eWhiYlpMNk1sREYx?=
 =?utf-8?B?QlEvWkR4TENrTGVqd2JCUWluRGYvUTFVNzdPSDN5Wjd4UjErVzBKNkV0V3pj?=
 =?utf-8?B?REhreDJRNVFrTWdIVEJmWkpSSjB6eks4T2F3Sk5JTEVMckJYdldJaktEWnFq?=
 =?utf-8?B?d3RjNnFQd3N1KzVpWnZWaitqNXVxSVhWbjBSWllSaHluZWZiZjBVKytzVHhk?=
 =?utf-8?B?NDFOT0lMOThzRk1JVXRUL09lQ2JmVDRucWZEZWs2cXZONnpuc3FQaWU4NzB2?=
 =?utf-8?B?bFdwUHg4bGtnRmY3eE9DWlhGZU9DVVRhSmpUc1BqVGlOWVZ5VkQ1YXc3aEVU?=
 =?utf-8?B?Sm5paWM2eEhKVzhjcytFSmh4d3Bwalc4dHlPUXZhaWxGcFZ4UzIwemRyYUs5?=
 =?utf-8?B?c3RjYlhqcVFlU2VEZ2p5VjdsWjdRMTdhS1RKSzNtQnpoRm9uY1lTa2RCRzAz?=
 =?utf-8?B?cm5HZHF5NXEzbFVjTHNXeHIvVkZHTlhvS2xmWUh2SHo4TEhLdG5xeHgwdllx?=
 =?utf-8?B?Q0ZFdUptSDlhVzBXenZWUjlzRUpIbkRMRktZbWoyVU5BUXo2SHJlckpZcmFB?=
 =?utf-8?B?ZnlVeENXbGhRbWhuV1MzYVVpeDQ3SnZCQ3kxR2dvbTZJVW1OV0VqeHRkR3U2?=
 =?utf-8?B?eUxabW12S09vTWc5SVplNG9GakNlUS8rNHBMQzNESHN5Rk9EVVIwYmxDdVpP?=
 =?utf-8?B?OW93UG5yQThJUzNXRVFFbmJRTzVXRHlVVU9hN0VMWDEzaXdYZGU2clQ3WndM?=
 =?utf-8?B?MGlBMCttM2FjWDduVjBIU2dUU2lXRzdJdi9TcG4vd2lHOEJKRnEwaGlLV0pS?=
 =?utf-8?B?OXdYRVRFd0JET3VuQlJrZkdPY001VjNQN2E1dnR0cUFmd3htc1FXTitra0JQ?=
 =?utf-8?B?d0pUTms4TjhXRkZEMlByMXFGM1U2V1o4VWNLRXVEQWVqMm5hdUVub1dWQ2Nr?=
 =?utf-8?B?MlRkUVZya3Yvc2VSRHFCdFNzVnNQekVkV1BUYXYwYS9TRHdOeUFVREV0MFRo?=
 =?utf-8?B?QmRvcFp3cDVzaGx2c1oxVHhCUi9Obk9udlc0WnBMamtidmVPWFVLWWJRRTBs?=
 =?utf-8?B?dXMxa1VRaHFMc09hNHhaNk1TSTFoU214MDFOR3NBYUJXRUZORC9DSnphR1J1?=
 =?utf-8?B?VUJmSktuY2V1aHRHQTlWcWwzRHJVRmpZTmd3RXB4TWdWN0NlZlR3SXNzNkFq?=
 =?utf-8?B?dnN4YlVTdWFtcVVWOXgwUzZtM3FVWko3YllVYnl2TC9iQS9JV3NjM1ZOc0pl?=
 =?utf-8?B?Z0w2VWZUU2dmN2FRZW9LU3BTWjdCemN1OTVWaTNNU0U3WWRRcXR4cFRZaHJW?=
 =?utf-8?B?dGhEdlhIdk9JWDg1NFBZUEw4RlV4RGIrY1BkeEt3cTNET1kyc3ZXMko2Rklm?=
 =?utf-8?B?RkZCNVE0aCtrTGQzVW9rUFdRemttaHF1Mk4yT2lUUHBxQlFQOEJxSVRvU2VI?=
 =?utf-8?B?cFEvQ29WSzBLM0lTbENZQWFheEdXSmUxZ0tFVDd6VEFKN1FTNVFWNlhyWUQ5?=
 =?utf-8?Q?fDmhQTHaz8rjfKPP2oKnsqlWyK/pf5IHGPjEcawPHZ3vW?=
X-MS-Exchange-AntiSpam-MessageData-1: 7CS1c9pkVMvq3w==
X-OriginatorOrg: Nvidia.com
X-MS-Exchange-CrossTenant-Network-Message-Id: ac12986b-f350-466d-cf7b-08de84dc9e88
X-MS-Exchange-CrossTenant-AuthSource: CH2PR12MB3990.namprd12.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 18 Mar 2026 10:53:42.3133 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 43083d15-7273-40c1-b7db-39efd9ccc17a
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: +hYPXzgVMy1MKRIZDOtlrlAZiNrb3DsO9gd864V/4glJwoBh3xs0SFyzmkp0QGPvZ1YdeGkz5ZW3D/HyoZZPjQ==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SN7PR12MB6960
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
X-Spamd-Result: default: False [-0.81 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[microsoft.com:s=arcselector10001:i=1];
	DMARC_POLICY_ALLOW(-0.50)[nvidia.com,reject];
	MAILLIST(-0.20)[mailman];
	R_DKIM_ALLOW(-0.20)[Nvidia.com:s=selector2];
	R_SPF_ALLOW(-0.20)[+ip4:131.252.210.177:c];
	RWL_MAILSPIKE_GOOD(-0.10)[131.252.210.177:from];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	FORGED_SENDER_MAILLIST(0.00)[];
	FREEMAIL_CC(0.00)[nvidia.com,vger.kernel.org,kernel.org,garyguo.net,protonmail.com,umich.edu,gmail.com,redhat.com,linux.intel.com,suse.de,ffwll.ch,collabora.com,weathered-steel.dev,lwn.net,amd.com,intel.com,ursulin.net,gmx.de,lists.freedesktop.org];
	MIME_TRACE(0.00)[0:+];
	FROM_HAS_DN(0.00)[];
	MISSING_XM_UA(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	NEURAL_HAM(-0.00)[-0.999];
	RCPT_COUNT_GT_50(0.00)[53];
	FROM_NEQ_ENVFROM(0.00)[acourbot@nvidia.com,intel-gfx-bounces@lists.freedesktop.org];
	DKIM_TRACE(0.00)[Nvidia.com:+];
	MID_RHS_MATCH_FROM(0.00)[];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	TAGGED_RCPT(0.00)[intel-gfx];
	TO_DN_SOME(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[collabora.com:email,gabe.freedesktop.org:helo,gabe.freedesktop.org:rdns,Nvidia.com:dkim,nvidia.com:email,nvidia.com:mid,garyguo.net:email]
X-Rspamd-Queue-Id: 99E482BA471
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

On Wed Mar 18, 2026 at 5:59 PM JST, Alice Ryhl wrote:
> On Tue, Mar 17, 2026 at 04:18:46PM -0400, Joel Fernandes wrote:
>>=20
>>=20
>> On 3/17/2026 4:17 PM, Joel Fernandes wrote:
>> > Add a new module `kernel::interop::list` for working with C's doubly
>> > circular linked lists. Provide low-level iteration over list nodes.
>> >=20
>> > Typed iteration over actual items is provided with a `clist_create`
>> > macro to assist in creation of the `CList` type.
>> >=20
>> > Cc: Nikola Djukic <ndjukic@nvidia.com>
>> > Reviewed-by: Daniel Almeida <daniel.almeida@collabora.com>
>> > Reviewed-by: Alexandre Courbot <acourbot@nvidia.com>
>> > Acked-by: Alexandre Courbot <acourbot@nvidia.com>
>> > Acked-by: Gary Guo <gary@garyguo.net>
>> > Acked-by: Miguel Ojeda <ojeda@kernel.org>
>> > Signed-off-by: Joel Fernandes <joelagnelf@nvidia.com>
>> > ---
>> >  MAINTAINERS                 |   8 +
>> >  rust/helpers/helpers.c      |   1 +
>> >  rust/helpers/list.c         |  17 ++
>> >  rust/kernel/interop.rs      |   9 +
>> >  rust/kernel/interop/list.rs | 342 +++++++++++++++++++++++++++++++++++=
+
>> >  rust/kernel/lib.rs          |   2 +
>> >  6 files changed, 379 insertions(+)
>> >  create mode 100644 rust/helpers/list.c
>> >  create mode 100644 rust/kernel/interop.rs
>> >  create mode 100644 rust/kernel/interop/list.rs
>> >=20
>> > diff --git a/MAINTAINERS b/MAINTAINERS
>> > index 4bd6b538a51f..e847099efcc2 100644
>> > --- a/MAINTAINERS
>> > +++ b/MAINTAINERS
>> > @@ -23251,6 +23251,14 @@ T:	git https://github.com/Rust-for-Linux/linu=
x.git alloc-next
>> >  F:	rust/kernel/alloc.rs
>> >  F:	rust/kernel/alloc/
>> > =20
>> > +RUST [INTEROP]
>> > +M:	Joel Fernandes <joelagnelf@nvidia.com>
>> > +M:	Alexandre Courbot <acourbot@nvidia.com>
>> > +L:	rust-for-linux@vger.kernel.org
>> > +S:	Maintained
>> > +T:	git https://github.com/Rust-for-Linux/linux.git interop-next
>> > +F:	rust/kernel/interop/
>>=20
>> Sorry, I forgot to add an additional F: for the rust/kernel/interop.rs f=
ile.
>> Danilo/Miguel, do you mind adding this when applying?
>
> I think you should consider a mod.rs file to avoid this. It's tiny, and
> just re-exports submodules, so I don't think the "mod.rs name in file
> view" concern is that big, and IMO having files related to interop/
> inside the directory is much better than having them outside.

Ah, so there is a rationale for using a `mod.rs` file after all. What
are the project-wide guidelines re: `foo.rs` vs `foo/mod.rs`?

