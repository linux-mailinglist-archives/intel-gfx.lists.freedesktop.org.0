Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 94EDACF6D6F
	for <lists+intel-gfx@lfdr.de>; Tue, 06 Jan 2026 07:01:48 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id ABB8410E485;
	Tue,  6 Jan 2026 06:01:46 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="l92+lRlm";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.9])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 16CE010E483;
 Tue,  6 Jan 2026 06:01:46 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1767679307; x=1799215307;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=jUqneN0guDutPNqX/doloK8VdusOyDmRGky1BTQRQvw=;
 b=l92+lRlmy+Q5efdhbj6OwOPKbNllmQE6HnJcH6T4nbBs4oGzSkmTNJ/w
 WcWlaI4Ry+tRCOKsV4d/xCZ/tlxW89l6Y5L5Vr1b+9BerEU91TsHHOQxR
 SRiqrBzERUrqmdu6nocZUzUk7VJ4CER/H8t0Ga3bTxn3J5auyJD8iH2Ef
 bevbrvgsRU7hiU4frLH+2vHzeN4ITbQyHuqb1IxoCjrvCrP6Ys8Tiwt/G
 70WF5e2xFLMIQMRwDIpxFIZ8/7jzkndyLTXl3KOgsiSSSHLsglvOOn2QI
 7u+QTqBCgbyPVvgfa+vYi2GppQ6iJLBzZiMs/6sosZfeTTLtVE9jTn+yT g==;
X-CSE-ConnectionGUID: Jefcv0LmRVCmA+IUyiWz7Q==
X-CSE-MsgGUID: b9Jzc5kqTgCknorebZEwMw==
X-IronPort-AV: E=McAfee;i="6800,10657,11662"; a="91700388"
X-IronPort-AV: E=Sophos;i="6.21,204,1763452800"; d="scan'208";a="91700388"
Received: from fmviesa005.fm.intel.com ([10.60.135.145])
 by orvoesa101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 05 Jan 2026 22:01:46 -0800
X-CSE-ConnectionGUID: FTU1ubx0Tmmqq5pzwvbZQw==
X-CSE-MsgGUID: h4d9FFS3QKC/JD3ZDseyOQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.21,204,1763452800"; d="scan'208";a="207045368"
Received: from orsmsx903.amr.corp.intel.com ([10.22.229.25])
 by fmviesa005.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 05 Jan 2026 22:01:45 -0800
Received: from ORSMSX901.amr.corp.intel.com (10.22.229.23) by
 ORSMSX903.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.29; Mon, 5 Jan 2026 22:01:44 -0800
Received: from ORSEDG902.ED.cps.intel.com (10.7.248.12) by
 ORSMSX901.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.29 via Frontend Transport; Mon, 5 Jan 2026 22:01:44 -0800
Received: from CY3PR05CU001.outbound.protection.outlook.com (40.93.201.28) by
 edgegateway.intel.com (134.134.137.112) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.29; Mon, 5 Jan 2026 22:01:44 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=XyvducoWBkDk+dACXlzTN9lvN/45FqHNyScXcdKY6JRTS1a9tQfOoVZmt8MLkAUBzyiB316A30SG+xIlGdWJYvKA5JfbNGjIihDl9qn6Dl3ztP2hkLxaP0p4N88NvBY0ylqg+sWrDmq357bnb0hqMeCb/yWJa0JEHPfAPOGolNeSHXCxkyc+/csyf/OTXrTWB8U7bzLQXMBXdQjs8hIri0UhWq5HwQ9XHZXOLqkiLGcao05llmDfy6Ps3bbY6KeEhmGBGJj30zNo+WVmyQ+znq94k37YF9FWidAXy0Ifg/GS40U+499dWZ24o78UvoCVGqCcypAqNegzdsgsqhIsYQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=CeJWB11HLp/HFk3IwYW3u24jQ+iot7CUSpGP1OebbUs=;
 b=ELtLGGQwkxD+uY3MDS95VwT/5gIcSwqmyF+KqjfwXV6IOOk/LIeuTuUnNeZRrSJnWmoasvwcX6cQ4G3IfxnCV0HuM0aIwmH4HEw3vyZ6SrXQriB5ZMcHQEZ4uhI7CjpuXp3MmnZJPVWk8kVfGLLBI2B4xpuFbYAUsKxJyhQUhiCJJrltTFu2hVaOWAXNHJBPCPjwUtFSQx5xN/dxcns3IULiTQLwYIR7wiXf0IoR5UAchHYxnkJxCXLBkCS/YNcycXuOyNQQasj8MhlorctEcIxe/4xqWLTlRzhOEi8OSAQTTld0hD6Fu8UILHHiL1dFfQR9xsnZ2Kq3/336xgTWEg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from IA3PR11MB8937.namprd11.prod.outlook.com (2603:10b6:208:57c::14)
 by DS7PR11MB6176.namprd11.prod.outlook.com (2603:10b6:8:98::7) with
 Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.9478.4; Tue, 6 Jan 2026 06:01:37 +0000
Received: from IA3PR11MB8937.namprd11.prod.outlook.com
 ([fe80::7fcb:5ca0:942b:bfb3]) by IA3PR11MB8937.namprd11.prod.outlook.com
 ([fe80::7fcb:5ca0:942b:bfb3%4]) with mapi id 15.20.9478.004; Tue, 6 Jan 2026
 06:01:37 +0000
From: "Kandpal, Suraj" <suraj.kandpal@intel.com>
To: "Kandpal, Suraj" <suraj.kandpal@intel.com>, "Kahola, Mika"
 <mika.kahola@intel.com>, "intel-gfx@lists.freedesktop.org"
 <intel-gfx@lists.freedesktop.org>, "intel-xe@lists.freedesktop.org"
 <intel-xe@lists.freedesktop.org>
CC: "Kahola, Mika" <mika.kahola@intel.com>
Subject: RE: [PATCH v2 15/15] drm/i915/display: Remove .clock member from
 eDP/DP/HDMI pll tables
Thread-Topic: [PATCH v2 15/15] drm/i915/display: Remove .clock member from
 eDP/DP/HDMI pll tables
Thread-Index: AQHcb2sLd16aDKhMkkKoNxpsPCQwh7VEs9qQgAAQuSA=
Date: Tue, 6 Jan 2026 06:01:37 +0000
Message-ID: <IA3PR11MB89371D5994C6EF704CB2CE82E387A@IA3PR11MB8937.namprd11.prod.outlook.com>
References: <20251217151955.1690202-1-mika.kahola@intel.com>
 <20251217151955.1690202-16-mika.kahola@intel.com>
 <IA3PR11MB8937EAC0DF09157DBD8462C2E387A@IA3PR11MB8937.namprd11.prod.outlook.com>
In-Reply-To: <IA3PR11MB8937EAC0DF09157DBD8462C2E387A@IA3PR11MB8937.namprd11.prod.outlook.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: IA3PR11MB8937:EE_|DS7PR11MB6176:EE_
x-ms-office365-filtering-correlation-id: 08e1771b-bedb-4031-0d3c-08de4ce90d8f
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0; ARA:13230040|376014|366016|1800799024|38070700021;
x-microsoft-antispam-message-info: =?us-ascii?Q?b6LgnZV7xD+vdy1wm1eRerdsjd1cN6eotXXa9m8O5nT+yID2EasmRhemU40P?=
 =?us-ascii?Q?ztSgpr9cgArXoRxlROAUcaVHRcfROeP7zBnkK97zUByVTmUs+dHJJqKyYZwd?=
 =?us-ascii?Q?+yqpCy7ruoMtd+SJc2pg3YL7rDWq1yA+uRhNowcB0fD5OxonJ+o1AGXfBXTJ?=
 =?us-ascii?Q?gipvITjvWF9lT/X3Ybv+qav2iUNTeAGjlfsmuU+in6GkMtqHeUiTUrMbEdqp?=
 =?us-ascii?Q?A9s7XMuk3wf51uWnFMYZgNiguuAsW25xk+GgpBRo0h1ssvbHRle4AcC5LGVT?=
 =?us-ascii?Q?FRb7jecAwd/W/xM89WhILsO8w6QoxXjFiuCSNS+J9LuakWCCCaG+9syRF6X9?=
 =?us-ascii?Q?xsIp2n6c+Hsrl8Fh1TGLDyE/flVirvE0elj9q27Wa33jwbaBZIscmFEZ8c2O?=
 =?us-ascii?Q?W/D76Uv6cpu7FNCniT7fZw5Mp6vuozYL5oGFm3gv7gtTifUVoQrsUPktEvu3?=
 =?us-ascii?Q?vDItbEU1YyLb9dRcfEbTQFsPatqxtAKYOTH4Sau7AEUs5A1CUeJeS1FcoyMz?=
 =?us-ascii?Q?SVvt0bAZ12HVt0cjdsXbyhx8ecvjf8RSsG+ik30/8E2nANBBuRk/WjpshLNq?=
 =?us-ascii?Q?xagZg1vGrHk8ma5MGih7RZcNgmcgju10FTXD3Sy7FYgO/rK1IZL3+YFaUErx?=
 =?us-ascii?Q?tbatJuiKxVLG9wTAdP3ynYrNPm1CgEhtJg5/zMuENHkEaW8Zd4fYrYANa3tW?=
 =?us-ascii?Q?H4TrjT1Rz2g5OYeKkKv2Yvpz66yTOBKV8kYKSdPSorucraUT+0KZqBMTbhiR?=
 =?us-ascii?Q?EUOgphNQ0vQyKAGWtXqWwN0wvYYjpmGrm6CTAgZDOJWygM2Py/0Qzf+Ewzj5?=
 =?us-ascii?Q?HwVNV+v+Cj5Kk2QzUIarijvINLKxeTAOOX0bBq6oOKCFzXOcn98MDv/EdLvw?=
 =?us-ascii?Q?cvGuS+L7KLhzY5tqtHi2opvb8LW6g65coefZxXBboT9Uokwbjpvi06nskYLn?=
 =?us-ascii?Q?K7rEZlH78sPTi5jMHmVpLcASYQI8SKh84voiBRwh43jocSyX5NJznlv+hfkO?=
 =?us-ascii?Q?ndqQkL+AkF9yNbB2GalgmiV8UYOKu4HraCoz1Lky9Gnv2LJHPJZFG4qg6qi8?=
 =?us-ascii?Q?rvCGLfMXiXI2qENDVpezb+Zm7LS1lKwn/8Nk3OG9k+PNwz431OnnIFPYrbhU?=
 =?us-ascii?Q?E0MlzJMAcTSppNPvj3lVFL+YeGIQlmahBHFlYvkm2j/Dw8mr+WnZqJDbnAaS?=
 =?us-ascii?Q?sTCkL9jGwaMH9+QB5KCoY9KDsPbuFLxK4IcyK4ObffUZgilKccl2wIjwzdg2?=
 =?us-ascii?Q?ovaY8yy818bGAu9Fb6eDqfoCnWGrQb6shOGzq99ZhUM+TIOTzsC8UvfkEaxl?=
 =?us-ascii?Q?Yg7leBybZYdJQJaQQvapbeFKri8okgmzIDKp9JDtDqwuOZJhxvYy3nSiXl9C?=
 =?us-ascii?Q?/+a4YDeeDr/nW46ZxaXSKD8RQBy7Ktwv3TOW4vOWo48izdnI3z4XrYnr+4U+?=
 =?us-ascii?Q?Efw6qChyKvK1tMqzOqSne3US2jf6o28srkd1BQJXPFgZ24FrqSHaHKRAHNKL?=
 =?us-ascii?Q?Vt4bpUWvbOtv+aHxuNNqmFYISKbNY4zpA2WI?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:IA3PR11MB8937.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(376014)(366016)(1800799024)(38070700021); DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?38QJuvjnCcOHKO8+DGy1715RBzCfNS2s6giHkxxHk3KrDjhNVOO4AnRj0/IA?=
 =?us-ascii?Q?GHFdVzhKBq0X+qg0fEMcQ+PCWIy7daHC7PpJk4hdQDY8LXkHWCK4bTmc5z8h?=
 =?us-ascii?Q?RLaZbvP8SeCymVchNZ3dqhWWBLSr+JuRFm/XGCKU+RLOhlsiF/1XmDQfg/qO?=
 =?us-ascii?Q?dxO1ZQbiLIGRzFov5aKC4LyCAcjR8uE7pFeCLn2qSTQ9C7BvbKaEZKlfd6nC?=
 =?us-ascii?Q?g4Uo6lBG+C2faZGc4wEIuFJmOBdqMhe/kJI4rM6yFq6H1UiQSLyzFWi3YeN2?=
 =?us-ascii?Q?YaG44zCEljlrVZN1Pd+xeMSKI7waDjmAZDT6v4pZ+YYITGIFZbeotN0UOJLK?=
 =?us-ascii?Q?ww8JZBjEatqXUxIiYXlB1gH2f/tAVH+xqbtZ6INyKXwMyC9xBNrvyseMGSb+?=
 =?us-ascii?Q?PqSz5D4KgSxytNg872eH/UIHeopMB61ekSFt6si6r2Fen86DvFtfAGprsNKu?=
 =?us-ascii?Q?wyQx2BT29BDatu10j35TbZlEcvIqvpt9v8Ex0k7L+oVWive4sGZM1qh7A75C?=
 =?us-ascii?Q?iYH6uqCY4qwrEGeq1HVE7PTdShbNqe6EI+ocYcp6X2yhcBBW7DtSmRcDPKXj?=
 =?us-ascii?Q?kF2S+0KcfG9AGp47W0WAvHmCzW7jTp5Nc/HbIamB9wwcY8cn90mhTfJ8O2C5?=
 =?us-ascii?Q?AjRa8eZTJitB5fVl6S2zbtAu98HPu5/TmTGwQntTHlgFzUrx2X9dqaT8+e/8?=
 =?us-ascii?Q?/tkds4F0YF0xF63zdkuyxW7pPvjjL2wCS1GToCYGoQLM+v4RtpDWPkrqQ07k?=
 =?us-ascii?Q?5HZ+f2QYjWqc9m3VRevvRUJKs+74aLJ3BQh2oFdHZQl+PaVxc7jauLQj3naw?=
 =?us-ascii?Q?9AUw9+WTAE8nR6UYZXx6/hsMb7o0GYTGBYHD9U/LjHK9CiChyslXgqIYty5p?=
 =?us-ascii?Q?vd7I1jOfnLRbHFCNG5pJ91wtp1aq7N0Um3y1fGVr/FQh0TgZEj0p7QVPwLwJ?=
 =?us-ascii?Q?kWUdLomF5A+OBUqnbdaxNnLZjSz14eWdph2u/E5XBmD0cMWS3ZOZ6dC6S83v?=
 =?us-ascii?Q?U946ZeeKKu1kJlv2Zj03ZG0jSEjkrw3DUi/NGA/KX/+yAHsTNZSVGIbNhUKC?=
 =?us-ascii?Q?w//iUIbjP2ZRR3KXeYa6wfwx3h1CtfXtfeKtIG9Ilf+Ohxxh1E5WyiLBHRzv?=
 =?us-ascii?Q?AWN7TERG2Ylb1LRgp/yuHvObJO2apHxuiSzvUlpubwhNBHN5MeeWi6FmASFW?=
 =?us-ascii?Q?gNykXrvK/b2Z/4Hxdm7VVcOznLhAji5j655Sw5siHYWzl1AadQYqH5A4UjnB?=
 =?us-ascii?Q?55EhvjO/bcdYGegBKZ1XBMA2iHxSCU5DYwZRejMWOi1+Zf/DVxx5BOj/8dw4?=
 =?us-ascii?Q?TizZP3Cs+jyFZiraDsk4EZANPflQJ4znMxgwknOV3dzYI58QoYvLE15FZTUN?=
 =?us-ascii?Q?X2nv/IVx4pca1UoEKelpTyJ8juLf+XKsu2eT0v3TVXn61vJN04MCd44lPrpo?=
 =?us-ascii?Q?djUyLDaEWsIawQIev+7L6p1t369LnrDK5Od25b8aUEyLPnom8N4IuJf3823a?=
 =?us-ascii?Q?Suo65hBXl4rq601qgkm91qqD4lLGK16x/cAH2KRnYhnuRuLt8ilb8ZAJ+c6y?=
 =?us-ascii?Q?mDQcEXIdloVwaaeWbXlksXMD/1lRcAGQX/gz7lk5cu3mp9U5QR/6noqsdBJy?=
 =?us-ascii?Q?JJesKFG86dIiztOy8R6szk5FQIeNdPC0twwxiOqjMsJl3K3E5x0EZRy5rJcX?=
 =?us-ascii?Q?9G18H0KZbuEYUkHnrufx+piD5ikPP8ZQCgaCftGVSo8SYIx89eHKbxvkh79H?=
 =?us-ascii?Q?bPsF7ZSu1A=3D=3D?=
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: IA3PR11MB8937.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 08e1771b-bedb-4031-0d3c-08de4ce90d8f
X-MS-Exchange-CrossTenant-originalarrivaltime: 06 Jan 2026 06:01:37.1705 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: yL4wEXqvTWWbpRbeaRGGtbkUAbYMhIymQW1s1TJIUU47IIzwB47aAos+8RYlWRHZgaAqUrnRBbuFucmnL2ha7A==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DS7PR11MB6176
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

> Subject: RE: [PATCH v2 15/15] drm/i915/display: Remove .clock member from
> eDP/DP/HDMI pll tables
>=20
> > Subject: [PATCH v2 15/15] drm/i915/display: Remove .clock member from
> > eDP/DP/HDMI pll tables
> >
> > PLL state structure has a member .clock. This is not needed as the
> > port clock is possible to calculate from the pll dividers.
> > Remove the .clock from the pll state structure.
>=20
> Sounds awkward maybe
> "Remove the encoder from being passed to the port clock calculation
> function."
> Other than that,
> LGTM,
> Reviewed-by: Suraj Kandpal <suraj.kandpal@intel.com>
>=20

Mailing client mess up this was supposed to be a comment for patch 5 of thi=
s series but RB still stands for this patch=20

Regards,
Suraj Kandpal

> >
> > v2: Keep the pll_state->clock assignment in
> >     intel_snps_hdmi_pll_compute_mpllb().
> >
> > Signed-off-by: Mika Kahola <mika.kahola@intel.com>
> > ---
> >  drivers/gpu/drm/i915/display/intel_cx0_phy.c  | 86
> > +------------------ drivers/gpu/drm/i915/display/intel_dpll_mgr.h |  3 =
-
> >  drivers/gpu/drm/i915/display/intel_lt_phy.c   | 26 ------
> >  .../drm/i915/display/intel_snps_hdmi_pll.c    |  2 -
> >  4 files changed, 2 insertions(+), 115 deletions(-)
> >
> > diff --git a/drivers/gpu/drm/i915/display/intel_cx0_phy.c
> > b/drivers/gpu/drm/i915/display/intel_cx0_phy.c
> > index 5d0bca0f75b0..2a353dfad87d 100644
> > --- a/drivers/gpu/drm/i915/display/intel_cx0_phy.c
> > +++ b/drivers/gpu/drm/i915/display/intel_cx0_phy.c
> > @@ -547,7 +547,6 @@ void intel_cx0_phy_set_signal_levels(struct
> > intel_encoder *encoder,
> >   */
> >
> >  static const struct intel_c10pll_state mtl_c10_dp_rbr =3D {
> > -	.clock =3D 162000,
> >  	.tx =3D 0x10,
> >  	.cmn =3D 0x21,
> >  	.pll[0] =3D 0xB4,
> > @@ -573,7 +572,6 @@ static const struct intel_c10pll_state
> > mtl_c10_dp_rbr =3D {  };
> >
> >  static const struct intel_c10pll_state mtl_c10_edp_r216 =3D {
> > -	.clock =3D 216000,
> >  	.tx =3D 0x10,
> >  	.cmn =3D 0x21,
> >  	.pll[0] =3D 0x4,
> > @@ -599,7 +597,6 @@ static const struct intel_c10pll_state
> > mtl_c10_edp_r216 =3D {  };
> >
> >  static const struct intel_c10pll_state mtl_c10_edp_r243 =3D {
> > -	.clock =3D 243000,
> >  	.tx =3D 0x10,
> >  	.cmn =3D 0x21,
> >  	.pll[0] =3D 0x34,
> > @@ -625,7 +622,6 @@ static const struct intel_c10pll_state
> > mtl_c10_edp_r243 =3D {  };
> >
> >  static const struct intel_c10pll_state mtl_c10_dp_hbr1 =3D {
> > -	.clock =3D 270000,
> >  	.tx =3D 0x10,
> >  	.cmn =3D 0x21,
> >  	.pll[0] =3D 0xF4,
> > @@ -651,7 +647,6 @@ static const struct intel_c10pll_state
> > mtl_c10_dp_hbr1 =3D {  };
> >
> >  static const struct intel_c10pll_state mtl_c10_edp_r324 =3D {
> > -	.clock =3D 324000,
> >  	.tx =3D 0x10,
> >  	.cmn =3D 0x21,
> >  	.pll[0] =3D 0xB4,
> > @@ -677,7 +672,6 @@ static const struct intel_c10pll_state
> > mtl_c10_edp_r324 =3D {  };
> >
> >  static const struct intel_c10pll_state mtl_c10_edp_r432 =3D {
> > -	.clock =3D 432000,
> >  	.tx =3D 0x10,
> >  	.cmn =3D 0x21,
> >  	.pll[0] =3D 0x4,
> > @@ -703,7 +697,6 @@ static const struct intel_c10pll_state
> > mtl_c10_edp_r432 =3D {  };
> >
> >  static const struct intel_c10pll_state mtl_c10_dp_hbr2 =3D {
> > -	.clock =3D 540000,
> >  	.tx =3D 0x10,
> >  	.cmn =3D 0x21,
> >  	.pll[0] =3D 0xF4,
> > @@ -729,7 +722,6 @@ static const struct intel_c10pll_state
> > mtl_c10_dp_hbr2 =3D {  };
> >
> >  static const struct intel_c10pll_state mtl_c10_edp_r675 =3D {
> > -	.clock =3D 675000,
> >  	.tx =3D 0x10,
> >  	.cmn =3D 0x21,
> >  	.pll[0] =3D 0xB4,
> > @@ -755,7 +747,6 @@ static const struct intel_c10pll_state
> > mtl_c10_edp_r675 =3D {  };
> >
> >  static const struct intel_c10pll_state mtl_c10_dp_hbr3 =3D {
> > -	.clock =3D 810000,
> >  	.tx =3D 0x10,
> >  	.cmn =3D 0x21,
> >  	.pll[0] =3D 0x34,
> > @@ -836,7 +827,6 @@ static const struct intel_cx0pll_params
> > mtl_c10_edp_tables[] =3D {
> >
> >  /* C20 basic DP 1.4 tables */
> >  static const struct intel_c20pll_state mtl_c20_dp_rbr =3D {
> > -	.clock =3D 162000,
> >  	.tx =3D {	0xbe88, /* tx cfg0 */
> >  		0x5800, /* tx cfg1 */
> >  		0x0000, /* tx cfg2 */
> > @@ -861,7 +851,6 @@ static const struct intel_c20pll_state
> > mtl_c20_dp_rbr =3D {  };
> >
> >  static const struct intel_c20pll_state mtl_c20_dp_hbr1 =3D {
> > -	.clock =3D 270000,
> >  	.tx =3D {	0xbe88, /* tx cfg0 */
> >  		0x4800, /* tx cfg1 */
> >  		0x0000, /* tx cfg2 */
> > @@ -886,7 +875,6 @@ static const struct intel_c20pll_state
> > mtl_c20_dp_hbr1 =3D {  };
> >
> >  static const struct intel_c20pll_state mtl_c20_dp_hbr2 =3D {
> > -	.clock =3D 540000,
> >  	.tx =3D {	0xbe88, /* tx cfg0 */
> >  		0x4800, /* tx cfg1 */
> >  		0x0000, /* tx cfg2 */
> > @@ -911,7 +899,6 @@ static const struct intel_c20pll_state
> > mtl_c20_dp_hbr2 =3D {  };
> >
> >  static const struct intel_c20pll_state mtl_c20_dp_hbr3 =3D {
> > -	.clock =3D 810000,
> >  	.tx =3D {	0xbe88, /* tx cfg0 */
> >  		0x4800, /* tx cfg1 */
> >  		0x0000, /* tx cfg2 */
> > @@ -937,7 +924,6 @@ static const struct intel_c20pll_state
> > mtl_c20_dp_hbr3 =3D {
> >
> >  /* C20 basic DP 2.0 tables */
> >  static const struct intel_c20pll_state mtl_c20_dp_uhbr10 =3D {
> > -	.clock =3D 1000000, /* 10 Gbps */
> >  	.tx =3D {	0xbe21, /* tx cfg0 */
> >  		0xe800, /* tx cfg1 */
> >  		0x0000, /* tx cfg2 */
> > @@ -961,7 +947,6 @@ static const struct intel_c20pll_state
> > mtl_c20_dp_uhbr10 =3D {  };
> >
> >  static const struct intel_c20pll_state mtl_c20_dp_uhbr13_5 =3D {
> > -	.clock =3D 1350000, /* 13.5 Gbps */
> >  	.tx =3D {	0xbea0, /* tx cfg0 */
> >  		0x4800, /* tx cfg1 */
> >  		0x0000, /* tx cfg2 */
> > @@ -986,7 +971,6 @@ static const struct intel_c20pll_state
> > mtl_c20_dp_uhbr13_5 =3D {  };
> >
> >  static const struct intel_c20pll_state mtl_c20_dp_uhbr20 =3D {
> > -	.clock =3D 2000000, /* 20 Gbps */
> >  	.tx =3D {	0xbe20, /* tx cfg0 */
> >  		0x4800, /* tx cfg1 */
> >  		0x0000, /* tx cfg2 */
> > @@ -1025,7 +1009,6 @@ static const struct intel_cx0pll_params
> > mtl_c20_dp_tables[] =3D {
> >   */
> >
> >  static const struct intel_c20pll_state xe2hpd_c20_edp_r216 =3D {
> > -	.clock =3D 216000,
> >  	.tx =3D { 0xbe88,
> >  		0x4800,
> >  		0x0000,
> > @@ -1050,7 +1033,6 @@ static const struct intel_c20pll_state
> > xe2hpd_c20_edp_r216 =3D {  };
> >
> >  static const struct intel_c20pll_state xe2hpd_c20_edp_r243 =3D {
> > -	.clock =3D 243000,
> >  	.tx =3D { 0xbe88,
> >  		0x4800,
> >  		0x0000,
> > @@ -1075,7 +1057,6 @@ static const struct intel_c20pll_state
> > xe2hpd_c20_edp_r243 =3D {  };
> >
> >  static const struct intel_c20pll_state xe2hpd_c20_edp_r324 =3D {
> > -	.clock =3D 324000,
> >  	.tx =3D { 0xbe88,
> >  		0x4800,
> >  		0x0000,
> > @@ -1100,7 +1081,6 @@ static const struct intel_c20pll_state
> > xe2hpd_c20_edp_r324 =3D {  };
> >
> >  static const struct intel_c20pll_state xe2hpd_c20_edp_r432 =3D {
> > -	.clock =3D 432000,
> >  	.tx =3D { 0xbe88,
> >  		0x4800,
> >  		0x0000,
> > @@ -1125,7 +1105,6 @@ static const struct intel_c20pll_state
> > xe2hpd_c20_edp_r432 =3D {  };
> >
> >  static const struct intel_c20pll_state xe2hpd_c20_edp_r675 =3D {
> > -	.clock =3D 675000,
> >  	.tx =3D { 0xbe88,
> >  		0x4800,
> >  		0x0000,
> > @@ -1163,7 +1142,6 @@ static const struct intel_cx0pll_params
> > xe2hpd_c20_edp_tables[] =3D {  };
> >
> >  static const struct intel_c20pll_state xe2hpd_c20_dp_uhbr13_5 =3D {
> > -	.clock =3D 1350000, /* 13.5 Gbps */
> >  	.tx =3D {	0xbea0, /* tx cfg0 */
> >  		0x4800, /* tx cfg1 */
> >  		0x0000, /* tx cfg2 */
> > @@ -1218,7 +1196,6 @@ static const struct intel_cx0pll_params
> > xe3lpd_c20_dp_edp_tables[] =3D {
> >   */
> >
> >  static const struct intel_c10pll_state mtl_c10_hdmi_25_2 =3D {
> > -	.clock =3D 25200,
> >  	.tx =3D 0x10,
> >  	.cmn =3D 0x1,
> >  	.pll[0] =3D 0x4,
> > @@ -1244,7 +1221,6 @@ static const struct intel_c10pll_state
> > mtl_c10_hdmi_25_2 =3D {  };
> >
> >  static const struct intel_c10pll_state mtl_c10_hdmi_27_0 =3D {
> > -	.clock =3D 27000,
> >  	.tx =3D 0x10,
> >  	.cmn =3D 0x1,
> >  	.pll[0] =3D 0x34,
> > @@ -1270,7 +1246,6 @@ static const struct intel_c10pll_state
> > mtl_c10_hdmi_27_0 =3D {  };
> >
> >  static const struct intel_c10pll_state mtl_c10_hdmi_74_25 =3D {
> > -	.clock =3D 74250,
> >  	.tx =3D 0x10,
> >  	.cmn =3D 0x1,
> >  	.pll[0] =3D 0xF4,
> > @@ -1296,7 +1271,6 @@ static const struct intel_c10pll_state
> > mtl_c10_hdmi_74_25 =3D {  };
> >
> >  static const struct intel_c10pll_state mtl_c10_hdmi_148_5 =3D {
> > -	.clock =3D 148500,
> >  	.tx =3D 0x10,
> >  	.cmn =3D 0x1,
> >  	.pll[0] =3D 0xF4,
> > @@ -1322,7 +1296,6 @@ static const struct intel_c10pll_state
> > mtl_c10_hdmi_148_5 =3D {  };
> >
> >  static const struct intel_c10pll_state mtl_c10_hdmi_594 =3D {
> > -	.clock =3D 594000,
> >  	.tx =3D 0x10,
> >  	.cmn =3D 0x1,
> >  	.pll[0] =3D 0xF4,
> > @@ -1349,7 +1322,6 @@ static const struct intel_c10pll_state
> > mtl_c10_hdmi_594 =3D {
> >
> >  /* Precomputed C10 HDMI PLL tables */  static const struct
> > intel_c10pll_state mtl_c10_hdmi_27027 =3D {
> > -	.clock =3D 27027,
> >  	.tx =3D 0x10,
> >  	.cmn =3D 0x1,
> >  	.pll[0] =3D 0x34, .pll[1] =3D 0x00, .pll[2] =3D 0xC0, .pll[3] =3D 0x0=
0,
> > .pll[4] =3D 0x00, @@ -1359,7 +1331,6 @@ static const struct
> > intel_c10pll_state
> > mtl_c10_hdmi_27027 =3D {  };
> >
> >  static const struct intel_c10pll_state mtl_c10_hdmi_28320 =3D {
> > -	.clock =3D 28320,
> >  	.tx =3D 0x10,
> >  	.cmn =3D 0x1,
> >  	.pll[0] =3D 0x04, .pll[1] =3D 0x00, .pll[2] =3D 0xCC, .pll[3] =3D 0x0=
0,
> > .pll[4] =3D 0x00, @@ -1369,7 +1340,6 @@ static const struct
> > intel_c10pll_state
> > mtl_c10_hdmi_28320 =3D {  };
> >
> >  static const struct intel_c10pll_state mtl_c10_hdmi_30240 =3D {
> > -	.clock =3D 30240,
> >  	.tx =3D 0x10,
> >  	.cmn =3D 0x1,
> >  	.pll[0] =3D 0x04, .pll[1] =3D 0x00, .pll[2] =3D 0xDC, .pll[3] =3D 0x0=
0,
> > .pll[4] =3D 0x00, @@ -1379,7 +1349,6 @@ static const struct
> > intel_c10pll_state
> > mtl_c10_hdmi_30240 =3D {  };
> >
> >  static const struct intel_c10pll_state mtl_c10_hdmi_31500 =3D {
> > -	.clock =3D 31500,
> >  	.tx =3D 0x10,
> >  	.cmn =3D 0x1,
> >  	.pll[0] =3D 0xF4, .pll[1] =3D 0x00, .pll[2] =3D 0x62, .pll[3] =3D 0x0=
0,
> > .pll[4] =3D 0x00, @@ -1389,7 +1358,6 @@ static const struct
> > intel_c10pll_state
> > mtl_c10_hdmi_31500 =3D {  };
> >
> >  static const struct intel_c10pll_state mtl_c10_hdmi_36000 =3D {
> > -	.clock =3D 36000,
> >  	.tx =3D 0x10,
> >  	.cmn =3D 0x1,
> >  	.pll[0] =3D 0xC4, .pll[1] =3D 0x00, .pll[2] =3D 0x76, .pll[3] =3D 0x0=
0,
> > .pll[4] =3D 0x00, @@ -1399,7 +1367,6 @@ static const struct
> > intel_c10pll_state
> > mtl_c10_hdmi_36000 =3D {  };
> >
> >  static const struct intel_c10pll_state mtl_c10_hdmi_40000 =3D {
> > -	.clock =3D 40000,
> >  	.tx =3D 0x10,
> >  	.cmn =3D 0x1,
> >  	.pll[0] =3D 0xB4, .pll[1] =3D 0x00, .pll[2] =3D 0x86, .pll[3] =3D 0x0=
0,
> > .pll[4] =3D 0x00, @@ -1409,7 +1376,6 @@ static const struct
> > intel_c10pll_state
> > mtl_c10_hdmi_40000 =3D {  };
> >
> >  static const struct intel_c10pll_state mtl_c10_hdmi_49500 =3D {
> > -	.clock =3D 49500,
> >  	.tx =3D 0x10,
> >  	.cmn =3D 0x1,
> >  	.pll[0] =3D 0x74, .pll[1] =3D 0x00, .pll[2] =3D 0xAE, .pll[3] =3D 0x0=
0,
> > .pll[4] =3D 0x00, @@ -1419,7 +1385,6 @@ static const struct
> > intel_c10pll_state
> > mtl_c10_hdmi_49500 =3D {  };
> >
> >  static const struct intel_c10pll_state mtl_c10_hdmi_50000 =3D {
> > -	.clock =3D 50000,
> >  	.tx =3D 0x10,
> >  	.cmn =3D 0x1,
> >  	.pll[0] =3D 0x74, .pll[1] =3D 0x00, .pll[2] =3D 0xB0, .pll[3] =3D 0x0=
0,
> > .pll[4] =3D 0x00, @@ -1429,7 +1394,6 @@ static const struct
> > intel_c10pll_state
> > mtl_c10_hdmi_50000 =3D {  };
> >
> >  static const struct intel_c10pll_state mtl_c10_hdmi_57284 =3D {
> > -	.clock =3D 57284,
> >  	.tx =3D 0x10,
> >  	.cmn =3D 0x1,
> >  	.pll[0] =3D 0x34, .pll[1] =3D 0x00, .pll[2] =3D 0xCE, .pll[3] =3D 0x0=
0,
> > .pll[4] =3D 0x00, @@ -1439,7 +1403,6 @@ static const struct
> > intel_c10pll_state
> > mtl_c10_hdmi_57284 =3D {  };
> >
> >  static const struct intel_c10pll_state mtl_c10_hdmi_58000 =3D {
> > -	.clock =3D 58000,
> >  	.tx =3D 0x10,
> >  	.cmn =3D 0x1,
> >  	.pll[0] =3D 0x34, .pll[1] =3D 0x00, .pll[2] =3D 0xD0, .pll[3] =3D 0x0=
0,
> > .pll[4] =3D 0x00, @@ -1449,7 +1412,6 @@ static const struct
> > intel_c10pll_state
> > mtl_c10_hdmi_58000 =3D {  };
> >
> >  static const struct intel_c10pll_state mtl_c10_hdmi_65000 =3D {
> > -	.clock =3D 65000,
> >  	.tx =3D 0x10,
> >  	.cmn =3D 0x1,
> >  	.pll[0] =3D 0xF4, .pll[1] =3D 0x00, .pll[2] =3D 0x66, .pll[3] =3D 0x0=
0,
> > .pll[4] =3D 0x00, @@ -1459,7 +1421,6 @@ static const struct
> > intel_c10pll_state
> > mtl_c10_hdmi_65000 =3D {  };
> >
> >  static const struct intel_c10pll_state mtl_c10_hdmi_71000 =3D {
> > -	.clock =3D 71000,
> >  	.tx =3D 0x10,
> >  	.cmn =3D 0x1,
> >  	.pll[0] =3D 0xF4, .pll[1] =3D 0x00, .pll[2] =3D 0x72, .pll[3] =3D 0x0=
0,
> > .pll[4] =3D 0x00, @@ -1469,7 +1430,6 @@ static const struct
> > intel_c10pll_state
> > mtl_c10_hdmi_71000 =3D {  };
> >
> >  static const struct intel_c10pll_state mtl_c10_hdmi_74176 =3D {
> > -	.clock =3D 74176,
> >  	.tx =3D 0x10,
> >  	.cmn =3D 0x1,
> >  	.pll[0] =3D 0xF4, .pll[1] =3D 0x00, .pll[2] =3D 0x7A, .pll[3] =3D 0x0=
0,
> > .pll[4] =3D 0x00, @@ -1479,7 +1439,6 @@ static const struct
> > intel_c10pll_state
> > mtl_c10_hdmi_74176 =3D {  };
> >
> >  static const struct intel_c10pll_state mtl_c10_hdmi_75000 =3D {
> > -	.clock =3D 75000,
> >  	.tx =3D 0x10,
> >  	.cmn =3D 0x1,
> >  	.pll[0] =3D 0xF4, .pll[1] =3D 0x00, .pll[2] =3D 0x7C, .pll[3] =3D 0x0=
0,
> > .pll[4] =3D 0x00, @@ -1489,7 +1448,6 @@ static const struct
> > intel_c10pll_state
> > mtl_c10_hdmi_75000 =3D {  };
> >
> >  static const struct intel_c10pll_state mtl_c10_hdmi_78750 =3D {
> > -	.clock =3D 78750,
> >  	.tx =3D 0x10,
> >  	.cmn =3D 0x1,
> >  	.pll[0] =3D 0xB4, .pll[1] =3D 0x00, .pll[2] =3D 0x84, .pll[3] =3D 0x0=
0,
> > .pll[4] =3D 0x00, @@ -1499,7 +1457,6 @@ static const struct
> > intel_c10pll_state
> > mtl_c10_hdmi_78750 =3D {  };
> >
> >  static const struct intel_c10pll_state mtl_c10_hdmi_85500 =3D {
> > -	.clock =3D 85500,
> >  	.tx =3D 0x10,
> >  	.cmn =3D 0x1,
> >  	.pll[0] =3D 0xB4, .pll[1] =3D 0x00, .pll[2] =3D 0x92, .pll[3] =3D 0x0=
0,
> > .pll[4] =3D 0x00, @@ -1509,7 +1466,6 @@ static const struct
> > intel_c10pll_state
> > mtl_c10_hdmi_85500 =3D {  };
> >
> >  static const struct intel_c10pll_state mtl_c10_hdmi_88750 =3D {
> > -	.clock =3D 88750,
> >  	.tx =3D 0x10,
> >  	.cmn =3D 0x1,
> >  	.pll[0] =3D 0x74, .pll[1] =3D 0x00, .pll[2] =3D 0x98, .pll[3] =3D 0x0=
0,
> > .pll[4] =3D 0x00, @@ -1519,7 +1475,6 @@ static const struct
> > intel_c10pll_state
> > mtl_c10_hdmi_88750 =3D {  };
> >
> >  static const struct intel_c10pll_state mtl_c10_hdmi_106500 =3D {
> > -	.clock =3D 106500,
> >  	.tx =3D 0x10,
> >  	.cmn =3D 0x1,
> >  	.pll[0] =3D 0x34, .pll[1] =3D 0x00, .pll[2] =3D 0xBC, .pll[3] =3D 0x0=
0,
> > .pll[4] =3D 0x00, @@ -1529,7 +1484,6 @@ static const struct
> > intel_c10pll_state
> > mtl_c10_hdmi_106500 =3D {  };
> >
> >  static const struct intel_c10pll_state mtl_c10_hdmi_108000 =3D {
> > -	.clock =3D 108000,
> >  	.tx =3D 0x10,
> >  	.cmn =3D 0x1,
> >  	.pll[0] =3D 0x34, .pll[1] =3D 0x00, .pll[2] =3D 0xC0, .pll[3] =3D 0x0=
0,
> > .pll[4] =3D 0x00, @@ -1539,7 +1493,6 @@ static const struct
> > intel_c10pll_state
> > mtl_c10_hdmi_108000 =3D {  };
> >
> >  static const struct intel_c10pll_state mtl_c10_hdmi_115500 =3D {
> > -	.clock =3D 115500,
> >  	.tx =3D 0x10,
> >  	.cmn =3D 0x1,
> >  	.pll[0] =3D 0x34, .pll[1] =3D 0x00, .pll[2] =3D 0xD0, .pll[3] =3D 0x0=
0,
> > .pll[4] =3D 0x00, @@ -1549,7 +1502,6 @@ static const struct
> > intel_c10pll_state
> > mtl_c10_hdmi_115500 =3D {  };
> >
> >  static const struct intel_c10pll_state mtl_c10_hdmi_119000 =3D {
> > -	.clock =3D 119000,
> >  	.tx =3D 0x10,
> >  	.cmn =3D 0x1,
> >  	.pll[0] =3D 0x34, .pll[1] =3D 0x00, .pll[2] =3D 0xD6, .pll[3] =3D 0x0=
0,
> > .pll[4] =3D 0x00, @@ -1559,7 +1511,6 @@ static const struct
> > intel_c10pll_state
> > mtl_c10_hdmi_119000 =3D {  };
> >
> >  static const struct intel_c10pll_state mtl_c10_hdmi_135000 =3D {
> > -	.clock =3D 135000,
> >  	.tx =3D 0x10,
> >  	.cmn =3D 0x1,
> >  	.pll[0] =3D 0xF4, .pll[1] =3D 0x00, .pll[2] =3D 0x6C, .pll[3] =3D 0x0=
0,
> > .pll[4] =3D 0x00, @@ -1569,7 +1520,6 @@ static const struct
> > intel_c10pll_state
> > mtl_c10_hdmi_135000 =3D {  };
> >
> >  static const struct intel_c10pll_state mtl_c10_hdmi_138500 =3D {
> > -	.clock =3D 138500,
> >  	.tx =3D 0x10,
> >  	.cmn =3D 0x1,
> >  	.pll[0] =3D 0xF4, .pll[1] =3D 0x00, .pll[2] =3D 0x70, .pll[3] =3D 0x0=
0,
> > .pll[4] =3D 0x00, @@ -1579,7 +1529,6 @@ static const struct
> > intel_c10pll_state
> > mtl_c10_hdmi_138500 =3D {  };
> >
> >  static const struct intel_c10pll_state mtl_c10_hdmi_147160 =3D {
> > -	.clock =3D 147160,
> >  	.tx =3D 0x10,
> >  	.cmn =3D 0x1,
> >  	.pll[0] =3D 0xF4, .pll[1] =3D 0x00, .pll[2] =3D 0x78, .pll[3] =3D 0x0=
0,
> > .pll[4] =3D 0x00, @@ -1589,7 +1538,6 @@ static const struct
> > intel_c10pll_state
> > mtl_c10_hdmi_147160 =3D {  };
> >
> >  static const struct intel_c10pll_state mtl_c10_hdmi_148352 =3D {
> > -	.clock =3D 148352,
> >  	.tx =3D 0x10,
> >  	.cmn =3D 0x1,
> >  	.pll[0] =3D 0xF4, .pll[1] =3D 0x00, .pll[2] =3D 0x7A, .pll[3] =3D 0x0=
0,
> > .pll[4] =3D 0x00, @@ -1599,7 +1547,6 @@ static const struct
> > intel_c10pll_state
> > mtl_c10_hdmi_148352 =3D {  };
> >
> >  static const struct intel_c10pll_state mtl_c10_hdmi_154000 =3D {
> > -	.clock =3D 154000,
> >  	.tx =3D 0x10,
> >  	.cmn =3D 0x1,
> >  	.pll[0] =3D 0xB4, .pll[1] =3D 0x00, .pll[2] =3D 0x80, .pll[3] =3D 0x0=
0,
> > .pll[4] =3D 0x00, @@ -1609,7 +1556,6 @@ static const struct
> > intel_c10pll_state
> > mtl_c10_hdmi_154000 =3D {  };
> >
> >  static const struct intel_c10pll_state mtl_c10_hdmi_162000 =3D {
> > -	.clock =3D 162000,
> >  	.tx =3D 0x10,
> >  	.cmn =3D 0x1,
> >  	.pll[0] =3D 0xB4, .pll[1] =3D 0x00, .pll[2] =3D 0x88, .pll[3] =3D 0x0=
0,
> > .pll[4] =3D 0x00, @@ -1619,7 +1565,6 @@ static const struct
> > intel_c10pll_state
> > mtl_c10_hdmi_162000 =3D {  };
> >
> >  static const struct intel_c10pll_state mtl_c10_hdmi_167000 =3D {
> > -	.clock =3D 167000,
> >  	.tx =3D 0x10,
> >  	.cmn =3D 0x1,
> >  	.pll[0] =3D 0xB4, .pll[1] =3D 0x00, .pll[2] =3D 0x8C, .pll[3] =3D 0x0=
0,
> > .pll[4] =3D 0x00, @@ -1629,7 +1574,6 @@ static const struct
> > intel_c10pll_state
> > mtl_c10_hdmi_167000 =3D {  };
> >
> >  static const struct intel_c10pll_state mtl_c10_hdmi_197802 =3D {
> > -	.clock =3D 197802,
> >  	.tx =3D 0x10,
> >  	.cmn =3D 0x1,
> >  	.pll[0] =3D 0x74, .pll[1] =3D 0x00, .pll[2] =3D 0xAE, .pll[3] =3D 0x0=
0,
> > .pll[4] =3D 0x00, @@ -1639,7 +1583,6 @@ static const struct
> > intel_c10pll_state
> > mtl_c10_hdmi_197802 =3D {  };
> >
> >  static const struct intel_c10pll_state mtl_c10_hdmi_198000 =3D {
> > -	.clock =3D 198000,
> >  	.tx =3D 0x10,
> >  	.cmn =3D 0x1,
> >  	.pll[0] =3D 0x74, .pll[1] =3D 0x00, .pll[2] =3D 0xAE, .pll[3] =3D 0x0=
0,
> > .pll[4] =3D 0x00, @@ -1649,7 +1592,6 @@ static const struct
> > intel_c10pll_state
> > mtl_c10_hdmi_198000 =3D {  };
> >
> >  static const struct intel_c10pll_state mtl_c10_hdmi_209800 =3D {
> > -	.clock =3D 209800,
> >  	.tx =3D 0x10,
> >  	.cmn =3D 0x1,
> >  	.pll[0] =3D 0x34, .pll[1] =3D 0x00, .pll[2] =3D 0xBA, .pll[3] =3D 0x0=
0,
> > .pll[4] =3D 0x00, @@ -1659,7 +1601,6 @@ static const struct
> > intel_c10pll_state
> > mtl_c10_hdmi_209800 =3D {  };
> >
> >  static const struct intel_c10pll_state mtl_c10_hdmi_241500 =3D {
> > -	.clock =3D 241500,
> >  	.tx =3D 0x10,
> >  	.cmn =3D 0x1,
> >  	.pll[0] =3D 0x34, .pll[1] =3D 0x00, .pll[2] =3D 0xDA, .pll[3] =3D 0x0=
0,
> > .pll[4] =3D 0x00, @@ -1669,7 +1610,6 @@ static const struct
> > intel_c10pll_state
> > mtl_c10_hdmi_241500 =3D {  };
> >
> >  static const struct intel_c10pll_state mtl_c10_hdmi_262750 =3D {
> > -	.clock =3D 262750,
> >  	.tx =3D 0x10,
> >  	.cmn =3D 0x1,
> >  	.pll[0] =3D 0xF4, .pll[1] =3D 0x00, .pll[2] =3D 0x68, .pll[3] =3D 0x0=
0,
> > .pll[4] =3D 0x00, @@ -1679,7 +1619,6 @@ static const struct
> > intel_c10pll_state
> > mtl_c10_hdmi_262750 =3D {  };
> >
> >  static const struct intel_c10pll_state mtl_c10_hdmi_268500 =3D {
> > -	.clock =3D 268500,
> >  	.tx =3D 0x10,
> >  	.cmn =3D 0x1,
> >  	.pll[0] =3D 0xF4, .pll[1] =3D 0x00, .pll[2] =3D 0x6A, .pll[3] =3D 0x0=
0,
> > .pll[4] =3D 0x00, @@ -1689,7 +1628,6 @@ static const struct
> > intel_c10pll_state
> > mtl_c10_hdmi_268500 =3D {  };
> >
> >  static const struct intel_c10pll_state mtl_c10_hdmi_296703 =3D {
> > -	.clock =3D 296703,
> >  	.tx =3D 0x10,
> >  	.cmn =3D 0x1,
> >  	.pll[0] =3D 0xF4, .pll[1] =3D 0x00, .pll[2] =3D 0x7A, .pll[3] =3D 0x0=
0,
> > .pll[4] =3D 0x00, @@ -1699,7 +1637,6 @@ static const struct
> > intel_c10pll_state
> > mtl_c10_hdmi_296703 =3D {  };
> >
> >  static const struct intel_c10pll_state mtl_c10_hdmi_297000 =3D {
> > -	.clock =3D 297000,
> >  	.tx =3D 0x10,
> >  	.cmn =3D 0x1,
> >  	.pll[0] =3D 0xF4, .pll[1] =3D 0x00, .pll[2] =3D 0x7A, .pll[3] =3D 0x0=
0,
> > .pll[4] =3D 0x00, @@ -1709,7 +1646,6 @@ static const struct
> > intel_c10pll_state
> > mtl_c10_hdmi_297000 =3D {  };
> >
> >  static const struct intel_c10pll_state mtl_c10_hdmi_319750 =3D {
> > -	.clock =3D 319750,
> >  	.tx =3D 0x10,
> >  	.cmn =3D 0x1,
> >  	.pll[0] =3D 0xB4, .pll[1] =3D 0x00, .pll[2] =3D 0x86, .pll[3] =3D 0x0=
0,
> > .pll[4] =3D 0x00, @@ -1719,7 +1655,6 @@ static const struct
> > intel_c10pll_state
> > mtl_c10_hdmi_319750 =3D {  };
> >
> >  static const struct intel_c10pll_state mtl_c10_hdmi_497750 =3D {
> > -	.clock =3D 497750,
> >  	.tx =3D 0x10,
> >  	.cmn =3D 0x1,
> >  	.pll[0] =3D 0x34, .pll[1] =3D 0x00, .pll[2] =3D 0xE2, .pll[3] =3D 0x0=
0,
> > .pll[4] =3D 0x00, @@ -1729,7 +1664,6 @@ static const struct
> > intel_c10pll_state
> > mtl_c10_hdmi_497750 =3D {  };
> >
> >  static const struct intel_c10pll_state mtl_c10_hdmi_592000 =3D {
> > -	.clock =3D 592000,
> >  	.tx =3D 0x10,
> >  	.cmn =3D 0x1,
> >  	.pll[0] =3D 0xF4, .pll[1] =3D 0x00, .pll[2] =3D 0x7A, .pll[3] =3D 0x0=
0,
> > .pll[4] =3D 0x00, @@ -1739,7 +1673,6 @@ static const struct
> > intel_c10pll_state
> > mtl_c10_hdmi_592000 =3D {  };
> >
> >  static const struct intel_c10pll_state mtl_c10_hdmi_593407 =3D {
> > -	.clock =3D 593407,
> >  	.tx =3D 0x10,
> >  	.cmn =3D 0x1,
> >  	.pll[0] =3D 0xF4, .pll[1] =3D 0x00, .pll[2] =3D 0x7A, .pll[3] =3D 0x0=
0,
> > .pll[4] =3D 0x00, @@ -1798,7 +1731,6 @@ static const struct
> > intel_cx0pll_params mtl_c10_hdmi_tables[] =3D {  };
> >
> >  static const struct intel_c20pll_state mtl_c20_hdmi_27_0 =3D {
> > -	.clock =3D 27000,
> >  	.tx =3D {  0xbe88, /* tx cfg0 */
> >  		  0x9800, /* tx cfg1 */
> >  		  0x0000, /* tx cfg2 */
> > @@ -1823,7 +1755,6 @@ static const struct intel_c20pll_state
> > mtl_c20_hdmi_27_0 =3D {  };
> >
> >  static const struct intel_c20pll_state mtl_c20_hdmi_74_25 =3D {
> > -	.clock =3D 74250,
> >  	.tx =3D {  0xbe88, /* tx cfg0 */
> >  		  0x9800, /* tx cfg1 */
> >  		  0x0000, /* tx cfg2 */
> > @@ -1848,7 +1779,6 @@ static const struct intel_c20pll_state
> > mtl_c20_hdmi_74_25 =3D {  };
> >
> >  static const struct intel_c20pll_state mtl_c20_hdmi_148_5 =3D {
> > -	.clock =3D 148500,
> >  	.tx =3D {  0xbe88, /* tx cfg0 */
> >  		  0x9800, /* tx cfg1 */
> >  		  0x0000, /* tx cfg2 */
> > @@ -1873,7 +1803,6 @@ static const struct intel_c20pll_state
> > mtl_c20_hdmi_148_5 =3D {  };
> >
> >  static const struct intel_c20pll_state mtl_c20_hdmi_594 =3D {
> > -	.clock =3D 594000,
> >  	.tx =3D {  0xbe88, /* tx cfg0 */
> >  		  0x9800, /* tx cfg1 */
> >  		  0x0000, /* tx cfg2 */
> > @@ -1898,7 +1827,6 @@ static const struct intel_c20pll_state
> > mtl_c20_hdmi_594 =3D {  };
> >
> >  static const struct intel_c20pll_state mtl_c20_hdmi_300 =3D {
> > -	.clock =3D 300000,
> >  	.tx =3D {  0xbe98, /* tx cfg0 */
> >  		  0x8800, /* tx cfg1 */
> >  		  0x0000, /* tx cfg2 */
> > @@ -1923,7 +1851,6 @@ static const struct intel_c20pll_state
> > mtl_c20_hdmi_300 =3D {  };
> >
> >  static const struct intel_c20pll_state mtl_c20_hdmi_600 =3D {
> > -	.clock =3D 600000,
> >  	.tx =3D {  0xbe98, /* tx cfg0 */
> >  		  0x8800, /* tx cfg1 */
> >  		  0x0000, /* tx cfg2 */
> > @@ -1948,7 +1875,6 @@ static const struct intel_c20pll_state
> > mtl_c20_hdmi_600 =3D {  };
> >
> >  static const struct intel_c20pll_state mtl_c20_hdmi_800 =3D {
> > -	.clock =3D 800000,
> >  	.tx =3D {  0xbe98, /* tx cfg0 */
> >  		  0x8800, /* tx cfg1 */
> >  		  0x0000, /* tx cfg2 */
> > @@ -1973,7 +1899,6 @@ static const struct intel_c20pll_state
> > mtl_c20_hdmi_800 =3D {  };
> >
> >  static const struct intel_c20pll_state mtl_c20_hdmi_1000 =3D {
> > -	.clock =3D 1000000,
> >  	.tx =3D {  0xbe98, /* tx cfg0 */
> >  		  0x8800, /* tx cfg1 */
> >  		  0x0000, /* tx cfg2 */
> > @@ -1998,7 +1923,6 @@ static const struct intel_c20pll_state
> > mtl_c20_hdmi_1000 =3D {  };
> >
> >  static const struct intel_c20pll_state mtl_c20_hdmi_1200 =3D {
> > -	.clock =3D 1200000,
> >  	.tx =3D {  0xbe98, /* tx cfg0 */
> >  		  0x8800, /* tx cfg1 */
> >  		  0x0000, /* tx cfg2 */
> > @@ -2338,8 +2262,6 @@ static void intel_c10pll_readout_hw_state(struct
> > intel_encoder *encoder,
> >
> >  	intel_cx0_phy_transaction_end(encoder, wakeref);
> >
> > -	pll_state->clock =3D intel_c10pll_calc_port_clock(pll_state);
> > -
> >  	cx0pll_state->ssc_enabled =3D readout_ssc_state(encoder, true);
> >
> >  	if (cx0pll_state->ssc_enabled !=3D
> > intel_c10pll_ssc_enabled(pll_state))
> > @@ -2384,8 +2306,7 @@ static void intel_c10pll_dump_hw_state(struct
> > drm_printer *p,
> >  	unsigned int multiplier, tx_clk_div;
> >
> >  	fracen =3D hw_state->pll[0] & C10_PLL0_FRACEN;
> > -	drm_printf(p, "c10pll_hw_state: clock: %d, fracen: %s, ",
> > -		   hw_state->clock, str_yes_no(fracen));
> > +	drm_printf(p, "c10pll_hw_state: fracen: %s, ", str_yes_no(fracen));
> >
> >  	if (fracen) {
> >  		frac_quot =3D hw_state->pll[12] << 8 | hw_state->pll[11]; @@ -
> > 2490,7 +2411,6 @@ static int intel_c20_compute_hdmi_tmds_pll(struct
> > intel_display *display,
> >  	else
> >  		mpllb_ana_freq_vco =3D MPLLB_ANA_FREQ_VCO_0;
> >
> > -	pll_state->clock	=3D port_clock;
> >  	pll_state->tx[0]	=3D 0xbe88;
> >  	pll_state->tx[1]	=3D intel_c20_hdmi_tmds_tx_cgf_1(display);
> >  	pll_state->tx[2]	=3D 0x0000;
> > @@ -2839,8 +2759,6 @@ static void intel_c20pll_readout_hw_state(struct
> > intel_encoder *encoder,
> >  		}
> >  	}
> >
> > -	pll_state->clock =3D intel_c20pll_calc_port_clock(pll_state);
> > -
> >  	intel_cx0_phy_transaction_end(encoder, wakeref);
> >
> >  	cx0pll_state->ssc_enabled =3D readout_ssc_state(encoder,
> > intel_c20phy_use_mpllb(pll_state));
> > @@ -2851,7 +2769,7 @@ static void intel_c20pll_dump_hw_state(struct
> > drm_printer *p,  {
> >  	int i;
> >
> > -	drm_printf(p, "c20pll_hw_state: clock: %d\n", hw_state->clock);
> > +	drm_printf(p, "c20pll_hw_state:\n");
> >  	drm_printf(p,
> >  		   "tx[0] =3D 0x%.4x, tx[1] =3D 0x%.4x, tx[2] =3D 0x%.4x\n",
> >  		   hw_state->tx[0], hw_state->tx[1], hw_state->tx[2]); diff --
> git
> > a/drivers/gpu/drm/i915/display/intel_dpll_mgr.h
> > b/drivers/gpu/drm/i915/display/intel_dpll_mgr.h
> > index 5b71c860515f..4cc14ce5eebe 100644
> > --- a/drivers/gpu/drm/i915/display/intel_dpll_mgr.h
> > +++ b/drivers/gpu/drm/i915/display/intel_dpll_mgr.h
> > @@ -241,14 +241,12 @@ struct intel_mpllb_state {  };
> >
> >  struct intel_c10pll_state {
> > -	u32 clock; /* in KHz */
> >  	u8 tx;
> >  	u8 cmn;
> >  	u8 pll[20];
> >  };
> >
> >  struct intel_c20pll_state {
> > -	u32 clock; /* in kHz */
> >  	u16 tx[3];
> >  	u16 cmn[4];
> >  	union {
> > @@ -274,7 +272,6 @@ struct intel_cx0pll_state {  };
> >
> >  struct intel_lt_phy_pll_state {
> > -	u32 clock; /* in kHz */
> >  	u8 addr_msb[13];
> >  	u8 addr_lsb[13];
> >  	u8 data[13][4];
> > diff --git a/drivers/gpu/drm/i915/display/intel_lt_phy.c
> > b/drivers/gpu/drm/i915/display/intel_lt_phy.c
> > index bc73b1466bc4..9a8ea09f6c00 100644
> > --- a/drivers/gpu/drm/i915/display/intel_lt_phy.c
> > +++ b/drivers/gpu/drm/i915/display/intel_lt_phy.c
> > @@ -59,7 +59,6 @@ struct lt_phy_params {  };
> >
> >  static const struct intel_lt_phy_pll_state xe3plpd_lt_dp_rbr =3D {
> > -	.clock =3D 162000,
> >  	.config =3D {
> >  		0x83,
> >  		0x2d,
> > @@ -113,7 +112,6 @@ static const struct intel_lt_phy_pll_state
> > xe3plpd_lt_dp_rbr =3D {  };
> >
> >  static const struct intel_lt_phy_pll_state xe3plpd_lt_dp_hbr1 =3D {
> > -	.clock =3D 270000,
> >  	.config =3D {
> >  		0x8b,
> >  		0x2d,
> > @@ -167,7 +165,6 @@ static const struct intel_lt_phy_pll_state
> > xe3plpd_lt_dp_hbr1 =3D {  };
> >
> >  static const struct intel_lt_phy_pll_state xe3plpd_lt_dp_hbr2 =3D {
> > -	.clock =3D 540000,
> >  	.config =3D {
> >  		0x93,
> >  		0x2d,
> > @@ -221,7 +218,6 @@ static const struct intel_lt_phy_pll_state
> > xe3plpd_lt_dp_hbr2 =3D {  };
> >
> >  static const struct intel_lt_phy_pll_state xe3plpd_lt_dp_hbr3 =3D {
> > -	.clock =3D 810000,
> >  	.config =3D {
> >  		0x9b,
> >  		0x2d,
> > @@ -275,7 +271,6 @@ static const struct intel_lt_phy_pll_state
> > xe3plpd_lt_dp_hbr3 =3D {  };
> >
> >  static const struct intel_lt_phy_pll_state xe3plpd_lt_dp_uhbr10 =3D {
> > -	.clock =3D 1000000,
> >  	.config =3D {
> >  		0x43,
> >  		0x2d,
> > @@ -329,7 +324,6 @@ static const struct intel_lt_phy_pll_state
> > xe3plpd_lt_dp_uhbr10 =3D {  };
> >
> >  static const struct intel_lt_phy_pll_state xe3plpd_lt_dp_uhbr13_5 =3D =
{
> > -	.clock =3D 1350000,
> >  	.config =3D {
> >  		0xcb,
> >  		0x2d,
> > @@ -383,7 +377,6 @@ static const struct intel_lt_phy_pll_state
> > xe3plpd_lt_dp_uhbr13_5 =3D {  };
> >
> >  static const struct intel_lt_phy_pll_state xe3plpd_lt_dp_uhbr20 =3D {
> > -	.clock =3D 2000000,
> >  	.config =3D {
> >  		0x53,
> >  		0x2d,
> > @@ -465,7 +458,6 @@ static const struct intel_lt_phy_pll_params
> > xe3plpd_lt_dp_tables[] =3D {  };
> >
> >  static const struct intel_lt_phy_pll_state xe3plpd_lt_edp_2_16 =3D {
> > -	.clock =3D 216000,
> >  	.config =3D {
> >  		0xa3,
> >  		0x2d,
> > @@ -519,7 +511,6 @@ static const struct intel_lt_phy_pll_state
> > xe3plpd_lt_edp_2_16 =3D {  };
> >
> >  static const struct intel_lt_phy_pll_state xe3plpd_lt_edp_2_43 =3D {
> > -	.clock =3D 243000,
> >  	.config =3D {
> >  		0xab,
> >  		0x2d,
> > @@ -573,7 +564,6 @@ static const struct intel_lt_phy_pll_state
> > xe3plpd_lt_edp_2_43 =3D {  };
> >
> >  static const struct intel_lt_phy_pll_state xe3plpd_lt_edp_3_24 =3D {
> > -	.clock =3D 324000,
> >  	.config =3D {
> >  		0xb3,
> >  		0x2d,
> > @@ -627,7 +617,6 @@ static const struct intel_lt_phy_pll_state
> > xe3plpd_lt_edp_3_24 =3D {  };
> >
> >  static const struct intel_lt_phy_pll_state xe3plpd_lt_edp_4_32 =3D {
> > -	.clock =3D 432000,
> >  	.config =3D {
> >  		0xbb,
> >  		0x2d,
> > @@ -681,7 +670,6 @@ static const struct intel_lt_phy_pll_state
> > xe3plpd_lt_edp_4_32 =3D {  };
> >
> >  static const struct intel_lt_phy_pll_state xe3plpd_lt_edp_6_75 =3D {
> > -	.clock =3D 675000,
> >  	.config =3D {
> >  		0xdb,
> >  		0x2d,
> > @@ -748,7 +736,6 @@ static const struct intel_lt_phy_pll_params
> > xe3plpd_lt_edp_tables[] =3D {  };
> >
> >  static const struct intel_lt_phy_pll_state xe3plpd_lt_hdmi_252 =3D {
> > -	.clock =3D 25200,
> >  	.config =3D {
> >  		0x84,
> >  		0x2d,
> > @@ -802,7 +789,6 @@ static const struct intel_lt_phy_pll_state
> > xe3plpd_lt_hdmi_252 =3D {  };
> >
> >  static const struct intel_lt_phy_pll_state xe3plpd_lt_hdmi_742p5 =3D {
> > -	.clock =3D 74250,
> >  	.config =3D {
> >  		0x84,
> >  		0x2d,
> > @@ -856,7 +842,6 @@ static const struct intel_lt_phy_pll_state
> > xe3plpd_lt_hdmi_742p5 =3D {  };
> >
> >  static const struct intel_lt_phy_pll_state xe3plpd_lt_hdmi_1p485 =3D {
> > -	.clock =3D 148500,
> >  	.config =3D {
> >  		0x84,
> >  		0x2d,
> > @@ -910,7 +895,6 @@ static const struct intel_lt_phy_pll_state
> > xe3plpd_lt_hdmi_1p485 =3D {  };
> >
> >  static const struct intel_lt_phy_pll_state xe3plpd_lt_hdmi_5p94 =3D {
> > -	.clock =3D 594000,
> >  	.config =3D {
> >  		0x84,
> >  		0x2d,
> > @@ -2182,7 +2166,6 @@ void intel_lt_phy_pll_readout_hw_state(struct
> > intel_encoder *encoder,
> >  				       const struct intel_crtc_state *crtc_state,
> >  				       struct intel_lt_phy_pll_state *pll_state)  {
> > -	struct intel_display *display =3D to_intel_display(encoder);
> >  	u8 owned_lane_mask;
> >  	u8 lane;
> >  	struct ref_tracker *wakeref;
> > @@ -2207,8 +2190,6 @@ void intel_lt_phy_pll_readout_hw_state(struct
> > intel_encoder *encoder,
> >  						  LT_PHY_VDR_X_DATAY(i, j));
> >  	}
> >
> > -	pll_state->clock =3D
> > -		intel_lt_phy_calc_port_clock(display, &crtc_state-
> > >dpll_hw_state.ltpll);
> >  	intel_lt_phy_transaction_end(encoder, wakeref);  }
> >
> > @@ -2222,7 +2203,6 @@ void intel_lt_phy_pll_state_verify(struct
> > intel_atomic_state *state,
> >  	struct intel_encoder *encoder;
> >  	struct intel_lt_phy_pll_state pll_hw_state =3D {};
> >  	const struct intel_lt_phy_pll_state *pll_sw_state =3D &new_crtc_state=
-
> > >dpll_hw_state.ltpll;
> > -	int clock;
> >  	int i, j;
> >
> >  	if (DISPLAY_VER(display) < 35)
> > @@ -2238,17 +2218,11 @@ void intel_lt_phy_pll_state_verify(struct
> > intel_atomic_state *state,
> >
> >  	encoder =3D intel_get_crtc_new_encoder(state, new_crtc_state);
> >  	intel_lt_phy_pll_readout_hw_state(encoder, new_crtc_state,
> > &pll_hw_state);
> > -	clock =3D intel_lt_phy_calc_port_clock(display, &new_crtc_state-
> > >dpll_hw_state.ltpll);
> >
> >  	dig_port =3D enc_to_dig_port(encoder);
> >  	if (intel_tc_port_in_tbt_alt_mode(dig_port))
> >  		return;
> >
> > -	INTEL_DISPLAY_STATE_WARN(display, pll_hw_state.clock !=3D clock,
> > -				 "[CRTC:%d:%s] mismatch in LT PHY: Register
> > CLOCK (expected %d, found %d)",
> > -				 crtc->base.base.id, crtc->base.name,
> > -				 pll_sw_state->clock, pll_hw_state.clock);
> > -
> >  	for (i =3D 0; i < 3; i++) {
> >  		INTEL_DISPLAY_STATE_WARN(display, pll_hw_state.config[i]
> !=3D
> > pll_sw_state->config[i],
> >  					 "[CRTC:%d:%s] mismatch in LT PHY
> PLL CONFIG%d: (expected
> > 0x%04x, found 0x%04x)", diff --git
> > a/drivers/gpu/drm/i915/display/intel_snps_hdmi_pll.c
> > b/drivers/gpu/drm/i915/display/intel_snps_hdmi_pll.c
> > index a201edceee10..7fe6b4a18213 100644
> > --- a/drivers/gpu/drm/i915/display/intel_snps_hdmi_pll.c
> > +++ b/drivers/gpu/drm/i915/display/intel_snps_hdmi_pll.c
> > @@ -332,8 +332,6 @@ void intel_snps_hdmi_pll_compute_c10pll(struct
> > intel_c10pll_state *pll_state, u6
> >  			      c10_curve_1, c10_curve_2, prescaler_divider,
> >  			      &pll_params);
> >
> > -	pll_state->clock =3D pixel_clock;
> > -
> >  	pll_state->tx =3D 0x10;
> >  	pll_state->cmn =3D 0x1;
> >  	pll_state->pll[0] =3D REG_FIELD_PREP(C10_PLL0_DIV5CLK_EN,
> > pll_params.mpll_div5_en) |
> > --
> > 2.34.1

