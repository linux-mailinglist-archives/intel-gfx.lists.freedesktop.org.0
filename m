Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id yI5fOtwxsmkQJgAAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Thu, 12 Mar 2026 04:24:12 +0100
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 5D36B26CC30
	for <lists+intel-gfx@lfdr.de>; Thu, 12 Mar 2026 04:24:12 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id E8DB410E945;
	Thu, 12 Mar 2026 03:24:09 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="KZyoUzI2";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.19])
 by gabe.freedesktop.org (Postfix) with ESMTPS id E1B2A10E945;
 Thu, 12 Mar 2026 03:24:07 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1773285848; x=1804821848;
 h=from:to:subject:date:message-id:references:in-reply-to:
 content-transfer-encoding:mime-version;
 bh=mjnlzfZ9q1LsIpwrcoLPvlmK9XDiEzd7kMhLg1KCDIs=;
 b=KZyoUzI2ZLdFSjsr8QSIFfvUJRv0LWWpCSDYOHzRr1uh676uOjtfVsFc
 ets2QUs5zjTDjX7xfOL5VDUz8z76M6nXawHIA49RtIDBaOF+ZdVXB5M7Y
 XaJDg+O3PTz4M0S6xuvA26k8SGqsFFFbyCOFB36OjTmCPrhR8khZsLkV1
 kgzBVygsJYSp+COazEHkU3JF7yGgpfztT3PUR6dudKJj5BEZQCvuX7Pmq
 HZ7U5OoUcxVKdXA8WQEaygRZSJxEOCtfV4HW2JwKbbVsiDNvuHIf8JXqU
 if2sC4bS3Op1M9YIWq/YNcjTa8FUvMXZ1SgqaOEo9isSNAc2doAxXZatT Q==;
X-CSE-ConnectionGUID: YccEkNGaRFCKluSQ9YDTLQ==
X-CSE-MsgGUID: iMdbWOAsS1Wyc8xnUFxmrQ==
X-IronPort-AV: E=McAfee;i="6800,10657,11726"; a="74262713"
X-IronPort-AV: E=Sophos;i="6.23,115,1770624000"; d="scan'208";a="74262713"
Received: from fmviesa001.fm.intel.com ([10.60.135.141])
 by orvoesa111.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 11 Mar 2026 20:24:08 -0700
X-CSE-ConnectionGUID: 01G12RVSSgajjnEV9/ujYA==
X-CSE-MsgGUID: a/IOLxd3TIiNndj86ETQ5A==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.23,115,1770624000"; d="scan'208";a="246139319"
Received: from orsmsx901.amr.corp.intel.com ([10.22.229.23])
 by fmviesa001.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 11 Mar 2026 20:24:07 -0700
Received: from ORSMSX901.amr.corp.intel.com (10.22.229.23) by
 ORSMSX901.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Wed, 11 Mar 2026 20:24:06 -0700
Received: from ORSEDG902.ED.cps.intel.com (10.7.248.12) by
 ORSMSX901.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37 via Frontend Transport; Wed, 11 Mar 2026 20:24:06 -0700
Received: from CY3PR05CU001.outbound.protection.outlook.com (40.93.201.6) by
 edgegateway.intel.com (134.134.137.112) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Wed, 11 Mar 2026 20:24:04 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=UP7hfMXOK4L11BYnJmcF/wJQDD5t1N/6nxUxH9t9wB8B+nnm0P2wyFIznDNIFz/ubdQJLVHcOr7HGSQuRebTQvmSmpY5UA0NGsagVbtfl01sJuX7xKcXUiU26n7oX4djgv5LC/lumU6rLs8XVpRGY2nk8z8PsBOhzq7ko22iSU0wIcn2YRta7VyCHtrCYWb15vlL1AqAOOuxHf/oVPtwMl/MyAMXprqqEth5ekXPRQi9T8R5fXQ2NqZ97e+jLYvdO1mE5Bi/FzlM2ClklUOWGwCSikzECYznnpJYlRsAMmzlZDDa7P/OdStiOvmGMra2WyUA6CpKcXwHj7WNNfy8rQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=tGaWANLMuTZzVX5a3b7senIyUGlI2H/eWdCQ+z0TqQc=;
 b=eJfxx+tSuXJlzpRj9YKRK5V/8E8hD11gN+s1OPc1MztUe5TYm/Do1HNjM7/teJ5zCx2fJvkSYDHdMkLVVojtHzAgTslvKcpSyTfKd7LIpKq2wzb0KzPSKq8LtQTYbmZDHQHAAKL5UzhbWLVhT+SqfOaMf3zdgTCy9Wz6dnIpaPSUrps/0aQ3vy0+MBgTZAZiITEMkwB1IiADZ9zZsQ1a6e0nEEmI/pCDExmvknHm+aOXOZOGKR7slkhj+yiMaoPeCYh5p9uW7T0qYkytIe6K6WoB3BiihOSSfDbUYrwTfAqB99itZ5TY66T0X/Mj4KTegzvZU+d0Vmg+WtgznJn/iA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from DM3PPF208195D8D.namprd11.prod.outlook.com
 (2603:10b6:f:fc00::f13) by DM4PR11MB7254.namprd11.prod.outlook.com
 (2603:10b6:8:10e::8) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9723.6; Thu, 12 Mar
 2026 03:23:57 +0000
Received: from DM3PPF208195D8D.namprd11.prod.outlook.com
 ([fe80::21ae:7048:11eb:3faa]) by DM3PPF208195D8D.namprd11.prod.outlook.com
 ([fe80::21ae:7048:11eb:3faa%6]) with mapi id 15.20.9678.017; Thu, 12 Mar 2026
 03:23:57 +0000
From: "Kandpal, Suraj" <suraj.kandpal@intel.com>
To: "Kahola, Mika" <mika.kahola@intel.com>, "intel-gfx@lists.freedesktop.org"
 <intel-gfx@lists.freedesktop.org>, "intel-xe@lists.freedesktop.org"
 <intel-xe@lists.freedesktop.org>
Subject: RE: [PATCH v3 16/24] drm/i915/lt_phy: Add .enable_clock hook on DDI
Thread-Topic: [PATCH v3 16/24] drm/i915/lt_phy: Add .enable_clock hook on DDI
Thread-Index: AQHcsWIXF+xLMW8gGky+sXH17MvaVLWqPGVA
Date: Thu, 12 Mar 2026 03:23:57 +0000
Message-ID: <DM3PPF208195D8D33E841836E14803B18E5E344A@DM3PPF208195D8D.namprd11.prod.outlook.com>
References: <20260311141905.2526418-1-mika.kahola@intel.com>
 <20260311141905.2526418-17-mika.kahola@intel.com>
In-Reply-To: <20260311141905.2526418-17-mika.kahola@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: DM3PPF208195D8D:EE_|DM4PR11MB7254:EE_
x-ms-office365-filtering-correlation-id: 7574f6df-216c-48df-c4f6-08de7fe6cbce
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
 ARA:13230040|1800799024|376014|366016|38070700021|22082099003|56012099003|18002099003;
x-microsoft-antispam-message-info: ECyqIazAJv2zeXsP/50ZRikIOLXh6qzH3fC0s3IqDOmlHQa910CvL9P4m8JMl+OhLWrJQAl3chfUcRD35j6WEDS1EoymsTS1LryvtQYxsbGf6AA19TNldhVm9kDKymphHvXchUM0SLvM2Cfjkc9P7cjRbcAHLv2GZ+IAGYGDruc/k6PHc8uM+farPpbFBEF8xHt+6Bo0PXvdxWlpy96eIF1ZkPzjXjf+YDid8SgILrnyK7Xwjz4AQJFIYjDum9H6hI3JfjPJMmrCKp8+odAmKd8Kp2/BBLOb7kUX9Ot/ejRjujnboEWlC7x5jakLU0zOPAvcOfMdbXh0NE1PoamBiHA8rOvx5ngJbO8IHQDvg3Hp0H5fPVSQ7rbR+llh8R9bIRF9OzNRSdzH/MqcRCB42eTq7XjeH4r5fkBfhDESloWAlerGDpvKFdvyYp4PabBV87y0sZ6y7Nl5Id4seMQhw0IlFieiHA2edt91bcCTziguvTJiKljvMnfmjRn9QXOjX1EDu2mEq4zf8vmgFe5gmdEwqeJ8Mid++geainXxG5onhTiidDvVW+PZZ/hYjtiQ/9q2VtEeYeMz8ndfVwUv5JHc/pd9LA3i2YIprjVlilhU74ozwzti1BjJoXZF7OQvzeaoiN/mwSPvv/qP7tv5rO5t25J/X69J11Rt26xTatKP0yelQ4oYxOn8gRWOkvJCMstrypxhfMeUc1rU5WmyeS4AA4x0LZgnciamkzev3UHhNnxeQ1HIDMI/ruw/RCzOJgxMGG2kbrIXU9QF5owgLsMk2+oEfLDByVZ7FBYKe1Y=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM3PPF208195D8D.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(1800799024)(376014)(366016)(38070700021)(22082099003)(56012099003)(18002099003);
 DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?JNZX4t0ovLk/LnLCP/JhRjdLqT3p3Z/Gxf6c0xFqJ0gQSonLm7+D5LzodkkC?=
 =?us-ascii?Q?kyhpOK8G3WcrVEgWgKGF7WRa+1dRLFkkfMa17CYk2v1zLLqPGZ8vxayVOnpa?=
 =?us-ascii?Q?Yptp61YHH92luwymkanOMqq7jQKEduqFtQNdbyztkjWpG/gm+0JPafbC87eD?=
 =?us-ascii?Q?TpXF3f4sqzH6+h11wpOobwOgcgGpQo+E2+XlsTWyhJlybQcXF7LLIOJW7XkB?=
 =?us-ascii?Q?ZvJnHlQahei/lAzMdEwpa3ByAIUxamq9/OWHKgZQf0zbEvS4SHkN+C24paqA?=
 =?us-ascii?Q?aYLSex1Va0fwj6KR3+ssC7+tnxUmTUH9Jb9WVKKEPwHc721z5kw8KbGow09D?=
 =?us-ascii?Q?7zFR+tLlabdGBa7claBq4EvdDpe1Z8ON8HjAvNIvetcjge3Y+9LMxxrKSiob?=
 =?us-ascii?Q?rcvZi0s+29UtjssSEP9QiMJWF70sef+xY3ww9vGQ/NIOjPC12RjPw+PZ8wxT?=
 =?us-ascii?Q?967xWq5CjboQTATZu+MAIFUkCgkVbdfVhElizDdzd935xJcJBIfUgUEsGmLC?=
 =?us-ascii?Q?k3hckXAbHxnD2S4I7EauPrHQde3mzqy/nr+rapvNBQyJZZUTPkZTlABvd3lb?=
 =?us-ascii?Q?C7iCGE8f5tkMkzwK5H2NRcf3OjvuNudkNACPHExg0LZz51/pDjVyKAL1za22?=
 =?us-ascii?Q?rHaGA8Lvffm9ewMMyUYJmyn04Y/Tfs9KAcDVUeHvyD7mL86kgxJaYcmXtu6v?=
 =?us-ascii?Q?s6gTOE4grBnI3Z7JTCUuaLBCZyZboYI4sb0zbLUZUjXgwxnUtV30p6HDUO30?=
 =?us-ascii?Q?d4/7CqX168f2VooqwQBz+1QS/Z/A39a/PcR4N/1ej2XxHxz6JystErVQNy6Z?=
 =?us-ascii?Q?0Yhn440PUjcn6yN7X/QvnxtOPaeLBS2zAo02nK83zvxsq+uoqsBz/iYIxa1u?=
 =?us-ascii?Q?IF9AI/wVFZ0iRw1FWJMuruuryBQo4LGC53xPXQxllTeKSQorq3bHPRq3D15/?=
 =?us-ascii?Q?JfXn4AkxNvJEYK6zgluqe50b7wf+GCx4F5qAtsKvirE5Z33/DIKH9UoWOzpP?=
 =?us-ascii?Q?S8tHHrXEG8X2VfvNYWbnBgj+zfrzz83qulD4BerFKN5c9Yioljw1BC7seeQG?=
 =?us-ascii?Q?o0DpLZd/zKbHT3rpDakbKkhPPYj9+tBh5gRmNqh8ZlcAPPmG4j3juWIxyqmF?=
 =?us-ascii?Q?2Vsz29bec1UL0z24L1RW+ZfcPIVIamhu6mhJ/0abJhOdeyP+QUeljBnBoAHa?=
 =?us-ascii?Q?5mepxYa1REyr+ABmxIVFiRvKCiE8/Ljz1+Q2hBgtI8uKGtYFmcJyyHuwLmuG?=
 =?us-ascii?Q?W2gsrrokUpgq+5j9rf9k8V1cz8Q/TV3t+71UBkfeL/jclJLF8cCv2CNpRJwN?=
 =?us-ascii?Q?6aY49lghozWytFFrR313K7LaU5Z/8nsEtJc0T0QDREUc03VjeCW5zWVQ9AZG?=
 =?us-ascii?Q?tzCVFNZlDwPQ+3CEkZwlf6WSDOBQ+A0B+kc9Mb+Cl3lEfdJD3sZUIvjN2F8/?=
 =?us-ascii?Q?yN3lbof3KZSDRigokC4pFYLNa8h/W17gXpd6ctzJD5U99z7a2jR3qgQQqtiD?=
 =?us-ascii?Q?3zr+jwF6oiKZTfGIh1DdntAp8zqj9EmgQAQKZkiuP8SU2IUAXePzM6EWom8p?=
 =?us-ascii?Q?LTDfp/B6KU7USQtjis2Bx9ZAVlNiuIT/zV9KtlMly1ztgesPwwsjT9J6ePid?=
 =?us-ascii?Q?OKxY18EEFhkirxEWkNs+1Wzhm75itY86bDyHsMPt3Id669ZXiM/fuUQFok51?=
 =?us-ascii?Q?0weT3DlLpIwK9bjycEavsy1T49kGWJCK1IjBLIbHRCEULytypkKUxMTzrmW8?=
 =?us-ascii?Q?aRqL9RR2Jw=3D=3D?=
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-Exchange-RoutingPolicyChecked: p9q16mwnr9Z4GLhXDgVQZqmIBGdZoHT+NeEnw0XLxyQcZLxvulZ13zYRBis9ju7JnokXxETeza3LxLOrBrEyoolWDrlz8fdsYE7Qv73zBMJbs0X0bWN2GbQv+fFsGmbT+3RPCvVTqS8rSNKn5skJUrc1bRSLjgf8SKIkJVwdVL+kQ7kSwcga3fo19jGdLIgnles69kaDOkfkTFA9ppz+g0+ibA4TKnei7AYx5+CCZqYqOo5NQSpWjYYl+0fzdotMdp38bebqtEmf0+NVVWGw1trxIDxTuID7lj3ppfta0kjP/Jz+sJXOS3fNV6y1V0EV1m2js9byumPwVIN5lDlxTw==
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: DM3PPF208195D8D.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 7574f6df-216c-48df-c4f6-08de7fe6cbce
X-MS-Exchange-CrossTenant-originalarrivaltime: 12 Mar 2026 03:23:57.1649 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: YOWVHWL0mLAsabH+LpcjpEcE94WIVUQmQNurFeDjTKurWGQfVOSU3pmLJpe4mqrCWtjoM5+dPsURhID4r1dK/w==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DM4PR11MB7254
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
X-Spamd-Result: default: False [-0.31 / 15.00];
	ARC_REJECT(1.00)[signature check failed: fail, {[1] = sig:microsoft.com:reject}];
	DMARC_POLICY_ALLOW(-0.50)[intel.com,none];
	R_DKIM_ALLOW(-0.20)[intel.com:s=Intel];
	MAILLIST(-0.20)[mailman];
	R_SPF_ALLOW(-0.20)[+ip4:131.252.210.177:c];
	MIME_GOOD(-0.10)[text/plain];
	RWL_MAILSPIKE_GOOD(-0.10)[131.252.210.177:from];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	TO_DN_EQ_ADDR_SOME(0.00)[];
	DKIM_TRACE(0.00)[intel.com:+];
	MIME_TRACE(0.00)[0:+];
	DBL_BLOCKED_OPENRESOLVER(0.00)[gabe.freedesktop.org:helo,gabe.freedesktop.org:rdns,DM3PPF208195D8D.namprd11.prod.outlook.com:mid,intel.com:dkim,intel.com:email];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[suraj.kandpal@intel.com,intel-gfx-bounces@lists.freedesktop.org];
	FROM_HAS_DN(0.00)[];
	RCPT_COUNT_THREE(0.00)[3];
	NEURAL_HAM(-0.00)[-1.000];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	TAGGED_RCPT(0.00)[intel-gfx];
	MISSING_XM_UA(0.00)[];
	RCVD_COUNT_SEVEN(0.00)[9]
X-Rspamd-Queue-Id: 5D36B26CC30
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

> Subject: [PATCH v3 16/24] drm/i915/lt_phy: Add .enable_clock hook on DDI
>=20
> Enable PLL clock on DDI by moving part of the PLL enabling sequence into =
a
> DDI clock enabling function.
>=20
> v2: Reuse intel_mtl_pll_enable_clock for DDI clock enabling
>=20
> Signed-off-by: Mika Kahola <mika.kahola@intel.com>
> Reviewed-by: Suraj Kandpal <suraj.kandpal@intel.com> (v1)

Rb still stands for this version

Regards,
Suraj Kandpal

> ---
>  drivers/gpu/drm/i915/display/intel_ddi.c      |  2 +-
>  drivers/gpu/drm/i915/display/intel_dpll_mgr.c | 13 ++++++++
>  drivers/gpu/drm/i915/display/intel_lt_phy.c   | 31 +++++++++----------
>  drivers/gpu/drm/i915/display/intel_lt_phy.h   |  8 +++--
>  4 files changed, 34 insertions(+), 20 deletions(-)
>=20
> diff --git a/drivers/gpu/drm/i915/display/intel_ddi.c
> b/drivers/gpu/drm/i915/display/intel_ddi.c
> index dbf3f344e014..93f62d995e96 100644
> --- a/drivers/gpu/drm/i915/display/intel_ddi.c
> +++ b/drivers/gpu/drm/i915/display/intel_ddi.c
> @@ -5298,7 +5298,7 @@ void intel_ddi_init(struct intel_display *display,
>  	encoder->pipe_mask =3D ~0;
>=20
>  	if (HAS_LT_PHY(display)) {
> -		encoder->enable_clock =3D intel_xe3plpd_pll_enable;
> +		encoder->enable_clock =3D intel_mtl_pll_enable_clock;
>  		encoder->disable_clock =3D intel_xe3plpd_pll_disable;
>  		encoder->port_pll_type =3D intel_mtl_port_pll_type;
>  		encoder->get_config =3D xe3plpd_ddi_get_config; diff --git
> a/drivers/gpu/drm/i915/display/intel_dpll_mgr.c
> b/drivers/gpu/drm/i915/display/intel_dpll_mgr.c
> index 412582e29ca6..54c7a255b3a5 100644
> --- a/drivers/gpu/drm/i915/display/intel_dpll_mgr.c
> +++ b/drivers/gpu/drm/i915/display/intel_dpll_mgr.c
> @@ -4595,7 +4595,20 @@ static int xe3plpd_pll_get_freq(struct intel_displ=
ay
> *display,
>  	return intel_lt_phy_calc_port_clock(display, &dpll_hw_state->ltpll);  }
>=20
> +static void xe3plpd_pll_enable(struct intel_display *display,
> +			       struct intel_dpll *pll,
> +			       const struct intel_dpll_hw_state *dpll_hw_state) {
> +	struct intel_encoder *encoder =3D get_intel_encoder(display, pll);
> +
> +	if (drm_WARN_ON(display->drm, !encoder))
> +		return;
> +
> +	intel_xe3plpd_pll_enable(encoder, pll, dpll_hw_state); }
> +
>  static const struct intel_dpll_funcs xe3plpd_pll_funcs =3D {
> +	.enable =3D xe3plpd_pll_enable,
>  	.get_hw_state =3D xe3plpd_pll_get_hw_state,
>  	.get_freq =3D xe3plpd_pll_get_freq,
>  };
> diff --git a/drivers/gpu/drm/i915/display/intel_lt_phy.c
> b/drivers/gpu/drm/i915/display/intel_lt_phy.c
> index 478ab0b87132..dfcff3d6ad33 100644
> --- a/drivers/gpu/drm/i915/display/intel_lt_phy.c
> +++ b/drivers/gpu/drm/i915/display/intel_lt_phy.c
> @@ -1901,9 +1901,11 @@ intel_lt_phy_enable_disable_tx(struct
> intel_encoder *encoder,  }
>=20
>  void intel_lt_phy_pll_enable(struct intel_encoder *encoder,
> -			     const struct intel_crtc_state *crtc_state)
> +			     struct intel_dpll *pll,
> +			     const struct intel_dpll_hw_state *dpll_hw_state)
>  {
>  	struct intel_display *display =3D to_intel_display(encoder);
> +	int port_clock =3D intel_lt_phy_calc_port_clock(display,
> +&dpll_hw_state->ltpll);
>  	struct intel_digital_port *dig_port =3D enc_to_dig_port(encoder);
>  	bool lane_reversal =3D dig_port->lane_reversal;
>  	u8 owned_lane_mask =3D
> intel_lt_phy_get_owned_lane_mask(encoder);
> @@ -1919,11 +1921,11 @@ void intel_lt_phy_pll_enable(struct
> intel_encoder *encoder,
>  	wakeref =3D intel_lt_phy_transaction_begin(encoder);
>=20
>  	/* 1. Enable MacCLK at default 162 MHz frequency. */
> -	intel_lt_phy_lane_reset(encoder, crtc_state->lane_count);
> +	intel_lt_phy_lane_reset(encoder, dpll_hw_state->ltpll.lane_count);
>=20
>  	/* 2. Program PORT_CLOCK_CTL register to configure clock muxes,
> gating, and SSC. */
> -	intel_lt_phy_program_port_clock_ctl(encoder, &crtc_state-
> >dpll_hw_state.ltpll,
> -					    crtc_state->port_clock,
> lane_reversal);
> +	intel_lt_phy_program_port_clock_ctl(encoder, &dpll_hw_state->ltpll,
> +					    port_clock, lane_reversal);
>=20
>  	/* 3. Change owned PHY lanes power to Ready state. */
>  	intel_lt_phy_powerdown_change_sequence(encoder,
> owned_lane_mask, @@ -1933,12 +1935,12 @@ void
> intel_lt_phy_pll_enable(struct intel_encoder *encoder,
>  	 * 4. Read the PHY message bus VDR register PHY_VDR_0_Config
> check enabled PLL type,
>  	 * encoded rate and encoded mode.
>  	 */
> -	if (intel_lt_phy_config_changed(encoder, &crtc_state-
> >dpll_hw_state.ltpll, crtc_state->port_clock)) {
> +	if (intel_lt_phy_config_changed(encoder, &dpll_hw_state->ltpll,
> +port_clock)) {
>  		/*
>  		 * 5. Program the PHY internal PLL registers over PHY
> message bus for the desired
>  		 * frequency and protocol type
>  		 */
> -		intel_lt_phy_program_pll(encoder, &crtc_state-
> >dpll_hw_state.ltpll);
> +		intel_lt_phy_program_pll(encoder, &dpll_hw_state->ltpll);
>=20
>  		/* 6. Use the P2P transaction flow */
>  		/*
> @@ -1970,8 +1972,7 @@ void intel_lt_phy_pll_enable(struct intel_encoder
> *encoder,
>  		 * Change. We handle this step in bxt_set_cdclk().
>  		 */
>  		/* 10. Program DDI_CLK_VALFREQ to match intended DDI
> clock frequency. */
> -		intel_de_write(display, DDI_CLK_VALFREQ(encoder->port),
> -			       crtc_state->port_clock);
> +		intel_de_write(display, DDI_CLK_VALFREQ(encoder->port),
> port_clock);
>=20
>  		/* 11. Program PORT_CLOCK_CTL[PCLK PLL Request LN0] =3D
> 1. */
>  		intel_de_rmw(display, XELPDP_PORT_CLOCK_CTL(display,
> port), @@ -2018,7 +2019,7 @@ void intel_lt_phy_pll_enable(struct
> intel_encoder *encoder,
>  			     lane_phy_pulse_status,
>  			     lane_phy_pulse_status);
>  	} else {
> -		intel_de_write(display, DDI_CLK_VALFREQ(encoder->port),
> crtc_state->port_clock);
> +		intel_de_write(display, DDI_CLK_VALFREQ(encoder->port),
> port_clock);
>  	}
>=20
>  	/*
> @@ -2029,7 +2030,7 @@ void intel_lt_phy_pll_enable(struct intel_encoder
> *encoder,
>  	intel_lt_phy_powerdown_change_sequence(encoder,
> owned_lane_mask,
>  					       XELPDP_P0_STATE_ACTIVE);
>=20
> -	intel_lt_phy_enable_disable_tx(encoder, &crtc_state-
> >dpll_hw_state.ltpll);
> +	intel_lt_phy_enable_disable_tx(encoder, &dpll_hw_state->ltpll);
>  	intel_lt_phy_transaction_end(encoder, wakeref);  }
>=20
> @@ -2287,14 +2288,10 @@ void intel_lt_phy_pll_state_verify(struct
> intel_atomic_state *state,  }
>=20
>  void intel_xe3plpd_pll_enable(struct intel_encoder *encoder,
> -			      const struct intel_crtc_state *crtc_state)
> +			      struct intel_dpll *pll,
> +			      const struct intel_dpll_hw_state *dpll_hw_state)
>  {
> -	struct intel_digital_port *dig_port =3D enc_to_dig_port(encoder);
> -
> -	if (intel_tc_port_in_tbt_alt_mode(dig_port))
> -		intel_mtl_tbt_pll_enable_clock(encoder, crtc_state-
> >port_clock);
> -	else
> -		intel_lt_phy_pll_enable(encoder, crtc_state);
> +	intel_lt_phy_pll_enable(encoder, pll, dpll_hw_state);
>  }
>=20
>  void intel_xe3plpd_pll_disable(struct intel_encoder *encoder) diff --git
> a/drivers/gpu/drm/i915/display/intel_lt_phy.h
> b/drivers/gpu/drm/i915/display/intel_lt_phy.h
> index 0053bb5489e5..d8d5c2064b6b 100644
> --- a/drivers/gpu/drm/i915/display/intel_lt_phy.h
> +++ b/drivers/gpu/drm/i915/display/intel_lt_phy.h
> @@ -11,13 +11,16 @@
>  struct drm_printer;
>  struct intel_atomic_state;
>  struct intel_display;
> +struct intel_dpll;
> +struct intel_dpll_hw_state;
>  struct intel_encoder;
>  struct intel_crtc_state;
>  struct intel_crtc;
>  struct intel_lt_phy_pll_state;
>=20
>  void intel_lt_phy_pll_enable(struct intel_encoder *encoder,
> -			     const struct intel_crtc_state *crtc_state);
> +			     struct intel_dpll *pll,
> +			     const struct intel_dpll_hw_state *dpll_hw_state);
>  void intel_lt_phy_pll_disable(struct intel_encoder *encoder);  int
> intel_lt_phy_pll_calc_state(struct intel_crtc_state *crtc_state, @@ -40,7
> +43,8 @@ int  intel_lt_phy_calculate_hdmi_state(struct
> intel_lt_phy_pll_state *lt_state,
>  				  u32 frequency_khz);
>  void intel_xe3plpd_pll_enable(struct intel_encoder *encoder,
> -			      const struct intel_crtc_state *crtc_state);
> +			      struct intel_dpll *pll,
> +			      const struct intel_dpll_hw_state *dpll_hw_state);
>  void intel_xe3plpd_pll_disable(struct intel_encoder *encoder);  void
> intel_lt_phy_verify_plls(struct intel_display *display);
>=20
> --
> 2.43.0

