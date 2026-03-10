Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id iHqSCwW5r2mqbwIAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Tue, 10 Mar 2026 07:24:05 +0100
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 8DA89245CDC
	for <lists+intel-gfx@lfdr.de>; Tue, 10 Mar 2026 07:24:04 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id F0BB610E1F5;
	Tue, 10 Mar 2026 06:24:02 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="MgzsnXrZ";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.11])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 3FC2910E1F5;
 Tue, 10 Mar 2026 06:24:02 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1773123843; x=1804659843;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=aCexO0wsJE4cxyjjbSHW6xfW9nNQxQUhA6ZNlDClAxM=;
 b=MgzsnXrZkmy8IhAWCIZa8sDy90hqz706dWDr7lNbignYywuEuPZYYr+B
 qQEjZsL8pABNrxeym6SOw7CPPzpq6Vb8tn0McebxM1kiXCa/oE2Iz5/KM
 UaQirr6/Og4IE+lY3C8CUPqbDeniw1mnyvB7rU+LI/7Fq+dvr0EjMEa8I
 nbvlhkU2z+/1Dz4PY3Zvh97Nc9EqFDyDP60Dz5DNOhPweH/biuqOXCo+5
 D/Gx3mvFjdaQwCVw6LMdLhNNEfb+QOrFZvi0IyumTNN+nyMOInG9EFiKG
 Xu4HMZyadq5e70cE67/T61YQuRdsVRNbVvifNF5XyCuC+uP7Jm21wUWUN Q==;
X-CSE-ConnectionGUID: LGMQ036VSUeH6lVyzQU2Qg==
X-CSE-MsgGUID: nT19GWXbQyS+3B+jMyHGgA==
X-IronPort-AV: E=McAfee;i="6800,10657,11724"; a="84489830"
X-IronPort-AV: E=Sophos;i="6.23,111,1770624000"; d="scan'208";a="84489830"
Received: from fmviesa007.fm.intel.com ([10.60.135.147])
 by orvoesa103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 09 Mar 2026 23:24:02 -0700
X-CSE-ConnectionGUID: /Z6PdCqATHmiv5+P0534lQ==
X-CSE-MsgGUID: bIAs2OIGQfeNDcBrjleylA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.23,111,1770624000"; d="scan'208";a="217555645"
Received: from orsmsx901.amr.corp.intel.com ([10.22.229.23])
 by fmviesa007.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 09 Mar 2026 23:24:01 -0700
Received: from ORSMSX903.amr.corp.intel.com (10.22.229.25) by
 ORSMSX901.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Mon, 9 Mar 2026 23:24:00 -0700
Received: from ORSEDG902.ED.cps.intel.com (10.7.248.12) by
 ORSMSX903.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37 via Frontend Transport; Mon, 9 Mar 2026 23:24:00 -0700
Received: from CH4PR04CU002.outbound.protection.outlook.com (40.107.201.14) by
 edgegateway.intel.com (134.134.137.112) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Mon, 9 Mar 2026 23:23:59 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=BrGna9/w+CngT/iLl7i1Edjygj6jlwPDW3sO3uvONodEQCWUYf9MrJVJAyYYu2LVJblMH61VWpm5vLb4SH0sxJTk/IKUuh9RNDu3d737Imt/R9esCDJ4ZN6SG9kw9/Wax8Fo8nZzsGtHmAX0xJWv4lbIfG28uS7SW7g7FjdfnZLkyE7ojzXH5PEdgaEi8CUWIku07zDsF0zdRQuFsXfHOg4oYnreOf3SX/4QmWgwovLHa93mir8PIJNW9PeFkggxLo/S9vQs7RauOUocjbVbtxmCA2/9mv3wB5PnrKR3jFcuAmZGnoo/u7cNMRuyY0J89gRRXjvXhX7SmOZK2XTTvg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=Dq6rQhzgzBmd3y5sYkZ7uCEOiBep+G2A1ToEwEb+tcs=;
 b=A3AWfSTB7CigXQaDxz1h/YlWq5t+P6vEAFYtFqfqHUF5/PEtUyHGSPw46eGrBh9MMcg1luj9AsFxYvR5iSmtqMZAs+87OrAoqhiON2IaYhj/9ChZ8p8N81lWNmyY+Zph8q8Lh0SmCRJ4TQUrdMxngGU5PDfU2cpCz6hSJSN6W6ELzZ6dEBmNVVK9LHmKp7taf1KkqshfOun8K0wILGHiwcIrzRQuW+hbM4QP9FtBwhbRB+l+yaJt5llGnwoNGw+3pyTt6nYrEi8e2iyCLOxS/5ZsLybrutRliE7Ot/kg+kOaDLFhD6dF8FEwha+2ICeA/QXMd3kaHp9JH7gAlXaLGw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from DM3PPF208195D8D.namprd11.prod.outlook.com
 (2603:10b6:f:fc00::f13) by CY5PR11MB6116.namprd11.prod.outlook.com
 (2603:10b6:930:2b::14) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9700.11; Tue, 10 Mar
 2026 06:23:52 +0000
Received: from DM3PPF208195D8D.namprd11.prod.outlook.com
 ([fe80::21ae:7048:11eb:3faa]) by DM3PPF208195D8D.namprd11.prod.outlook.com
 ([fe80::21ae:7048:11eb:3faa%6]) with mapi id 15.20.9678.017; Tue, 10 Mar 2026
 06:23:52 +0000
From: "Kandpal, Suraj" <suraj.kandpal@intel.com>
To: "Kahola, Mika" <mika.kahola@intel.com>, "intel-gfx@lists.freedesktop.org"
 <intel-gfx@lists.freedesktop.org>, "intel-xe@lists.freedesktop.org"
 <intel-xe@lists.freedesktop.org>
CC: "Kahola, Mika" <mika.kahola@intel.com>
Subject: RE: [PATCH v2 12/24] drm/i915/lt_phy: Add xe3plpd .compare_hw_state
 hook
Thread-Topic: [PATCH v2 12/24] drm/i915/lt_phy: Add xe3plpd .compare_hw_state
 hook
Thread-Index: AQHcq9jsWswFSRAZ10aWYKBn79B1wrWnVRWQ
Date: Tue, 10 Mar 2026 06:23:52 +0000
Message-ID: <DM3PPF208195D8DD8A1D211AF8487B8DA27E346A@DM3PPF208195D8D.namprd11.prod.outlook.com>
References: <20260304131423.1017821-1-mika.kahola@intel.com>
 <20260304131423.1017821-13-mika.kahola@intel.com>
In-Reply-To: <20260304131423.1017821-13-mika.kahola@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: DM3PPF208195D8D:EE_|CY5PR11MB6116:EE_
x-ms-office365-filtering-correlation-id: 834a3fb9-f81f-4e25-f60b-08de7e6d9999
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0; ARA:13230040|376014|1800799024|366016|38070700021;
x-microsoft-antispam-message-info: 1ix9q5QNg3dv02MuO6pQJRKSlhCIDoe1hg1neW9ufF5KXxl408p/cc3s5nLfsnhizd6pFCmYWcjfFnWE0i9tZFsMcYCsepbMbRM6OlDyylvrTmYpqQR1shrzsEERDjhuikzuBTpbjufKekDq1lMq+Exdtl3GuSx7z3BdQKexR6dwFWmsR2hMhD3gXHTt8F/mDlgIZIb3yMiACL4B+vl68Rs9iSu34k9CQFZrqMdFxaobO9Vu+qzA0JjUurxxBZHyXFV0HgEfwsJJDA1B/2nm6QHqjM+IzR0Yp21aPxGraCFuzOYMSNHGRw/0eJr1uld2kN5iEDrHNdELh00copKtOt2jktMcDrn0tDlg/q+eBEJ/sBwRNfZAxcG82yVj8Sa8BuWdr4RXJubF8Yuipn9GDT3VjmGuPkBDBujRwByGEA5ZvcldTt4PGEqYXJ3DkZCRYOqU6WUkBLNesxYn8mK76gieuFI0Y2rHARcSIpbukLU8sX5g8C85o8VaEvS/xBsDX0+HilZ0DGA080uOJ4DMMCd4qw102KQba0md7GXk+9oqDu/KmEEsVK8c7Kn+V4m6OM77bUiuGMp7yJtnhuyTQtWleFIQheOSBFYnCehLX85h/sZZtzL3rEkRCAFAuvXJnFtJ94fDvEM2L+W5M2BUCB0Kbn9bgo4fxomP9ul+s2i4rx05fN+aBk/h/oFEGkq6CWmSoS1XJ/7UC2f0TJ3MUoX+XADuueDfaCCRu9jUCwAS6S8/vfT5uaMRmmIgZ9gSOcCdfpA8IuVdlkqjo1JhhzdsL0DlpBkagQgOqZk6Dp4=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM3PPF208195D8D.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(376014)(1800799024)(366016)(38070700021); DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?JPHjrk5C9YfujbkuGv3f163DjIKamo+ixzrkUDCwzlOu8WxFwdVRw/npMo3T?=
 =?us-ascii?Q?Aq1e6iyFkZ5A3aWvCX8NyTAtoRqZ9fjvk71meQjPkFscFzeuFZKxoSccBvMG?=
 =?us-ascii?Q?rPXuT0eY/9hkfmukyEyHtQWMfUKvhcT4/3YKsm/LRKkahXCfvHXn0lgdS+FV?=
 =?us-ascii?Q?4Igxn4n8U448/a1eJEs2vHYofUVr+YvPp4rMhwWKUzD6h2izrvMBJBIQvMU0?=
 =?us-ascii?Q?fTo81z/CPzgbdXX08rBW/ZVwlsZS03g/DvytAJeQb26RUA0GLE3spPOyTKDF?=
 =?us-ascii?Q?SY8fLAOig73eXHp4HB2w4NTEFPZLf1IuMND2ymX2DdFZXiw9fs6ASVEO9IhJ?=
 =?us-ascii?Q?HuXvGcH61yvHvZlwaUWbEOqeXOY+RnclcwsLPN2mQ45DMnWdDzzfg2n6iBG6?=
 =?us-ascii?Q?qfxsRXKWHtpPfTAmq92XBjNfhm58Qtj3fd5CDJPtsBhZn3zqnsC0NJ03oK4Y?=
 =?us-ascii?Q?A+hzlR2C8SFXp+vVvR2qlgTeSa9iShtAQZlN75Paf9fTNvbrd1jBAhdOfEX4?=
 =?us-ascii?Q?2XtNxXfrzq4+KepIUvcHbj48ymKP/WFgUhg9YiVJCjQJNiJYa1/nJ7TfS9H+?=
 =?us-ascii?Q?jVv+m+4TK/f3X0Hxn1pdfY66vHWyPf0JJBS0IB2dbS09AHeHOu5rfdDpnQE5?=
 =?us-ascii?Q?+n6ICVHe/KiIN+hz4iJ6YpyofXNC8jOZahEkt+ZXQRkrAOOtir6hRA94LTc7?=
 =?us-ascii?Q?b0sviZ33jrKxtdyUmnWuFxbDvp0GkhG3uwVo+JSP3jydDJErxNpUsZDRq0PG?=
 =?us-ascii?Q?tKyC4ob+IBrKGj5dI194qe1ZQKuYMSbgJucNyBEf6QHYaj3UX8psaBXk/eb7?=
 =?us-ascii?Q?akgIFSxWurtNUB88/BGHcTof5edjRn6kw+RN1RegLAiVGmadG+sUp+zC0wVh?=
 =?us-ascii?Q?fzYaY1glPJa5JCIyVOV+vjKg3nMh8o3sstbFpOXuTITjf6io8eoUOQH+1Uqm?=
 =?us-ascii?Q?LsHOUXgVP8xNNHHC1BQ0Xq0wZEaziubfBvP9hH0w7UYyfDpKTCLQmtAFDzSQ?=
 =?us-ascii?Q?VIB5CjGdh2gX7y7HofmaJnZB4KKQzUVeXuJMz4b0ZS+a8e+A8+MZJCeDEh1r?=
 =?us-ascii?Q?uMjWJfGGxs+qwTFrV3qEswwUvEWewMehvg1HoaUZzffUz+NRX9tIzuAMs6QW?=
 =?us-ascii?Q?N7JKY9R4aLYkmtTJb8LNg2fjBuYGD0x1jnpw27TPZsvTD8c877Y9N2l8k2QB?=
 =?us-ascii?Q?BkyMEe4Sfnc5thiqQXxUt+5VgLhgDAfd+Ga8UASMbsJePLOWvjTwnr2C1aFC?=
 =?us-ascii?Q?Gvx+sdIytQQE7e9hgxb4EPfhkW1/chQWBfdzD8b44yP5+cah9i1LJCgI4QC5?=
 =?us-ascii?Q?tHpeb2PkSBtKOrqXwjDxPRyn+41NWsCZ0gpQIINr2afOK4V5wFTpJQ/hkEa1?=
 =?us-ascii?Q?KCV3Ob4hxVKXHvtPSosHCZkgajVobhVox931afdypeCFMlOWgDujNbTIAvdZ?=
 =?us-ascii?Q?oLm+n7E4xLwUPJJOE+KyUL7thiz3XZSUJ6MFdbHHkrwYhZKO4idYjJq1RIUD?=
 =?us-ascii?Q?PBNG1Rva5n6SMV2GPFnCqXDhQucTFt44wpIVr8NFArsyjzOttK4wj/ISUXu9?=
 =?us-ascii?Q?Ki9NA3NOTMQJVInyGQX0Qq6TIxk9nYNKwrc3soDyZK0c3fOKKoFUJufoXQSQ?=
 =?us-ascii?Q?/5mFh1iZVmyKq1RkVrcQfwuTHhdAZSX39iz2/hKd/vomF8R4BGgNJq8KMUsw?=
 =?us-ascii?Q?j+jFr1aUpVNOuXsyiBMhTtRjE6JqvDC/fGHa6TMJjwWVWgUX00LM3SwkunZg?=
 =?us-ascii?Q?M6ngU7UfDA=3D=3D?=
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-Exchange-RoutingPolicyChecked: YoP1b/NluJcKpzCQbrTCpFf01tashBtG6yMPLQf0Vo777Uh+uYUdbXXChI543Mwdo71YWf4PtQaYoug9yMIBbIMnP+AWUSxMFP4EBt7uR+KVEsG0nBAJ5nM5Rvl6RrM7lIiB+dzQND8fuZGWAZGf59jLwq76aacjWsTh+PuPTW0hmiB9D+rG0/6GLpnkVnor863RmOPuHx755ZnQqt2KhhTkLofhs5+M1wioWFsDyBOmsSoI6zKSe9zAxYPMYZPSAAJ7VvFeRSVXni328YDoH9L3lHfS2ZRuxkKhTW0lj7wk+9vDQqQUJgG50Lqn4CCc4WJnNpTCg08GC47VKk51fg==
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: DM3PPF208195D8D.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 834a3fb9-f81f-4e25-f60b-08de7e6d9999
X-MS-Exchange-CrossTenant-originalarrivaltime: 10 Mar 2026 06:23:52.6146 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: zbrseNpqk9XWMle54K3J+H+WXEPLb+8cepL+kApwzy8O+nEXvZm4mzuFG1XubJw63AiuIpCqjZwQH79PE4fWmg==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CY5PR11MB6116
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
X-Rspamd-Queue-Id: 8DA89245CDC
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-2.31 / 15.00];
	ARC_ALLOW(-1.00)[microsoft.com:s=arcselector10001:i=1];
	DMARC_POLICY_ALLOW(-0.50)[intel.com,none];
	MAILLIST(-0.20)[mailman];
	R_SPF_ALLOW(-0.20)[+ip4:131.252.210.177:c];
	R_DKIM_ALLOW(-0.20)[intel.com:s=Intel];
	RWL_MAILSPIKE_GOOD(-0.10)[131.252.210.177:from];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	TO_DN_EQ_ADDR_SOME(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	DKIM_TRACE(0.00)[intel.com:+];
	MIME_TRACE(0.00)[0:+];
	DBL_BLOCKED_OPENRESOLVER(0.00)[gabe.freedesktop.org:rdns,gabe.freedesktop.org:helo,intel.com:dkim,intel.com:email,DM3PPF208195D8D.namprd11.prod.outlook.com:mid];
	MISSING_XM_UA(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[suraj.kandpal@intel.com,intel-gfx-bounces@lists.freedesktop.org];
	FROM_HAS_DN(0.00)[];
	RCPT_COUNT_THREE(0.00)[4];
	NEURAL_HAM(-0.00)[-1.000];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	TAGGED_RCPT(0.00)[intel-gfx];
	TO_DN_SOME(0.00)[];
	RCVD_COUNT_SEVEN(0.00)[9]
X-Rspamd-Action: no action

> Subject: [PATCH v2 12/24] drm/i915/lt_phy: Add xe3plpd .compare_hw_state
> hook
>=20
> Add .compare_hw_state function pointer for xe3plpd platform to support dp=
ll
> framework.
>=20
> Signed-off-by: Mika Kahola <mika.kahola@intel.com>

LGTM,
Reviewed-by: Suraj Kandpal <suraj.kandpal@intel.com>

> ---
>  drivers/gpu/drm/i915/display/intel_dpll_mgr.c | 10 ++++++++++
>  1 file changed, 10 insertions(+)
>=20
> diff --git a/drivers/gpu/drm/i915/display/intel_dpll_mgr.c
> b/drivers/gpu/drm/i915/display/intel_dpll_mgr.c
> index 26b78063dd94..c1d7d9909544 100644
> --- a/drivers/gpu/drm/i915/display/intel_dpll_mgr.c
> +++ b/drivers/gpu/drm/i915/display/intel_dpll_mgr.c
> @@ -4655,6 +4655,15 @@ static void xe3plpd_dump_hw_state(struct
> drm_printer *p,
>  	intel_lt_phy_dump_hw_state(p, &dpll_hw_state->ltpll);  }
>=20
> +static bool xe3plpd_compare_hw_state(const struct intel_dpll_hw_state *_=
a,
> +				     const struct intel_dpll_hw_state *_b) {
> +	const struct intel_lt_phy_pll_state *a =3D &_a->ltpll;
> +	const struct intel_lt_phy_pll_state *b =3D &_b->ltpll;
> +
> +	return intel_lt_phy_pll_compare_hw_state(a, b); }
> +
>  __maybe_unused
>  static const struct intel_dpll_mgr xe3plpd_pll_mgr =3D {
>  	.dpll_info =3D xe3plpd_plls,
> @@ -4664,6 +4673,7 @@ static const struct intel_dpll_mgr xe3plpd_pll_mgr
> =3D {
>  	.update_active_dpll =3D icl_update_active_dpll,
>  	.update_ref_clks =3D icl_update_dpll_ref_clks,
>  	.dump_hw_state =3D xe3plpd_dump_hw_state,
> +	.compare_hw_state =3D xe3plpd_compare_hw_state,
>  };
>=20
>  /**
> --
> 2.43.0

