Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id nsPSIFMnMWpecwUAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Tue, 16 Jun 2026 12:37:07 +0200
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id DCE2B68E60D
	for <lists+intel-gfx@lfdr.de>; Tue, 16 Jun 2026 12:37:06 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=intel.com header.s=Intel header.b=gJaSJcki;
	spf=pass (mail.lfdr.de: domain of intel-gfx-bounces@lists.freedesktop.org designates 131.252.210.177 as permitted sender) smtp.mailfrom=intel-gfx-bounces@lists.freedesktop.org;
	dmarc=pass (policy=none) header.from=intel.com;
	arc=pass ("microsoft.com:s=arcselector10001:i=1")
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 37DE210E9EE;
	Tue, 16 Jun 2026 10:37:05 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.8])
 by gabe.freedesktop.org (Postfix) with ESMTPS id D050810E9DD;
 Tue, 16 Jun 2026 10:37:03 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1781606224; x=1813142224;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=T8EaIF+LXoBH4jPLyNrFaiDbEGAH5XTimNQ3uDT6R/k=;
 b=gJaSJckiLcgu+xDqR7HLWvTYtaTUCo9i8GR/XikdLrMLrz0sjIzWtWm+
 ifWWcyBxXinV9mMIjH8NoCS6nuEh0uwkSYXXDUpcZ4jk1LkrhgISHjdv9
 HuobaKJabMuBFRCoBRFZG/eSx2gdwgOF+CjmuKPaimXXQK0aVk6vXwztB
 aX4CARnk34kgVo0c10BA+qW2Np8DDdFTu/JkXb1qFUAhvQfV1i77eEbpj
 vZXphVMtNzSO6URJIGCXNf75HZF5vmQ2lVJnI5qrwdFN3g7zlhaYC+MVm
 kQYFrFyU97GkSWdJgi+MQnsXHkt1Un2v8ub/mI5kXme/NsZKMOY+ra6IW g==;
X-CSE-ConnectionGUID: r96ju46LTlGeBzerD2Pecg==
X-CSE-MsgGUID: rThOy4X1S6Ct9xup/G2l8g==
X-IronPort-AV: E=McAfee;i="6800,10657,11818"; a="99940134"
X-IronPort-AV: E=Sophos;i="6.24,208,1774335600"; d="scan'208";a="99940134"
Received: from orviesa001.jf.intel.com ([10.64.159.141])
 by fmvoesa102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 16 Jun 2026 03:37:03 -0700
X-CSE-ConnectionGUID: NkVJbdMrTMyASJIOOxOQEg==
X-CSE-MsgGUID: jqaGrqDBRyGOe4oi6DqEZg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.24,208,1774335600"; d="scan'208";a="285845602"
Received: from fmsmsx903.amr.corp.intel.com ([10.18.126.92])
 by orviesa001.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 16 Jun 2026 03:37:04 -0700
Received: from FMSMSX903.amr.corp.intel.com (10.18.126.92) by
 fmsmsx903.amr.corp.intel.com (10.18.126.92) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Tue, 16 Jun 2026 03:37:02 -0700
Received: from fmsedg902.ED.cps.intel.com (10.1.192.144) by
 FMSMSX903.amr.corp.intel.com (10.18.126.92) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37 via Frontend Transport; Tue, 16 Jun 2026 03:37:02 -0700
Received: from BL2PR02CU003.outbound.protection.outlook.com (52.101.52.23) by
 edgegateway.intel.com (192.55.55.82) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Tue, 16 Jun 2026 03:37:02 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=ij5GTGScze9LsV/PHy+5Qg1JX7eb3Q4B1B6zI8yR3YAagess+O3hyJrKY9P5Bn6O/22yxs/sziw/0iVfT8dVD8kflIaAZgC5llPCp7DbFRLfewo+oCah+mgyLMpbrwWbzckIosfidK93mzyPR4ik15QgzP6rZUa+kjW6R/665DqEUnh+QUGy54ErnxVeEtI6CL1d/+qXX0qFOwaUfyS8zM3qobnwOq5K3e0659p+2dh1jyZvDJkocIA2hTTHliZN2NoM0+FGMkA/2IF2GcDahyf7yefLtg8U0iq4mWAFb7V86+7sduZc0XujpgiUsmTGAGIrCF1bWZuNgd+a49q4Vw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=AqkjG5HUnwnl7510jabIshD23BVOINLeojYn9GM1MuQ=;
 b=GugU2xc3jnEY5eRfui1aQeylT/lVM40vsZjXpOxVzvv0gf6JRJ7aIw20Jpi4Q2cUHr0Hu6KZkS8jnCpE46BcolBX/zVpslmh40nKbb0gSCSZRJbAprO3aWmPAOEtYIAsYW+nRXge4EBtNca9OACKMRHCvKRVZBXZvgUgOIXwSlJTdXS+NY07HJE9yI8ux9XQz2vzpDsllMdyOV/Suwnukghf7ImqeNYg2VK4d9qwsGrtwRBKn0YkrDB79QK8rO04qwL7vfGhW05R0Jate3b+gj2/LLYIkl96i2E1ugd00nbPRFz9XQfgzQWQ8LrOA8yudqG0O8LArR/9Pm0Jo2uy5w==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from DM4PR11MB6360.namprd11.prod.outlook.com (2603:10b6:8:bd::12) by
 DM4PR11MB6477.namprd11.prod.outlook.com (2603:10b6:8:88::17) with
 Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.21.113.18; Tue, 16 Jun 2026 10:36:55 +0000
Received: from DM4PR11MB6360.namprd11.prod.outlook.com
 ([fe80::22d9:ae03:5db1:680]) by DM4PR11MB6360.namprd11.prod.outlook.com
 ([fe80::22d9:ae03:5db1:680%5]) with mapi id 15.21.0113.015; Tue, 16 Jun 2026
 10:36:54 +0000
From: "Shankar, Uma" <uma.shankar@intel.com>
To: "Manna, Animesh" <animesh.manna@intel.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>,
 "intel-xe@lists.freedesktop.org" <intel-xe@lists.freedesktop.org>
CC: Dibin Moolakadan Subrahmanian <dibin.moolakadan.subrahmanian@intel.com>,
 "ville.syrjala@linux.intel.com" <ville.syrjala@linux.intel.com>, "Nikula,
 Jani" <jani.nikula@intel.com>
Subject: RE: [PATCH v9 17/22] drm/i915/cmtg: Modify existing hook to disable
 CMTG
Thread-Topic: [PATCH v9 17/22] drm/i915/cmtg: Modify existing hook to disable
 CMTG
Thread-Index: AQHc/QawBDXVjxXWqkOw0sHl7KSwJrZA/d/g
Date: Tue, 16 Jun 2026 10:36:54 +0000
Message-ID: <DM4PR11MB6360533BE89B3F776E32DEEEF4E52@DM4PR11MB6360.namprd11.prod.outlook.com>
References: <20260615200339.885190-1-animesh.manna@intel.com>
 <20260615200339.885190-18-animesh.manna@intel.com>
In-Reply-To: <20260615200339.885190-18-animesh.manna@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: DM4PR11MB6360:EE_|DM4PR11MB6477:EE_
x-ms-office365-filtering-correlation-id: 2846eb4b-456d-4314-6b26-08decb932f66
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
 ARA:13230040|23010399003|376014|366016|1800799024|56012099006|11063799006|4143699003|6133799003|38070700021|18002099003|22082099003;
x-microsoft-antispam-message-info: FaupupnX4yaHt6jYoi71IyfUglq+Yk/KYoMVL0v3szoAT+1t4RHslsw0NqvdiT9kPvw7XWvRlX3p/18FoXWaT9udQ4iQaGb0pQyl2owxoU+H8B4rgebMHnexdvD49VxFGh9zQi0SyV+4K++FffJlDn4l2gAqO0lkaZhoZWF+nk5WMwxgj6epMyMaekCZpIyX4Qqvk2KXx92lVHm+3PpsuB60FcaJpj+0OZX39u1vjLBhqq1hLttgPsMD9HlyhJ/XWvwTI5VNgF8f2saSaLlKB7J5q6o3B+ukvVFMqGNRhSyNYjxfXoa4q1NK3IeBDYf0uDlitQfaHSTFMnSymKmNtFytH4HN0+Jva/Aynk4ekvIyvEg6HdTbftYHQeHuy5JVoOJiq09U8u+SfOGKHmL0sVAmfU+mx8gaaGrRGwZ5SfEGPBTP8tKo9WeGdVtHCh9yqZpWDuXbSjwzFhzzEMAvs8WZ6uQhW0xNltwZaVPlriAxEm86gMzck1B2jsoHH3pMsWS4u+W0o0MxQ92a/MI4Z4bLcHXRf+/LsYBhBk7CeJJkAKXug/l2izpvUqul18xm/2mLz/cQGNgrNAQsi0JVZvWT0Ud2ZkUQ/+IBaD6UCRERGRWYn7VkeY7Da4cKCtUjvn/FZcAPYSVyZ1ulrQ0x4UXGc31gcPvoZ2x471Bh+biPc2CFer2S0qFJTko36ShTdfGO5Lhw7PBf6NLzT+QhMEEHZBtNk77f9nSeFw8KNq1T9K4flz7w3l7V/PTVoCXp
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM4PR11MB6360.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(23010399003)(376014)(366016)(1800799024)(56012099006)(11063799006)(4143699003)(6133799003)(38070700021)(18002099003)(22082099003);
 DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?JXkBMh+Iu3GDY0JGNhjbQ4MLXIMrNibi4zY7rQxNSlV8wW5aO62TvuF03Slt?=
 =?us-ascii?Q?nIqyQaM63JomE6OM4Jtye6R0YrKN95mGfOyRHajNkFAMh6In0JQKwR4RprdZ?=
 =?us-ascii?Q?enktw59Gj5gu5bvHgYY8JXQS06/L+AufTsVeb/DXxJhslcZtWuZrWBuIfrm2?=
 =?us-ascii?Q?FMGq7lvxcVBkSyCVp284ag0mSc3UX4VHWAjZ34cMzytDsihZuaRkdWN2vQXC?=
 =?us-ascii?Q?+RaC38Hp2sR7B8WjH+SS6hJZ8MBg5sl03L7k7/ax0Q+Om7jxlQSLZvQQH413?=
 =?us-ascii?Q?/67gW98CmTrnKyuF290zDkVCHOFiKbztkZxouOZmsVB/McNBMk2j8IiV9YBu?=
 =?us-ascii?Q?VlPJ77PNag4w/jWpgcR9WYs1sKA5Tz/5QGsITXXXsTc41vlGsIN3fqj7mz0O?=
 =?us-ascii?Q?/fZ7Kw/dMRMo3mqWXk/Rg47zW2BXXod5wu+iPjrhL6AOSpjRBe+jBYQ/+PUH?=
 =?us-ascii?Q?iF7IMidvSAW8/et4hrVTjcHy57cQsrmhHJviccLkPTQcqPB9Z4RtZI4w1soR?=
 =?us-ascii?Q?wXthvt+XoYa+r0nbOKZlrYGY3cFtkbuJEiOTIp56Wjc1047wfbCTAjar9SXw?=
 =?us-ascii?Q?lYcZzuQVJokJy+2IptbjZSg/dfKrQ7ww8YIbyH4KmsDN4JtXVUpGau++ze34?=
 =?us-ascii?Q?FJHooe0KXNQOWnlzkgOHQllGYCSSef62cwDlnDgrnOMWeXUAtrzRVfaU29Ni?=
 =?us-ascii?Q?u9AP3vx/XSJbTsKcXcAnQQuJQiYbhUWwo5d6YT2gVldVS6+q6AmMqPiy5MyW?=
 =?us-ascii?Q?HreA8pVzux/TCovb4XdYgVkmfb9WQeaWU0zse+OK0vMl5eAs58Mr0TWhbwPk?=
 =?us-ascii?Q?y9TLeRnwfjM7/KZdfTTNxaCldivIkJTXwTOPvMF7U9su6blkS6ui8kGVSHZ0?=
 =?us-ascii?Q?UQKrKFKSqXCmLFAPWtwrB7wtVzX13WRzHRwk1QX+aNsnS+tGHL8KPn9hVLqH?=
 =?us-ascii?Q?hTF59ph3vmd+P+SPb1SYM9ZstolxkpVQJRZlma3QB/v3vyr8h6BTGJv9ZNsQ?=
 =?us-ascii?Q?AY9cwg/I9myELHE/4Q9Gdo1+OevgrwSjeSeriJNizRhOvvOzB+CXpqa4QW70?=
 =?us-ascii?Q?AyHntt7/WAJe67MYvaKI8WRtqjm0uFNZwEHxrTwk/XkYfn82lmfGN2ymA7bM?=
 =?us-ascii?Q?C7YpOoTT++B+O+qj7stAsGyxhNQtY0WDuR4xRiPYYkRO9PsJ38+mcrHhPmvZ?=
 =?us-ascii?Q?Ijuvabg91acyq5zhnOaOURLmAju9Q6TOkxOAH14xypQ/OBFmjA40o9dGEJYZ?=
 =?us-ascii?Q?tC2R2AXZyDeSpa/oz2EC5CXjgqGE+Dcb9g17Oe1a0Eb6Apk6m5t4ngvnRniL?=
 =?us-ascii?Q?Egm+jD6HKM+g/dw/uwRT9qzrz4utsaNnSXanGfpsBIKL/QMH1uhn4IBIm6xn?=
 =?us-ascii?Q?tFiRkMoUmy+Ltn2iFZnRyZpcfGWcSo/NqWYpS2s2t281anYatBu9VDWB+xFd?=
 =?us-ascii?Q?ygxs8CEqmNnHXvJNRYmV5EIjIpQUC8i2HItbdod7ri7OtIQVZ21JR77Huy1Z?=
 =?us-ascii?Q?ovpFvysCrPOEenwV6TLBhwmXDqGl/uWntAclG1GKTSvJB1he0uYY+O5YIllq?=
 =?us-ascii?Q?8hS7FpkHKgiCP9bTp3GTsdM0DTCz1CBEmVBQe3Cn8fOSVRjgO+ZLtkYPxFfv?=
 =?us-ascii?Q?gTFyQ0Za6vKG7b10risA2zrCjFeB0GY2iJkLm4k/hTJjZ/qICdu3aArvujdg?=
 =?us-ascii?Q?QLneaatDlRKpJDDY1JJI+ffoPJ+93cTEc4SpxR/RgTWWQSe4/HSO98vfwnCi?=
 =?us-ascii?Q?0Q1/MiEpEA=3D=3D?=
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-Exchange-RoutingPolicyChecked: knUSmYL0eMDOCNbFp0/AeSZI+LojzY8TKbAGjnvCV2KtSWIBQgjFiz4CBSJOtqacc+CaSWjxj7y0OJMkmBiAAJq2TD3N6zSvqu7quWerzz2Er8OPvj/oWzlw9wF73sJp1H/OrXI5Cw7bDk4rG/0q87tKhKg/nQZEUirTgkx7QW9ER3N5KVbSqQCyl3/N/Q6qHvw8dMeOYwZAKRbOc/K1FeFfsP7N8h2ktKbX0Xttxind869SVfYhKGMAQhamp8vXU6mW9Y+CPn/ne77lb6elVRKC/7liMtvsLBIJ0iEc0cbod0QALq4Pno16uwRf4e7h6GFRk00XtU3HDE04GZ3Zbw==
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: DM4PR11MB6360.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 2846eb4b-456d-4314-6b26-08decb932f66
X-MS-Exchange-CrossTenant-originalarrivaltime: 16 Jun 2026 10:36:54.8516 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: 7VPN9ho6VtZQ0WqwZBFbbSbTdQMlIxQ2TMAjPZpMJwwTOQCUP4qy8GF3V7gUuf1+kXygxUL9nEhhQKrripK/HQ==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DM4PR11MB6477
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
X-Rspamd-Action: no action
X-Spamd-Result: default: False [-2.31 / 15.00];
	ARC_ALLOW(-1.00)[microsoft.com:s=arcselector10001:i=1];
	DMARC_POLICY_ALLOW(-0.50)[intel.com,none];
	R_DKIM_ALLOW(-0.20)[intel.com:s=Intel];
	R_SPF_ALLOW(-0.20)[+ip4:131.252.210.177];
	MAILLIST(-0.20)[mailman];
	MIME_GOOD(-0.10)[text/plain];
	RWL_MAILSPIKE_GOOD(-0.10)[131.252.210.177:from];
	HAS_LIST_UNSUB(-0.01)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	MIME_TRACE(0.00)[0:+];
	TO_DN_SOME(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	TO_DN_EQ_ADDR_SOME(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[lists.freedesktop.org:from_smtp,lists.freedesktop.org:email,DM4PR11MB6360.namprd11.prod.outlook.com:mid,intel.com:dkim,intel.com:email,intel.com:from_mime];
	MISSING_XM_UA(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[uma.shankar@intel.com,intel-gfx-bounces@lists.freedesktop.org];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[intel.com:+];
	ALIAS_RESOLVED(0.00)[];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	TAGGED_RCPT(0.00)[intel-gfx];
	RCPT_COUNT_FIVE(0.00)[6];
	RCVD_COUNT_SEVEN(0.00)[9]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: DCE2B68E60D



> -----Original Message-----
> From: Manna, Animesh <animesh.manna@intel.com>
> Sent: Tuesday, June 16, 2026 1:34 AM
> To: intel-gfx@lists.freedesktop.org; intel-xe@lists.freedesktop.org
> Cc: Shankar, Uma <uma.shankar@intel.com>; Dibin Moolakadan Subrahmanian
> <dibin.moolakadan.subrahmanian@intel.com>; ville.syrjala@linux.intel.com;
> Nikula, Jani <jani.nikula@intel.com>; Manna, Animesh
> <animesh.manna@intel.com>
> Subject: [PATCH v9 17/22] drm/i915/cmtg: Modify existing hook to disable =
CMTG
>=20
> From: Dibin Moolakadan Subrahmanian
> <dibin.moolakadan.subrahmanian@intel.com>
>=20
> Earlier cmtg_disable() used to disable all instances of CMTG which cannot=
 handle
> individual request for specific CMTG instance.
> Introduce cmtg_disable_all() which will disable all cmtg instances and
> cmtg_disable() only disable specific instance.
>=20
> v2:
> - Use intel_de_rmw to simplify. [Uma]
>=20
> v3:
> - Add a code comment describing when cpu_transcoder should be used instea=
d of
> cmtg_transcoder. [Uma]

Looks Good to me.
Reviewed-by: Uma Shankar <uma.shankar@intel.com>

> Signed-off-by: Dibin Moolakadan Subrahmanian
> <dibin.moolakadan.subrahmanian@intel.com>
> Signed-off-by: Animesh Manna <animesh.manna@intel.com>
> ---
>  drivers/gpu/drm/i915/display/intel_cmtg.c     | 46 +++++++++++++++++--
>  drivers/gpu/drm/i915/display/intel_cmtg.h     |  1 +
>  .../gpu/drm/i915/display/intel_cmtg_regs.h    |  1 +
>  3 files changed, 45 insertions(+), 3 deletions(-)
>=20
> diff --git a/drivers/gpu/drm/i915/display/intel_cmtg.c
> b/drivers/gpu/drm/i915/display/intel_cmtg.c
> index 2347958e5f53..ea39daded18a 100644
> --- a/drivers/gpu/drm/i915/display/intel_cmtg.c
> +++ b/drivers/gpu/drm/i915/display/intel_cmtg.c
> @@ -138,8 +138,8 @@ static bool intel_cmtg_disable_requires_modeset(struc=
t
> intel_display *display,
>  	return cmtg_config->trans_a_secondary || cmtg_config-
> >trans_b_secondary;  }
>=20
> -static void intel_cmtg_disable(struct intel_display *display,
> -			       struct intel_cmtg_config *cmtg_config)
> +static void intel_cmtg_disable_all(struct intel_display *display,
> +				   struct intel_cmtg_config *cmtg_config)
>  {
>  	u32 clk_sel_clr =3D 0;
>  	u32 clk_sel_set =3D 0;
> @@ -170,6 +170,46 @@ static void intel_cmtg_disable(struct intel_display
> *display,
>  		intel_de_rmw(display, CMTG_CLK_SEL, clk_sel_clr, clk_sel_set);
> }
>=20
> +void intel_cmtg_disable(const struct intel_crtc_state *crtc_state) {
> +	struct intel_display *display =3D to_intel_display(crtc_state);
> +	struct intel_crtc *crtc =3D to_intel_crtc(crtc_state->uapi.crtc);
> +	enum transcoder cpu_transcoder =3D crtc_state->cpu_transcoder;
> +	enum transcoder cmtg_transcoder =3D to_cmtg_transcoder(crtc_state-
> >cpu_transcoder);
> +	u32 clk_sel_clr =3D 0;
> +
> +	if (!crtc->cmtg.enabled)
> +		return;
> +
> +	crtc->cmtg.enabled =3D false;
> +	intel_de_rmw(display, TRANS_VRR_CTL(display, cmtg_transcoder),
> +		     VRR_CTL_VRR_ENABLE | VRR_CTL_FLIP_LINE_EN, 0);
> +
> +	/*
> +	 * Use cpu_transcoder for:
> +	 * 1. Exclusive CMTG registers that do not use the standard transcoder
> offset
> +	 *    (e.g., TRANS_CMTG_CTL, CMTG_CLK_SEL).
> +	 * 2. Registers shared between the eDP and CMTG transcoders.
> +	 *    (e.g., TRANS_DDI_FUNC_CTL2).
> +	 */
> +
> +	intel_de_rmw(display, TRANS_DDI_FUNC_CTL2(display,
> cpu_transcoder),
> +		     CMTG_SECONDARY_MODE, 0);
> +
> +	intel_de_rmw(display, TRANS_CMTG_CTL(cpu_transcoder),
> CMTG_ENABLE, 0);
> +
> +	if (intel_de_wait_for_clear_ms(display,
> TRANS_CMTG_CTL(cpu_transcoder), CMTG_STATE, 50)) {
> +		drm_WARN(display->drm, 1, "CMTG: %s disable timeout\n",
> +			 transcoder_name(cpu_transcoder));
> +		return;
> +	}
> +
> +	clk_sel_clr =3D cpu_transcoder =3D=3D TRANSCODER_A ?
> CMTG_CLK_SEL_A_MASK : CMTG_CLK_SEL_B_MASK;
> +	intel_de_rmw(display, CMTG_CLK_SEL, clk_sel_clr, 0);
> +
> +	drm_dbg_kms(display->drm, "CMTG: %s disabled\n",
> +transcoder_name(cpu_transcoder)); }
> +
>  /*
>   * Read out CMTG configuration and, on platforms that allow disabling it=
 without
>   * a modeset, do it.
> @@ -197,7 +237,7 @@ void intel_cmtg_sanitize(struct intel_display *displa=
y)
>  	if (intel_cmtg_disable_requires_modeset(display, &cmtg_config))
>  		return;
>=20
> -	intel_cmtg_disable(display, &cmtg_config);
> +	intel_cmtg_disable_all(display, &cmtg_config);
>  }
>=20
>  bool intel_cmtg_is_allowed(const struct intel_crtc_state *crtc_state) di=
ff --git
> a/drivers/gpu/drm/i915/display/intel_cmtg.h
> b/drivers/gpu/drm/i915/display/intel_cmtg.h
> index d759cf7e5ae2..1b59deb38f2f 100644
> --- a/drivers/gpu/drm/i915/display/intel_cmtg.h
> +++ b/drivers/gpu/drm/i915/display/intel_cmtg.h
> @@ -16,6 +16,7 @@ enum set_timing_type {
>  	LRR
>  };
>=20
> +void intel_cmtg_disable(const struct intel_crtc_state *crtc_state);
>  void intel_cmtg_enable_ddi(const struct intel_crtc_state *crtc_state);  =
void
> intel_cmtg_enable_sync(const struct intel_crtc_state *crtc_state);  void
> intel_cmtg_set_m_n(const struct intel_crtc_state *crtc_state); diff --git
> a/drivers/gpu/drm/i915/display/intel_cmtg_regs.h
> b/drivers/gpu/drm/i915/display/intel_cmtg_regs.h
> index a93236bf7b75..240a02cd4a3a 100644
> --- a/drivers/gpu/drm/i915/display/intel_cmtg_regs.h
> +++ b/drivers/gpu/drm/i915/display/intel_cmtg_regs.h
> @@ -22,5 +22,6 @@
>  						    _TRANS_CMTG_CTL_A,
> _TRANS_CMTG_CTL_B)
>  #define  CMTG_ENABLE			REG_BIT(31)
>  #define  CMTG_SYNC_TO_PORT		REG_BIT(29)
> +#define  CMTG_STATE			REG_BIT(23)
>=20
>  #endif /* __INTEL_CMTG_REGS_H__ */
> --
> 2.29.0

