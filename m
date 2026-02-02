Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id 4KSLK8Q3gWmUEwMAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Tue, 03 Feb 2026 00:48:20 +0100
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 20D98D2BCC
	for <lists+intel-gfx@lfdr.de>; Tue, 03 Feb 2026 00:48:20 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 82A3710E446;
	Mon,  2 Feb 2026 23:48:18 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="nVeWhROd";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.17])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 36D5A10E414;
 Mon,  2 Feb 2026 23:48:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1770076096; x=1801612096;
 h=date:from:to:cc:subject:message-id:references:
 in-reply-to:mime-version;
 bh=6sHgUWRNCq2BcuOABTvMP6gryz5xfqXj95at7hqD1Ik=;
 b=nVeWhROdQE09utW0poShs5QAsGZuwNyt73n1ceGLsA3O4TWeO/IkK1vT
 013Whhz36Zh9qBzIo3vExgCv/a570SF2zIa7eO+svQ0nnGPuqNVN1yyxZ
 aewLY5cFG8d0/MgepdPNX4GQoGVdV8emmWC3m68GK+W1BONeLfE5jBIEz
 f2blbPNjOREnWLnN6B/wj+SSCmqGRqkrzc+O00QpU40toVrQfpjxshru8
 O1MWTSvRuipnd5BGavP3QP7HvrKjwJSZszl6iRnHircdxWyRVdHAqi4lU
 3t0UM6MpC+OJbV19UrqzQ9Ne2afzD3DV+Zm5xTmrIk9Pz6Tr1fzzVqZzK Q==;
X-CSE-ConnectionGUID: vhbazIutQQ6vsrR0ofCdcA==
X-CSE-MsgGUID: at/Tg1sDRRWXh0LfV+w8qA==
X-IronPort-AV: E=McAfee;i="6800,10657,11690"; a="71224431"
X-IronPort-AV: E=Sophos;i="6.21,269,1763452800"; d="scan'208";a="71224431"
Received: from orviesa001.jf.intel.com ([10.64.159.141])
 by orvoesa109.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 02 Feb 2026 15:48:13 -0800
X-CSE-ConnectionGUID: oeFUm+4fSIOG+qZtGUmqZA==
X-CSE-MsgGUID: x5lobEYSSfKDbtRdBNVEIQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.21,269,1763452800"; d="scan'208";a="247271226"
Received: from orsmsx902.amr.corp.intel.com ([10.22.229.24])
 by orviesa001.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 02 Feb 2026 15:48:14 -0800
Received: from ORSMSX903.amr.corp.intel.com (10.22.229.25) by
 ORSMSX902.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.35; Mon, 2 Feb 2026 15:48:13 -0800
Received: from ORSEDG902.ED.cps.intel.com (10.7.248.12) by
 ORSMSX903.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.35 via Frontend Transport; Mon, 2 Feb 2026 15:48:13 -0800
Received: from CH1PR05CU001.outbound.protection.outlook.com (52.101.193.19) by
 edgegateway.intel.com (134.134.137.112) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.35; Mon, 2 Feb 2026 15:48:12 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=kSwdm49vI1mPLkGhuOHhE/oKCnWobhqUFG8DyZV8LTq22oXRq9hUT9vDxib1WG6rdRvf3u+VCsRkA8dkhWHDSteoO1tM05U1ynAXzW/xkEd7kFwPhaISdncBCf4R2J/a10yOIIDKvFA9SUAZEKH6Hn62aGpvh4yL0PglBXO1t2AbbPFjcSsMVR+SPTmqtcIK0PGS+nwiw0KxPH6bPIXpJZERkvlBMGmr999fJHf5cRD6M2FEYNIe1AXdBVFKfzSckE/aIlArHBRtZoLHT11OPvlGD6w5TGnyx6ek3Xy433RRJPBUjSIEYK1J/vZRqkJ0P4eIYizRvFqFOO3/tpLMig==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=nlNMB2lYr9ztE67vWuXwFqzsARVa6Kvo60SChRPwQcI=;
 b=Nq1mld+ZhC/LuEFF0tYlDhhLvl+SrnQDPVUE971e/OBxg1hS1qjzaHdbpbzIDKKD4dE//T2XIZIj5Ub5wfLc2oxZi2ENawvjTO1TLY/mZNcIyL+0iWgdlSe8p1lcKPdpFqs5J5L8Ii6oDsmMSj4VdnBoIWChsjW5tPqb7clkukBul8isQkAz3Sl1qxXsAF6H7n+Uky4ltGzaHIseOLQVtKhKaFRipvHW9+sQbh1nPuZ/Y/j2nhzeiYLLWOjDIqgIcR+K5AFDdsvEPC7LHcgR5qC998KASo/Phpe4krHAlP/fNe59HsbS0iMmqCUu08Nnv/EFiZKKGIVOzdunmDkduQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from DS0PR11MB8182.namprd11.prod.outlook.com (2603:10b6:8:163::17)
 by LV8PR11MB8606.namprd11.prod.outlook.com (2603:10b6:408:1f7::12) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9564.16; Mon, 2 Feb
 2026 23:48:09 +0000
Received: from DS0PR11MB8182.namprd11.prod.outlook.com
 ([fe80::7b65:81e6:c6c4:449e]) by DS0PR11MB8182.namprd11.prod.outlook.com
 ([fe80::7b65:81e6:c6c4:449e%7]) with mapi id 15.20.9564.016; Mon, 2 Feb 2026
 23:48:09 +0000
Date: Mon, 2 Feb 2026 15:48:06 -0800
From: Matt Roper <matthew.d.roper@intel.com>
To: Gustavo Sousa <gustavo.sousa@intel.com>
CC: <intel-xe@lists.freedesktop.org>, <intel-gfx@lists.freedesktop.org>,
 Shekhar Chauhan <shekhar.chauhan@intel.com>
Subject: Re: [PATCH 13/16] drm/xe/nvlp: Add NVL-P platform definition
Message-ID: <20260202234806.GP458797@mdroper-desk1.amr.corp.intel.com>
References: <20260202-nvl-p-upstreaming-v1-0-653e4ff105dc@intel.com>
 <20260202-nvl-p-upstreaming-v1-13-653e4ff105dc@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Disposition: inline
In-Reply-To: <20260202-nvl-p-upstreaming-v1-13-653e4ff105dc@intel.com>
X-ClientProxiedBy: SJ0PR13CA0022.namprd13.prod.outlook.com
 (2603:10b6:a03:2c0::27) To DS0PR11MB8182.namprd11.prod.outlook.com
 (2603:10b6:8:163::17)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DS0PR11MB8182:EE_|LV8PR11MB8606:EE_
X-MS-Office365-Filtering-Correlation-Id: ffded970-e679-49f5-caa1-08de62b584c8
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|1800799024|366016|376014;
X-Microsoft-Antispam-Message-Info: =?us-ascii?Q?YWdXot3CZK/3bT3o/hWDLO61CyaCdejpxxUbVtiQfsInrVpXYuuNLJZDxIbx?=
 =?us-ascii?Q?qV11M3MlmDHeeOZRWt7u9X24krDDn26bkIthZFPk+0Bj4182azz6Di2gnKAD?=
 =?us-ascii?Q?lfFpQ2/HakREOQqrhrH4e8j+vTqHkgiTv4o8SMjUkdVKbZQmmwFpkeKhfHIW?=
 =?us-ascii?Q?Wa3Xa1V/C6OKvls8KV/B3K4N7+kA/eocICFwOJzpmbMGZEvgkuXTI+lvGczK?=
 =?us-ascii?Q?GMc6WeqUAxkknxldcTx4E8ohqXxl684SyS053ekVXwmoe3qmoo8MBI2GrJa2?=
 =?us-ascii?Q?iInZxq781zf+aXPGcn/bx6hT7a1601lgBl4/pEpWl1NgscY1W4Wu9p3abjND?=
 =?us-ascii?Q?h5IcF7zjf3vxNaxuERVyQsBKTYAbq4+lf4cM9TMLaHLQ0NYonywhekxGE3Bi?=
 =?us-ascii?Q?nlillw0qHkSgEUDGA6hLG7w1LhX/dwp/MKl3S5PPsjQXxnGYxQIhP9456+Hx?=
 =?us-ascii?Q?zOhj0vQoW3Pn1UIjm/RI1YzGl9QzHztfoaRJSJn0KREF2htV6Ifap7EwCYOW?=
 =?us-ascii?Q?0lgcmSfSmdN6dBy98k+hzl8cA42Uf/cdCZxBzirrlYQAqmnxML5J2Dan5xNq?=
 =?us-ascii?Q?4wL/RRjHEmQJcUHeJWwrv1qOKMAFBzl5L5zoSVG8m60uUwfSz9HfkporiUKn?=
 =?us-ascii?Q?edVuz69lkB1hDc5Ej15hZf7fwyO+U9Y12YimTlvZFziamT40oq7dMvKXSVGO?=
 =?us-ascii?Q?0v6mT5xSus/ySjB6doDx6JTgzdEm5nBEl6gPpTqZBUWRFSUF55bwwRxd6qMe?=
 =?us-ascii?Q?xm6qRlzIR+/N7EUmQjJ0m8Joe/Hs5EMxGwYX5iE43dFmAN0a0dXWwB9te1yP?=
 =?us-ascii?Q?+86nFqD1IXqTLSIjRyI6ZyVob0PUVE2FqDGVAAlivKGl881R7Lu5OMzq6u43?=
 =?us-ascii?Q?3acZ7xJzBWZaP2QZ3QV/n7AQ3fHr7lOChV5nUrNiSVjYVsVAYPVAPJ492P00?=
 =?us-ascii?Q?LrkQosch1Z3E93BO9nHz6xkBss4ig7nphfBYKW80XKH0eKlggI2kCiM0uilR?=
 =?us-ascii?Q?3TS3Ntj7qOlEV4I7/KusP0K6LbD7efmicm1ZrqYcNyDg3leGIv6d3iSAU1Z5?=
 =?us-ascii?Q?uzupYrurPuZYnjRFUuO7kqBcx/lUspD0owNWQimPbSyCHEJ2TOyOf0TSeVqb?=
 =?us-ascii?Q?w2PN9hMNfRtDSbxXfpUzX/KWWaWUacEbu0nBRtaJ8vZDMJMFhpo1LJJWa+U3?=
 =?us-ascii?Q?aHAQ4a39HwnPDLzgGWTR2MsBVy4y6m9Un+mOR4EGTgiOV2Q2iYTFBDNfvJA+?=
 =?us-ascii?Q?xF5hUIDB+1dLkGeuY22lHyV3AcfBzD25VXsWs/J5+3mUBuGZ/GzDHsbQF19G?=
 =?us-ascii?Q?04Sz47x1EUpev7bws4pjQo8vUdBe4NAQ0TYooHi1SMUZ8xIOUJ7wBB9bzNdw?=
 =?us-ascii?Q?VhbXivDvtbAL/HpjsGomY2/gUY1VNyuaqBzGjFzZUNleT8ksZFbrT6WgoqX9?=
 =?us-ascii?Q?RoHzLUf9c9Xx+MEDnG4OU87vfGvRhClCVBAemiyrSP4pmpr/MhkAL1TFyfJw?=
 =?us-ascii?Q?LcrXz1d472uvotefyi6BrsTiqFNvgq4HYm/YaEcV88VaTXHrdWiKEJNUMVxJ?=
 =?us-ascii?Q?uySo587afIDnG+SUhDw=3D?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DS0PR11MB8182.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(1800799024)(366016)(376014); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?2UASil5L1uSgjdPieN6mpRFL6tgGBSflh3CNNyGs6c95Jq9M3f0Joc1PvDUY?=
 =?us-ascii?Q?PNsc+diRa0SopsKvcOqF+I3XwtauVCSWIo/FQGgW/0ivbcpLhRIHECxw+95h?=
 =?us-ascii?Q?cXaw6pd8ZzRpdK17xQK8T99SVU9SwnGSub1uv07abbvl+I9YeU2CgUCI4u0T?=
 =?us-ascii?Q?wvHM57+tGl0D1XTHg1NKoiAyFyy4spwanj03gPQxjgCJVDeEW2G5T1L1mgQW?=
 =?us-ascii?Q?2qyDNtFeCYr0XtWL9c7oOv+0iLd3ydzX127bMtbi4wwll4ayJhSDHqgatV21?=
 =?us-ascii?Q?Vx7FimySEQTBVO2JCqsGtDjB9VMg9z6nnAtYGynn/ZdMJr2M7zCyvIaPXBEa?=
 =?us-ascii?Q?wjf2CqBs29UyqGmB0VSj1h2O5O7A6Dh5x2Qea9hLguAr12DGy3ESKAfJoPVE?=
 =?us-ascii?Q?vpmxJYJWwgAav/iD6YwhC/tEqrW4VWC08oGo90EQFC1NdyOGjHvByiTerMVe?=
 =?us-ascii?Q?Ij3rxZnBL80zVgNpniGNFtRmLd7FDM3HV1tSNX1deMUxWoJxdLb//cL4UOFV?=
 =?us-ascii?Q?figO0df5jdbWwH/uF4U3p3kzDGB5XR6Ng3SVZyfkW8DrOCdAZDQKyxBe/RCl?=
 =?us-ascii?Q?4/JdWgtE0N8rA/i+tdEGlUGYVy948mFXZqrlxyfHjPYos2F02fyuzOrfl4Qd?=
 =?us-ascii?Q?cyGrIaw6guoqIgjug0ZBHcw9usRhXh3RV0r8/eClsdriGwIAEZ3hA04QXxT5?=
 =?us-ascii?Q?1zJIFNTVj8+7X1HZ6USlHv5obaQCLYnV0L5aiv/DIncgNvr+P79yC4dp7hBn?=
 =?us-ascii?Q?RNMppFDbekziuORxY8iJBBfdps5LwMUhNnYYUi6pPNknYs7K8kW2PdTzMpSt?=
 =?us-ascii?Q?74ipFM35tRk6nGqghx5uIc+5FxLBBfm5PJijHopovbL/iRM0u8WvwAN7NNYA?=
 =?us-ascii?Q?9DMjpY0eJvcug+wGCLmaq6eUrAbWKK7Um9jv9iM6HH1AkKwh7wD1OaFjwwfv?=
 =?us-ascii?Q?aElcdOf73jyLm+b0xvLzhaauszVB0awo0sYgFvEJ/cMYqP31wzcEURRSdkpD?=
 =?us-ascii?Q?C4ilyUXwmNspZXXo67khVGozUcLEpuvovSIdALfnB2WDbEtTuXDerYhpXVHq?=
 =?us-ascii?Q?p9lZVfjgIuthI8H0mvjybD5o0wO8jSIbqhUGOgkCchMi7EJ1TS8+Cr8HYXHb?=
 =?us-ascii?Q?QqviVaPQl1w+mqC8qLNPYbAoYC9F6f2GVPLSfkn9iQ2eDV3K8vvHDKF2Ujrp?=
 =?us-ascii?Q?qLVnl1o7tmkIoxT+ebYd8S9SSHmcjgPF9QCAmtK9i1I+REsmJnNwOF5ZrU6u?=
 =?us-ascii?Q?h74xRN6YqlEZ6HBTm9YP776sB/NtfszgiuuuP8zmOMNP09RqDSxfzvpp7Jui?=
 =?us-ascii?Q?u9etcERJ57nK1oczzG0dBfmXbCBq1gpRY2UPX/tBmNOkTqbKbFXKie9rkcFQ?=
 =?us-ascii?Q?cG+HUknZY0zGjvc+lxhFAY+HIQsJcT0yF4mUerOlMajAiRVn8QfPPvlQArA7?=
 =?us-ascii?Q?xgdKwPFw/3mPD5i8dKTDHZweA+TdKGdzmCpuMaHq7h06o52HWd6BHPQs47rN?=
 =?us-ascii?Q?5i0N+IMzbGOrHilmujqYnt8o0RL/sRyFg9yTL3UoFXJUP2WWO/30w3xIhW65?=
 =?us-ascii?Q?GHj6lf4Knj43NjTJBK1YGcxrZQp7+Lhxvt3d74lRXEGB2wU+VSwD7Kd1TMpF?=
 =?us-ascii?Q?N2v2m2XPFT6bO06YxvrK00dXjmq/IW4PCTq3VFa+mjJ5oMS1FQj9szhReghk?=
 =?us-ascii?Q?EBwyt68W6xA/hBpQtXOVYDRBhFIiIIGJJ7shto01snMyjEJHdN5uqZ6tmkJx?=
 =?us-ascii?Q?4KJ9zakc+tS2GrEgQJ/edLLypdX/VBk=3D?=
X-MS-Exchange-CrossTenant-Network-Message-Id: ffded970-e679-49f5-caa1-08de62b584c8
X-MS-Exchange-CrossTenant-AuthSource: DS0PR11MB8182.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 02 Feb 2026 23:48:09.1063 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: t6C37WaRJ7RQb0LAEIsTHjVaokKgy6xXGZlDLUCNoFLc2M4uqsIuNnCsmTcecB6b10A9VvfJWSOFq2uoZXiFSyfWTqvkfTiz2DGmPBBeWds=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: LV8PR11MB8606
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
	DBL_BLOCKED_OPENRESOLVER(0.00)[mdroper-desk1.amr.corp.intel.com:mid,gabe.freedesktop.org:helo,gabe.freedesktop.org:rdns,intel.com:email,intel.com:dkim];
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
X-Rspamd-Queue-Id: 20D98D2BCC
X-Rspamd-Action: no action

On Mon, Feb 02, 2026 at 06:43:19PM -0300, Gustavo Sousa wrote:
> From: Shekhar Chauhan <shekhar.chauhan@intel.com>
> 
> Add platform definition along with device IDs for NVL-P.

Not sure if you wanted to add bspec references to this one like you had
for the Xe3p_LPG descriptor, but the flags you have here look correct to
me for now and the PCI IDs look correct so,

Reviewed-by: Matt Roper <matthew.d.roper@intel.com>

> 
> BSpec: 74201
> Signed-off-by: Shekhar Chauhan <shekhar.chauhan@intel.com>
> Signed-off-by: Gustavo Sousa <gustavo.sousa@intel.com>
> ---
>  drivers/gpu/drm/xe/xe_bo.c             |  4 ++--
>  drivers/gpu/drm/xe/xe_pci.c            | 15 +++++++++++++++
>  drivers/gpu/drm/xe/xe_platform_types.h |  1 +
>  include/drm/intel/pciids.h             | 12 ++++++++++++
>  4 files changed, 30 insertions(+), 2 deletions(-)
> 
> diff --git a/drivers/gpu/drm/xe/xe_bo.c b/drivers/gpu/drm/xe/xe_bo.c
> index 8bf16d60b9a5..9e998f9708df 100644
> --- a/drivers/gpu/drm/xe/xe_bo.c
> +++ b/drivers/gpu/drm/xe/xe_bo.c
> @@ -512,8 +512,8 @@ static struct ttm_tt *xe_ttm_tt_create(struct ttm_buffer_object *ttm_bo,
>  		/*
>  		 * Display scanout is always non-coherent with the CPU cache.
>  		 *
> -		 * For Xe_LPG and beyond, PPGTT PTE lookups are also
> -		 * non-coherent and require a CPU:WC mapping.
> +		 * For Xe_LPG and beyond up to NVL-P (excluding), PPGTT PTE
> +		 * lookups are also non-coherent and require a CPU:WC mapping.
>  		 */
>  		if ((!bo->cpu_caching && bo->flags & XE_BO_FLAG_SCANOUT) ||
>  		     (!xe->info.has_cached_pt && bo->flags & XE_BO_FLAG_PAGETABLE))
> diff --git a/drivers/gpu/drm/xe/xe_pci.c b/drivers/gpu/drm/xe/xe_pci.c
> index 9bcf7c067479..1ce4115e117e 100644
> --- a/drivers/gpu/drm/xe/xe_pci.c
> +++ b/drivers/gpu/drm/xe/xe_pci.c
> @@ -438,6 +438,20 @@ static const struct xe_device_desc cri_desc = {
>  	.vm_max_level = 4,
>  };
>  
> +static const struct xe_device_desc nvlp_desc = {
> +	PLATFORM(NOVALAKE_P),
> +	.dma_mask_size = 46,
> +	.has_cached_pt = true,
> +	.has_display = true,
> +	.has_flat_ccs = 1,
> +	.has_page_reclaim_hw_assist = true,
> +	.has_pre_prod_wa = true,
> +	.max_gt_per_tile = 2,
> +	.require_force_probe = true,
> +	.va_bits = 48,
> +	.vm_max_level = 4,
> +};
> +
>  #undef PLATFORM
>  __diag_pop();
>  
> @@ -468,6 +482,7 @@ static const struct pci_device_id pciidlist[] = {
>  	INTEL_WCL_IDS(INTEL_VGA_DEVICE, &ptl_desc),
>  	INTEL_NVLS_IDS(INTEL_VGA_DEVICE, &nvls_desc),
>  	INTEL_CRI_IDS(INTEL_PCI_DEVICE, &cri_desc),
> +	INTEL_NVLP_IDS(INTEL_VGA_DEVICE, &nvlp_desc),
>  	{ }
>  };
>  MODULE_DEVICE_TABLE(pci, pciidlist);
> diff --git a/drivers/gpu/drm/xe/xe_platform_types.h b/drivers/gpu/drm/xe/xe_platform_types.h
> index f516dbddfd88..6cff385227ea 100644
> --- a/drivers/gpu/drm/xe/xe_platform_types.h
> +++ b/drivers/gpu/drm/xe/xe_platform_types.h
> @@ -26,6 +26,7 @@ enum xe_platform {
>  	XE_PANTHERLAKE,
>  	XE_NOVALAKE_S,
>  	XE_CRESCENTISLAND,
> +	XE_NOVALAKE_P,
>  };
>  
>  enum xe_subplatform {
> diff --git a/include/drm/intel/pciids.h b/include/drm/intel/pciids.h
> index 52520e684ab1..33b91cb2e684 100644
> --- a/include/drm/intel/pciids.h
> +++ b/include/drm/intel/pciids.h
> @@ -900,4 +900,16 @@
>  #define INTEL_CRI_IDS(MACRO__, ...) \
>  	MACRO__(0x674C, ## __VA_ARGS__)
>  
> +/* NVL-P */
> +#define INTEL_NVLP_IDS(MACRO__, ...) \
> +	MACRO__(0xD750, ## __VA_ARGS__), \
> +	MACRO__(0xD751, ## __VA_ARGS__), \
> +	MACRO__(0xD752, ## __VA_ARGS__), \
> +	MACRO__(0xD753, ## __VA_ARGS__), \
> +	MACRO__(0XD754, ## __VA_ARGS__), \
> +	MACRO__(0XD755, ## __VA_ARGS__), \
> +	MACRO__(0XD756, ## __VA_ARGS__), \
> +	MACRO__(0XD757, ## __VA_ARGS__), \
> +	MACRO__(0xD75F, ## __VA_ARGS__)
> +
>  #endif /* __PCIIDS_H__ */
> 
> -- 
> 2.52.0
> 

-- 
Matt Roper
Graphics Software Engineer
Linux GPU Platform Enablement
Intel Corporation
