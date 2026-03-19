Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id EC6UN0fqu2kKqQIAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Thu, 19 Mar 2026 13:21:27 +0100
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 1CE432CB137
	for <lists+intel-gfx@lfdr.de>; Thu, 19 Mar 2026 13:21:27 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 8521910E15B;
	Thu, 19 Mar 2026 12:21:25 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (1024-bit key; unprotected) header.d=garyguo.net header.i=@garyguo.net header.b="Z98da+Pg";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from CWXP265CU010.outbound.protection.outlook.com
 (mail-ukwestazon11022101.outbound.protection.outlook.com [52.101.101.101])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 0EBD210E9E5;
 Thu, 19 Mar 2026 12:21:24 +0000 (UTC)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=QCq1kUmgkJcgX6shziKOE/RnksPEnnHn16oZHh7a+aHSmDb7J0/PiIYpJNVb1jsrHUhPlhnL/Z1VBWp22lTm3980qy04J+MTuknEYXDor2mapphQ9HabkD2cKLu1M93h0Unh9EoK3GsBlvPUH9QGcS3galfVJE/zVU6WSbOQHLM+pdcIDqX42bIvP/HMTg23WY9C9GQBpCczH/MNqBATF08Le5hKngo6mPT9N4ndO8jw2NHZseJGqeKvBvG7Juq5O/AyLD7cle5UPfpyXfLop+xJbxdVUEv6ilTkH5XUmqMa1jQ/KMLnYJMkZ+2sCCpA/LCPOtnRRU6efJZZGfONjw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=QUDyMS4SPYtVrFK0EsHcm19mC4nwxv/itzEURW3MnZk=;
 b=Xywd/DFNzfdBAgns0Qc6NZ4hh/92RiFdz/O3tNSn43d2qVcapFAIPKCS3xRnF+u0OTfv3EMjZ7VtRjG1rWpbL6dk40LKq7zTWFqrAXFHjuNYf0qU2QEvhnhPVxOs/yljQGva01hX+AZd/U0i4DifbO2PieCNaCwtZQD2WcgKVuCoPLZJQIrGBN9g4QfIwM7zmzCzWW2PkA/HybTi9SkYTxrcQEyfqH57/gjVszL+/oTmYirFaReXHjE4qPRUO0JN93rSQLnPsbqoIxGCOB7XADuVprxdp1aGgdZAKTwLukTFSto4wAkHe3pxLxqWZvCQQIZLuQP81EZUa1R3IbzmhA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=garyguo.net; dmarc=pass action=none header.from=garyguo.net;
 dkim=pass header.d=garyguo.net; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=garyguo.net;
 s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=QUDyMS4SPYtVrFK0EsHcm19mC4nwxv/itzEURW3MnZk=;
 b=Z98da+PgDVNZvs7hO4WVMVVvfrcJFJHWzr8Rn1lZPusrzHvuG9bd4JRCgBsESyA0zNgAlJ1bQlLkgGa3XLRNykph/KOvrvdSPZrQhTqFb4DidhbvTl4Bn8dbwC9KD6RkrUE7M1QvRSJeigSV+tmg7/YMUKn4CM42o5k4xd6b/lA=
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=garyguo.net;
Received: from LOVP265MB8871.GBRP265.PROD.OUTLOOK.COM (2603:10a6:600:488::16)
 by CW1P265MB8412.GBRP265.PROD.OUTLOOK.COM (2603:10a6:400:26f::9) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9723.19; Thu, 19 Mar
 2026 12:21:20 +0000
Received: from LOVP265MB8871.GBRP265.PROD.OUTLOOK.COM
 ([fe80::1c3:ceba:21b4:9986]) by LOVP265MB8871.GBRP265.PROD.OUTLOOK.COM
 ([fe80::1c3:ceba:21b4:9986%5]) with mapi id 15.20.9723.018; Thu, 19 Mar 2026
 12:21:19 +0000
Content-Transfer-Encoding: quoted-printable
Content-Type: text/plain; charset=UTF-8
Date: Thu, 19 Mar 2026 12:21:18 +0000
Message-Id: <DH6R6GB10S07.AG2EY39F0P85@garyguo.net>
Cc: "Joel Fernandes" <joelagnelf@nvidia.com>,
 <linux-kernel@vger.kernel.org>, "Miguel Ojeda" <ojeda@kernel.org>, "Boqun
 Feng" <boqun@kernel.org>, =?utf-8?q?Bj=C3=B6rn_Roy_Baron?=
 <bjorn3_gh@protonmail.com>, "Benno Lossin" <lossin@kernel.org>, "Andreas
 Hindborg" <a.hindborg@kernel.org>, "Alice Ryhl" <aliceryhl@google.com>,
 "Trevor Gross" <tmgross@umich.edu>, "Alex Gaynor" <alex.gaynor@gmail.com>,
 "Dave Airlie" <airlied@redhat.com>, "David Airlie" <airlied@gmail.com>,
 "Maarten Lankhorst" <maarten.lankhorst@linux.intel.com>, "Maxime Ripard"
 <mripard@kernel.org>, "Thomas Zimmermann" <tzimmermann@suse.de>, "Simona
 Vetter" <simona@ffwll.ch>, "Daniel Almeida" <daniel.almeida@collabora.com>,
 "Koen Koning" <koen.koning@linux.intel.com>, "Nikola Djukic"
 <ndjukic@nvidia.com>, "Alexandre Courbot" <acourbot@nvidia.com>, "Philipp
 Stanner" <phasta@kernel.org>, "Elle Rhumsaa" <elle@weathered-steel.dev>,
 "Jonathan Corbet" <corbet@lwn.net>, "Alex Deucher"
 <alexander.deucher@amd.com>, =?utf-8?q?Christian_K=C3=B6nig?=
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
From: "Gary Guo" <gary@garyguo.net>
To: "Danilo Krummrich" <dakr@kernel.org>, "Gary Guo" <gary@garyguo.net>
X-Mailer: aerc 0.21.0
References: <20260317201710.934932-1-joelagnelf@nvidia.com>
 <20260317201710.934932-2-joelagnelf@nvidia.com>
 <DH6QAR1HHXRV.1Y7IZ22HC9FZ3@garyguo.net>
 <DH6QUO2T941E.2S1UP7EABOP42@kernel.org>
In-Reply-To: <DH6QUO2T941E.2S1UP7EABOP42@kernel.org>
X-ClientProxiedBy: LO4P123CA0681.GBRP123.PROD.OUTLOOK.COM
 (2603:10a6:600:351::15) To LOVP265MB8871.GBRP265.PROD.OUTLOOK.COM
 (2603:10a6:600:488::16)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: LOVP265MB8871:EE_|CW1P265MB8412:EE_
X-MS-Office365-Filtering-Correlation-Id: f4fa447c-1346-4d0f-617d-08de85b206c9
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
 ARA:13230040|7416014|1800799024|376014|366016|10070799003|56012099003|22082099003|18002099003;
X-Microsoft-Antispam-Message-Info: /ukFdTC/J4uH9dT5W3gZ9msFb9OU+kOHa+vdnI7kYJ2DDlLp4qTRChAMPbrkJG+JE4S91Lh2XoXFHSiyTFDPwM69Kwclx8MLx9AiOPUsOrqmvhZ39zJxihitM5Rn44ep5VmLYyTvwfjzomISNymXkqAEn6mUMkm6pUOL25RVW1t4bBPtHrn3ZVI6Z76+AQYi23CDH8NslLQWyrNrxekqtxULNO2+REd6SmlaFLhflDdlYB/YPonY57QZVKRizxqNWU8Mb3ln/qMDIPgDckCmZG56JU4HqGFFKK5mfvLkxwec4V92A6pATTmy2DcRjmwx813/HuFZKNSOQEmcaEl4WJtaMJk3+hM6y90UA6GSMLTC+O8eUwc/rs89lK+34bqJGD244Fpv8LCQCRrCpzXAOZDrviBTLFsgQUPbl54WyqcXO7xDAHtHeBgnMf0YFQqtjj4sAsgmMz1GJcqxZMAAKzx7lai0Mv3PMi5gdvAIGNt45yJBqQuGdn95dhX2EAgXsXyoglfRxrkwkjn6qyM3zgwoIz4OQA4dydfFjaTpymnjXQKF3Lwjh53g0OYJJjlkFTNG2RIeT5rL9CHWOjT+ixN2cUW9PLkjUg36PVcnICF63K8Ws9GDYF7aKTokViiaDpsh76NvDJjfz239Vb8AanwD0EYhtT0nMj/icFRgBSNGbygtUXaiyiizHK8stXqq
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:LOVP265MB8871.GBRP265.PROD.OUTLOOK.COM; PTR:; CAT:NONE;
 SFS:(13230040)(7416014)(1800799024)(376014)(366016)(10070799003)(56012099003)(22082099003)(18002099003);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?K29sYUZCQmJuNHRxcWpnK2ErOXFoSUlZTjZ6aEFjRDFxZU5IM0QwUm5ydHpk?=
 =?utf-8?B?Z1VxRFdxTTZrbTVPcnJCOXdMNVM0S1lTUWxESlg5VFdyaGZiR2tNTm1saHZ6?=
 =?utf-8?B?ajdxWWhTMFB1ZUZIS2JaR3MxaUh4eEVPVTNwTE1mamFRQkE5M0pmVGZ6Kzdo?=
 =?utf-8?B?U3N6ak9rZU1neWhpWmhkV2lQL01iaXdUL0FmQWFDUUNHdlV5QUR5MGZqNERU?=
 =?utf-8?B?Nm5CNEs3anovbWNnNHBTRFdGWkpNeTl6RUc3NmgzUmNGdmdkRVFOY2hFL2dY?=
 =?utf-8?B?Q0ZmU29GUXArblN3ZDJzZVBONTBEMGtWUHNjZHhmcFFVb0RSZGdCeE9OVm5o?=
 =?utf-8?B?ajRGTkJuUEVxQ2YrUzlodndRaHpmZ1hYU3FJOVNFdjRVZVZGNHpmK1RLSjZS?=
 =?utf-8?B?MWYrNEJsRnJvV1NTMUo0R3d6aTlhb0JqU1htaUJ0ZVpCK0hSUG1Cd2tVK0lL?=
 =?utf-8?B?Q1NvWjZxNHFrNDZmSjhVVnlaT3lLd2xyc09MY05ML1VuMDB2YXY3K1FENGxv?=
 =?utf-8?B?cExaem93cmpXS0N3WHBPSldrMW55eW1CYXhyaWxVd1ZMUFFzN01neXhoclZ0?=
 =?utf-8?B?WVZ0TGZTMmZ6UHlQVDRWSklRaUw3dVVXT2ZrSE5nT0c0TWpwb1lMMFdJZG5k?=
 =?utf-8?B?NGR3cUtKWjdTdUhCU2h5UnorQnhNSGZjUDFHOWZqbVRQZ2N6azhxVDZIcWkw?=
 =?utf-8?B?RHdMTkVQMFRqUmU4SEc4VmJ5WXI3VWxwQlBaaGJQemNNK1J2cE1FMU5EcHZZ?=
 =?utf-8?B?NDZkL1BKNWZWOC9zNmlyNEEzY0hubW9DWFhiV1pqVWptY0VMUjZTcE03eTlS?=
 =?utf-8?B?a1lZQVIzdmIvYlg5K3RWdkx0UkhkcnVaM1lmS2MwckxobEtGcHVTMnY4Ums1?=
 =?utf-8?B?Y0orVk9XNEYydjJYUEo0Z2FzMlJtd3FkYlFLMUZmdVB1T1BkZXhvejk2Q0Fk?=
 =?utf-8?B?QmdEQ2lKd1lvVkUyNlA5U2VLYjBPTkF1VnI0OW1QRWVERGM5K1lDTWtzbkVj?=
 =?utf-8?B?ZEhGQm9CZmZQRG1obk9vd2t0WVNrVStOQldURG00S014RjNjUS8rV1R0Nyt2?=
 =?utf-8?B?YlE4SVN2U2hQM0xqNnFHOHZmZlRwNHhJTEt6WVl6Zkh2VWJabEV6aVZLdjQ5?=
 =?utf-8?B?RjhTUXdOS09kYW91dzVRN2xtOGdlNUNlVDZIWXA3QVI4Q25vWm41WnBPSUtq?=
 =?utf-8?B?ckR6V3pTQ01CaTdjTHNjN25PTENCMktLTWNYVmJOZXhmK2Z5QnBycnFlcEVW?=
 =?utf-8?B?a1FvWStaTTdCSnRXNi9ZK3MzalZBSDkvdEJ4d1MrMjRNelRCOHlYam1HWXh1?=
 =?utf-8?B?ektzaE5HZTNsQWc5MXhxTEVSWWhRWmM1YkR5dGFzOTZNKzY0Q0tjWVVQdHpI?=
 =?utf-8?B?MnJ6SG40cFU4R0FsOFNoWUozbkd6OVBsaG1kL1FPSkhzS2NXWWZIdXp2Q1Ru?=
 =?utf-8?B?b3RpbGhrUWtMMFJCTlM3N21wOWFZZVpVZmlpTmlEZmJVUjBzNWZOejdTRUZ6?=
 =?utf-8?B?NzExcWw1NXZDRjJzMGV6cyt6NGFadVVhdTBvUWI2OUlPL1E1bDZnS0tCUFpq?=
 =?utf-8?B?WWlNRUV2N2hyV2w1WTluamgyb0VuRTI4NWh5RHd1eUhxWHFRcmM1VzVGd3BI?=
 =?utf-8?B?QUpPOHh2N0JqTVUyLzZlbHp6R25XWlRmWHc5aEpVK3FKUFFZemNBQ3RCcHBJ?=
 =?utf-8?B?ZWRnL1ZVZ0JvemZ3VXBOaFZkaTlVTEFYeDBqVGJNU0RxVDFhMUlpZll0SzZU?=
 =?utf-8?B?ckxiQktCdTRSZ2FqR29Pd1FxVjNRdjAzWjhnWTdEL05yb1pmV1orWTV3eWp2?=
 =?utf-8?B?bXZmOXBYUDgxSFZTN1kxNzZId3N2Q0ppNXFLRHlwSGJFQTRuQmY5Wjg1M0kv?=
 =?utf-8?B?bU4rQmJUeGNxbGwyd3BneG9rNVozVFY4bEJpWEkyOWExR0N3R3VQZ1hkTFFF?=
 =?utf-8?B?MFBUbFpZRkZ0Vm5Edis5OWgyNjVXZWQ5NFpyckM5R1ZLTm1zQWVmS1Y4T0dY?=
 =?utf-8?B?QmVBWENhbldWU3ZqNmN6RFpxeldIUEJrdERSeHZ0Z3pLUXJQdm14aFhOWm1O?=
 =?utf-8?B?RXhXQzU1K3B6b1B1U2VNbGVFVmp3QnVMVTJCUXJBVUxvaHBtS0Ewa3FQRU9V?=
 =?utf-8?B?a0NSbDVrdHdVQ3Z0d25xKy9zVUJmYUM5OCtKaEovcnIvKzZkVDV3TFh6TzQy?=
 =?utf-8?B?L1dlbnBxQmpLR2RQM050L1ZKNzVHNFNnSlJyaWN6U0QvaGUwaHRmOG9hV3B0?=
 =?utf-8?B?MDRSaUppNXZzbDF5czVCRWx2WCtjcTFZTUIrRTJkNkJ6ZGlJc1hOQnZsVVJS?=
 =?utf-8?B?ZkJYdUVKc2FTaVZzU1VkYi90SjQrL3ZnQ1VLMjdrRGVMY1J6OC9iZz09?=
X-OriginatorOrg: garyguo.net
X-MS-Exchange-CrossTenant-Network-Message-Id: f4fa447c-1346-4d0f-617d-08de85b206c9
X-MS-Exchange-CrossTenant-AuthSource: LOVP265MB8871.GBRP265.PROD.OUTLOOK.COM
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 19 Mar 2026 12:21:19.8496 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: bbc898ad-b10f-4e10-8552-d9377b823d45
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: Rz8D+2P/7ElgtF1BXxEq3MeSJOhLnJpc3pO+jmB9waY5tIBb8dST/TxiDIgALQKpqb51NeE4/fKTYl3CdHm+6Q==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CW1P265MB8412
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
	DMARC_POLICY_ALLOW(-0.50)[garyguo.net,none];
	MAILLIST(-0.20)[mailman];
	R_DKIM_ALLOW(-0.20)[garyguo.net:s=selector1];
	R_SPF_ALLOW(-0.20)[+ip4:131.252.210.177:c];
	RWL_MAILSPIKE_GOOD(-0.10)[131.252.210.177:from];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	FORGED_SENDER_MAILLIST(0.00)[];
	FREEMAIL_CC(0.00)[nvidia.com,vger.kernel.org,kernel.org,protonmail.com,google.com,umich.edu,gmail.com,redhat.com,linux.intel.com,suse.de,ffwll.ch,collabora.com,weathered-steel.dev,lwn.net,amd.com,intel.com,ursulin.net,gmx.de,lists.freedesktop.org];
	MIME_TRACE(0.00)[0:+];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	RCPT_COUNT_GT_50(0.00)[54];
	FROM_NEQ_ENVFROM(0.00)[gary@garyguo.net,intel-gfx-bounces@lists.freedesktop.org];
	DKIM_TRACE(0.00)[garyguo.net:+];
	NEURAL_HAM(-0.00)[-0.991];
	TAGGED_RCPT(0.00)[intel-gfx];
	MID_RHS_MATCH_FROM(0.00)[];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	DBL_BLOCKED_OPENRESOLVER(0.00)[nvidia.com:email,collabora.com:email,garyguo.net:dkim,garyguo.net:email,garyguo.net:mid,gabe.freedesktop.org:helo,gabe.freedesktop.org:rdns]
X-Rspamd-Queue-Id: 1CE432CB137
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

On Thu Mar 19, 2026 at 12:05 PM GMT, Danilo Krummrich wrote:
> On Thu Mar 19, 2026 at 12:39 PM CET, Gary Guo wrote:
>> On Tue Mar 17, 2026 at 8:17 PM GMT, Joel Fernandes wrote:
>>> Add a new module `kernel::interop::list` for working with C's doubly
>>> circular linked lists. Provide low-level iteration over list nodes.
>>>
>>> Typed iteration over actual items is provided with a `clist_create`
>>> macro to assist in creation of the `CList` type.
>>>
>>> Cc: Nikola Djukic <ndjukic@nvidia.com>
>>> Reviewed-by: Daniel Almeida <daniel.almeida@collabora.com>
>>> Reviewed-by: Alexandre Courbot <acourbot@nvidia.com>
>>> Acked-by: Alexandre Courbot <acourbot@nvidia.com>
>>> Acked-by: Gary Guo <gary@garyguo.net>
>>> Acked-by: Miguel Ojeda <ojeda@kernel.org>
>>> Signed-off-by: Joel Fernandes <joelagnelf@nvidia.com>
>>> ---
>>>  MAINTAINERS                 |   8 +
>>>  rust/helpers/helpers.c      |   1 +
>>>  rust/helpers/list.c         |  17 ++
>>>  rust/kernel/interop.rs      |   9 +
>>>  rust/kernel/interop/list.rs | 342 ++++++++++++++++++++++++++++++++++++
>>>  rust/kernel/lib.rs          |   2 +
>>>  6 files changed, 379 insertions(+)
>>>  create mode 100644 rust/helpers/list.c
>>>  create mode 100644 rust/kernel/interop.rs
>>>  create mode 100644 rust/kernel/interop/list.rs
>>>
>>> +/// Create a C doubly-circular linked list interface [`CList`] from a =
raw `list_head` pointer.
>>> +///
>>> +/// This macro creates a `CList<T, OFFSET>` that can iterate over item=
s of type `$rust_type`
>>> +/// linked via the `$field` field in the underlying C struct `$c_type`=
.
>>> +///
>>> +/// # Arguments
>>> +///
>>> +/// - `$head`: Raw pointer to the sentinel `list_head` object (`*mut b=
indings::list_head`).
>>> +/// - `$rust_type`: Each item's rust wrapper type.
>>> +/// - `$c_type`: Each item's C struct type that contains the embedded =
`list_head`.
>>> +/// - `$field`: The name of the `list_head` field within the C struct.
>>> +///
>>> +/// # Safety
>>> +///
>>> +/// The caller must ensure:
>>> +///
>>> +/// - `$head` is a valid, initialized sentinel `list_head` (e.g. via `=
INIT_LIST_HEAD()`)
>>> +///   pointing to a list that is not concurrently modified for the lif=
etime of the [`CList`].
>>> +/// - The list contains items of type `$c_type` linked via an embedded=
 `$field`.
>>> +/// - `$rust_type` is `#[repr(transparent)]` over `$c_type` or has com=
patible layout.
>>> +///
>>> +/// # Examples
>>> +///
>>> +/// Refer to the examples in the [`crate::interop::list`] module docum=
entation.
>>> +#[macro_export]
>>> +macro_rules! clist_create {
>>> +    (unsafe { $head:ident, $rust_type:ty, $c_type:ty, $($field:tt).+ }=
) =3D> {{
>>> +        // Compile-time check that field path is a `list_head`.
>>> +        // SAFETY: `p` is a valid pointer to `$c_type`.
>>> +        let _: fn(*const $c_type) -> *const $crate::bindings::list_hea=
d =3D
>>> +            |p| unsafe { &raw const (*p).$($field).+ };
>>
>> Actually, this check is insufficient, you should create a reference inst=
ead
>> (just in case people put this inside `repr(packed)`.
>>
>> This could be something like
>>
>>     let _ =3D |p: &$c_type| { _ =3D &p.$($field).+ }
>>
>> ?
>>
>>> +
>>> +        // Calculate offset and create `CList`.
>>> +        const OFFSET: usize =3D ::core::mem::offset_of!($c_type, $($fi=
eld).+);
>>> +        // SAFETY: The caller of this macro is responsible for ensurin=
g safety.
>>> +        unsafe { $crate::interop::list::CList::<$rust_type, OFFSET>::f=
rom_raw($head) }
>>
>> Given that this is unsafe, I am not sure why the macro should have unsaf=
e
>> keyword in it, rather than just being `clist_create(a, b, c, d)` and jus=
t have
>> user write unsafe.
>
> Either you are proposing to not wrap unsafe code within unsafe {} within =
the
> macro, such that the user is forced to write an unsafe {} around the macr=
o, but
> then they calls within the macro are not justified individually, or you p=
ropose
> to let the user write an unsafe {} around the macro regardless of the inn=
er
> unsafe {} blocks, but then then the compiler warns about an unnecessary u=
nsafe
> and nothing forces the user to actually wrap it in unsafe {}.

The former.

"The caller of this macro is responsible for ensuring safety" justification=
 is
not really useful here IMO.

If there're cases where we do want to justify unsafe code that's not immedi=
ately
deferring to the user inside the macro, we could use the SAFETY* trick prop=
osed
in the thread, without writing an actual `unsafe {}` block.

>
> Is there a third option I'm not aware of? I.e. for the above reason
> impl_device_context_deref!() was designed the same way.

impl_device_context_deref!() expands to an item, so the user couldn't put a=
n
`unsafe {}` on the outside. This macro expands to an expression, so users c=
an
add `unsafe` themselves.

Best,
Gary

>
> [1] https://git.kernel.org/pub/scm/linux/kernel/git/torvalds/linux.git/tr=
ee/rust/kernel/device.rs#n650

