Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id jl1fI/nyKmqfzwMAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Thu, 11 Jun 2026 19:40:09 +0200
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id C2104674135
	for <lists+intel-gfx@lfdr.de>; Thu, 11 Jun 2026 19:40:08 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=intel.com header.s=Intel header.b=StVv4uCY;
	spf=pass (mail.lfdr.de: domain of intel-gfx-bounces@lists.freedesktop.org designates 131.252.210.177 as permitted sender) smtp.mailfrom=intel-gfx-bounces@lists.freedesktop.org;
	dmarc=pass (policy=none) header.from=intel.com;
	arc=pass ("microsoft.com:s=arcselector10001:i=1")
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 5825210F03F;
	Thu, 11 Jun 2026 17:40:07 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.7])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 8D4F410F03F;
 Thu, 11 Jun 2026 17:40:06 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1781199606; x=1812735606;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=+B42DulCslLGn96uGdh/pr0tPu8G1/b9TTLcLHsJdQs=;
 b=StVv4uCYPO93icdljcwmTQETLh63I1Pv9BnocyjGGm4GsEoB4C8dpRZS
 0UAFXFo9aRraBJrOhn+bsNiMVbakEL0F8OESZdpr3c4JRYAv9oet9RvGi
 tv1/+1tQFpKU/bRvtARFD1cmLPhrSwtmMIfVkCT5k9O3sCOVAf4i26+XC
 UU3qhk6HlYXZwDIvTM8fNy2IzT2lcPMD5+s0R+BMzON8zfQb9v+pgwsRE
 DCenJCO7x+Kwc5m0oORJ/GzUx0iPtPNisTumT+pssntUwzVRb+7gcmlD2
 sUs1fIowe9h3yqt/Liqw5/xjT6AZkiLdJg/PPnhm07E6zXs8plulVjnW1 w==;
X-CSE-ConnectionGUID: ZnBit96oSaOLEG4jQDlJrQ==
X-CSE-MsgGUID: Td/Eu2PVSqSqopZt8A9t/A==
X-IronPort-AV: E=McAfee;i="6800,10657,11813"; a="107456927"
X-IronPort-AV: E=Sophos;i="6.24,199,1774335600"; d="scan'208";a="107456927"
Received: from fmviesa007.fm.intel.com ([10.60.135.147])
 by fmvoesa101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 11 Jun 2026 10:40:06 -0700
X-CSE-ConnectionGUID: ivMIM7VOR9uTCyhWD+2wgw==
X-CSE-MsgGUID: jZAh3t5pSX6OgfBz+4Iqjw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.24,199,1774335600"; d="scan'208";a="243612868"
Received: from orsmsx902.amr.corp.intel.com ([10.22.229.24])
 by fmviesa007.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 11 Jun 2026 10:40:06 -0700
Received: from ORSMSX903.amr.corp.intel.com (10.22.229.25) by
 ORSMSX902.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Thu, 11 Jun 2026 10:40:05 -0700
Received: from ORSEDG901.ED.cps.intel.com (10.7.248.11) by
 ORSMSX903.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37 via Frontend Transport; Thu, 11 Jun 2026 10:40:05 -0700
Received: from CY3PR05CU001.outbound.protection.outlook.com (40.93.201.18) by
 edgegateway.intel.com (134.134.137.111) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Thu, 11 Jun 2026 10:40:05 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=DvA3KsYsre2z1TGtWR0enpqUAaJ7zg0TXeUYTh/rvScRgrl+I69aQ3RFfud69bfI4CVAbngrdQbmi50AO8a98zX4PfyVRs4yD4JgmbdazSI3DcACoojCRgRe5dCE/XSrTdy5QhXEdgYu1yVc/ZG1/GPZ47ACh1PHouqpus3cmzgrZ4v90iTcVwSw7ZFLnvIwS1fCL2AsblB06WKrRJlixFlJLfFIM9wDGs0B3RQ+ZbMCZ9l6I9kUa+Jb0n7NQn94JogUM8TjOitDtRV6ZqYjinq455gjME+yNgAIEsKnvnFAPnJ2tq0y5RFQ5L2ho/DG1mw7+6X/kwjY+dFf61b5YA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=bX8uBSjC9DmvndAwzdABTv5LE9A9I0xdXxAvXScODlc=;
 b=hiJ12sh3r18x5YMVweNOlnbNvGD+ETV0pwpHM3EW9nCIVhqbwk9C2pxkFCIbtoobezsJxN+PrTqPAwUsWyZVrl98fqb3lrmqd/KqAjztWFIgbRXMSwZZvq61e9QLaDZ6rcsvYZceAwMpYVCJbLUAoVlr21NmR+Z84m6kHOIUUCQsG9W8CLsQe8vTbAh9azb+lQNcw8AEr5zx0sYqWE9FGbn8sAtC9zCX46AtAS+XE8h7VFeJrR5uJfKCFtPXgp/rltWuCdwAteYLHi+KDE4WZcJjlSvC5W4Hn4hhsygXLg2xw0JWMI2/zQ6cAtzDVNF+VAPAVfwAcFvqk6fMBkDHiw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from DM4PR11MB6360.namprd11.prod.outlook.com (2603:10b6:8:bd::12) by
 SA0PR11MB4718.namprd11.prod.outlook.com (2603:10b6:806:98::24) with
 Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.21.92.18; Thu, 11 Jun 2026 17:40:02 +0000
Received: from DM4PR11MB6360.namprd11.prod.outlook.com
 ([fe80::22d9:ae03:5db1:680]) by DM4PR11MB6360.namprd11.prod.outlook.com
 ([fe80::22d9:ae03:5db1:680%5]) with mapi id 15.21.0092.016; Thu, 11 Jun 2026
 17:40:02 +0000
From: "Shankar, Uma" <uma.shankar@intel.com>
To: "Manna, Animesh" <animesh.manna@intel.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>,
 "intel-xe@lists.freedesktop.org" <intel-xe@lists.freedesktop.org>
CC: Dibin Moolakadan Subrahmanian <dibin.moolakadan.subrahmanian@intel.com>,
 "ville.syrjala@linux.intel.com" <ville.syrjala@linux.intel.com>, "Nikula,
 Jani" <jani.nikula@intel.com>
Subject: RE: [PATCH v8 10/20] drm/i915/cmtg: Program VRR control register for
 CMTG transcoder
Thread-Topic: [PATCH v8 10/20] drm/i915/cmtg: Program VRR control register for
 CMTG transcoder
Thread-Index: AQHc85dT7GPpn0Eobkaqzl0W1a4E67Y5q0sg
Date: Thu, 11 Jun 2026 17:40:02 +0000
Message-ID: <DM4PR11MB636018B152C6DF71F478CC0DF41B2@DM4PR11MB6360.namprd11.prod.outlook.com>
References: <20260603195416.91639-1-animesh.manna@intel.com>
 <20260603195416.91639-11-animesh.manna@intel.com>
In-Reply-To: <20260603195416.91639-11-animesh.manna@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: DM4PR11MB6360:EE_|SA0PR11MB4718:EE_
x-ms-office365-filtering-correlation-id: b5a298ea-17fd-4f70-a678-08dec7e077a3
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
 ARA:13230040|1800799024|376014|23010399003|366016|38070700021|22082099003|18002099003|11063799006|4143699003|56012099006;
x-microsoft-antispam-message-info: hJ5kj/3ofsmt2hgXmiJG/8GIoI3vfuV1xjlDOP3/LH3K0lYcFa85A8EZqlYBo1vlcWSauV+tkVqxILQH5edcQFaDEe7UQXLLIc25vDjFrCbNggcId6GJExCywF1MEx48NSaKU14AIgcYYSqZlpaXE9vcIOTahCGuEAAYqj5+IxYtBxiO6SjIvCTqatWf4GoIhDH7lJIu4X2yIDlq9pthLPbT6wJU8U4r6aenSzLBJ5IqX5Hg8FDNdacT3VT8iRDHQFJUgwvN9lFk0uhSvElccuWQIKq9Jv8zp9VGnznbkd+65yxXsbXac/EddcT0U8+7NQSkLX1VCTq9vB/rSNtoPjdkhoufSZ81sXWeEqmg2K4MS8qUzzEz+tMKhcNDldp84RglItxu6kf2rBaMlpoJvCfSSEfT0TvqctzAPdMhWl/iEI0nduQJIsu72in2xsy+om2TU3/konOLiQoz81R1aMi9KFCEEZxCwUTOoChHceV0uL2vsJ2Y73Pud/MNECyI5Y5rr49QvjRhXEQhbOV640+1bRpH/WOwsCwAhJXawl7GRdC9mwR0OKjDKLRJ7WtLBVFAcWHOyuOwKoHA3aCazdKD4w0foCvDgxJXru69cVo3xSmBHynvzPbbPX1qOU8lkCrC4tcizDV6ghiI2lZhVOtqASFzJIkBrtj7lxCmmsAFEneQxZ15uc2JJ4IaHNSW31frhd0QW3Ow38jcmOsyGnsFywZhixinip1xQzoHUY794oxQDfstdBzJ1IzIGy+9
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM4PR11MB6360.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(1800799024)(376014)(23010399003)(366016)(38070700021)(22082099003)(18002099003)(11063799006)(4143699003)(56012099006);
 DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?Eg7P149eU/vlMl4bvvtk68yNZKdXwV6RMlcrmdeSMMZwpNIWVeoS8sbWphNy?=
 =?us-ascii?Q?dtVlXQmptooahq2Faz/pk4DS0TnAU6gTIr7shUp9g9wRnkBuyuPNag85kL4I?=
 =?us-ascii?Q?H9HQ8mv+qyIwInkIBIybWOUathH1uk1zBHAiej/+/O8WBUUCDst2vFRjq+pp?=
 =?us-ascii?Q?docyyQyLoPkQY4ehrDoU8nrvuSv5Y0WkYvOl8xi0g7rYU+FTrHrbxNKIOj0V?=
 =?us-ascii?Q?2owCQmLQNuvzimamXHxtd8XNC961g+vkryof9NkQ6CyVOQyFZ3wzsXzvpHn4?=
 =?us-ascii?Q?K6/xn9Sj+hlz7O4YHrIcL6sPqdMcY3v69QQp/qgmYAarYaSWid1NBjkBLpvu?=
 =?us-ascii?Q?4CGMkYXhT2AKgpEJ8tW3phpBpGDwmH7POukmJyKLmSQVWZs1aymst94Nmb/g?=
 =?us-ascii?Q?zuu3YPR1X1zjZaj2LwF39JR72GcfYlsGCRHOnamyeo0UHfblP1bsIjKGh4Fo?=
 =?us-ascii?Q?Q43x03NT/NoCPRdmmJJHQEGNxlHdv+kv+wViykdVRpxCJRZI7NyNQskWe6Uc?=
 =?us-ascii?Q?VFAHqeS9Klx74NHyIEBle1bV8Tle2f+Lu9OeLFxhx2smw2L0HdpxRTgUo2oP?=
 =?us-ascii?Q?674lFoAP4XlqHRUlueGPhGGcb7eDSmUkfRjkM/MR2zzH75iWsZh58mfn9sqg?=
 =?us-ascii?Q?X3p/3FB3Nxx2yehjLJhiaQQxNaTV1TuDCNW8pfynYu2RhGpHQ/1e3hco/7Jt?=
 =?us-ascii?Q?MSd137Wd84w5mmG5VOCc0lwrqMOFCTsHID7ZyX1ke+HEy5/xQIClvL5STaL4?=
 =?us-ascii?Q?q0RujLK6/4HBUXRMUIKRDbaBWrIdqB6lRqf5NAFMvlSfADqduX9AAVk2kXVZ?=
 =?us-ascii?Q?r3JOgqtvew4xfaIUhnVZ377L+yRzcwIGrUznPhozi2bLerMXsqC8zT1rjjbj?=
 =?us-ascii?Q?oHP0xkSWElGmDhR9XKVXjh+d8e6WXwjQhXg6IRdwhbGaa5+5G0lnH7NVD84f?=
 =?us-ascii?Q?eMWgNR3342AUq0N7fFG45sG0Zz5Bkxtkg74qUswv6Za8uhv7GhuwJY9V/xMM?=
 =?us-ascii?Q?czf3KKGRok+TiREyV7tyXDQHtnB0FHsJ+qkfXbOVM7LTWErsQk5SJeKMl4zL?=
 =?us-ascii?Q?ZoXjNxN+jG2fnRIUn2JL3Pe6RLRtbwG4OhlZDzHObejxvA2FP/txUoIvCs+m?=
 =?us-ascii?Q?Ci3KwohOFNT2bb609b0NL9cdyFZ7eCHt7XhgNQNK6TIDPbzBxl29tt1OKTJo?=
 =?us-ascii?Q?8QIiMfUUiwlbQYcKBuLQHgzlaqdQzaY8mhr+WXB8+eOCocmK5GQ6jX5EPwOR?=
 =?us-ascii?Q?IBv603qt+QWFBNpIaL0RpIhhVlGds5ifTUifWlM13B/fAdDVt0ZkVwu7AXgQ?=
 =?us-ascii?Q?ic6YELFi6RJHKP3mTWWFkQHHvf049jXfSohvuC2e0iJyqbediEujGf2DkdEL?=
 =?us-ascii?Q?A4bvizrO0PNS4vKDRgk/vSFCOYxqHUmSx4zyNoI9QQU25hBUy5GcLdh/hZdU?=
 =?us-ascii?Q?oAshFs9qXLSe2NzIw5QOj57NoXGVNKj3kmtQbzrf9eHmu8xna6Y1k5ErQsja?=
 =?us-ascii?Q?bYBUPOPnA+GPUoB8Q9ny7HMl9RiAg2bG4s7nXOe1trGI/QQRqIrU7HKlJBpA?=
 =?us-ascii?Q?7Zvzxn7ART6y7qYgVjOq5C91jVf1LzeqMYX832UZSx1iiOd+C95x2lUMBL7A?=
 =?us-ascii?Q?F307DmGpkg8Dsp8luxxaYBuSisqK7pKdTdR/wAnagEEYgsL7efnYsYnChjbQ?=
 =?us-ascii?Q?z+AbqFOmQoh1YQJpy0KVD19QYRgvm1beBsgk2t9NFCNF0MgSLjMQ7qWWHa5w?=
 =?us-ascii?Q?E9DtoSjSAA=3D=3D?=
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-Exchange-RoutingPolicyChecked: jWgLtOjlfU0arhHDxFEsPYzbmMAAF/ABiQajQd0mPRD/0raUJlJQAPH68pTu4Z6d9WayZVTq5aiiCc1xlKNtgezcJBeknvooedNlRrBp/Xem6GsQHiov+dGEleF+VXUpbSZQKGWcNaQ7vTJExA8z4lwFXVN3CvnwjuUFnUqRhfGE6z/cvqaKu53PK4VD7okSrTMSWJIvA+SrIaaUBb6qJX/Grxa4cEQFF7DrRkbnE5DZ18RXcm4GVjHjzz81KyT14/J7MDXvJeZr0qHRKyrxqIPZJHinc/Y+7ryC+RXagBfmYKc+yqsiheZbgP4OmWpOTla4jw3SQ30lr7au6R9wAA==
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: DM4PR11MB6360.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: b5a298ea-17fd-4f70-a678-08dec7e077a3
X-MS-Exchange-CrossTenant-originalarrivaltime: 11 Jun 2026 17:40:02.6381 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: hB8K4C2Qguwa7Psa/99PReOogMVRBLrNMGw9LfjoeGB+HRHjOTzDgiSfQ7wfBKatWU8+RtgELN72tLz9e/Ku/Q==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SA0PR11MB4718
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
	R_SPF_ALLOW(-0.20)[+ip4:131.252.210.177:c];
	MAILLIST(-0.20)[mailman];
	MIME_GOOD(-0.10)[text/plain];
	RWL_MAILSPIKE_GOOD(-0.10)[131.252.210.177:from];
	HAS_LIST_UNSUB(-0.01)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	MIME_TRACE(0.00)[0:+];
	TO_DN_SOME(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	TO_DN_EQ_ADDR_SOME(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[gabe.freedesktop.org:rdns,gabe.freedesktop.org:helo,intel.com:dkim,intel.com:email,intel.com:from_mime,lists.freedesktop.org:from_smtp,lists.freedesktop.org:email,DM4PR11MB6360.namprd11.prod.outlook.com:mid];
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
X-Rspamd-Queue-Id: C2104674135



> -----Original Message-----
> From: Manna, Animesh <animesh.manna@intel.com>
> Sent: Thursday, June 4, 2026 1:24 AM
> To: intel-gfx@lists.freedesktop.org; intel-xe@lists.freedesktop.org
> Cc: Shankar, Uma <uma.shankar@intel.com>; Dibin Moolakadan Subrahmanian
> <dibin.moolakadan.subrahmanian@intel.com>; ville.syrjala@linux.intel.com;
> Nikula, Jani <jani.nikula@intel.com>; Manna, Animesh
> <animesh.manna@intel.com>
> Subject: [PATCH v8 10/20] drm/i915/cmtg: Program VRR control register for
> CMTG transcoder
>=20
> Add intel_cmtg_set_vrr_ctl() to program TRANS_VRR_CTL for the CMTG
> transcoder. Purposefully avoid using the existing VRR enable path, as man=
y of its
> operations are not needed for CMTG.
>=20
> v2: Use sw state instead of reading from hardware. [Jani]
> v3: Program cmtg vrr control register along with vrr transcoder registers=
. [R-b
> from Uma]
> v4: Split out from vrr timing registers programming.

Looks Good to me.
Reviewed-by: Uma Shankar <uma.shankar@intel.com>

> Bspec: 68989
> Signed-off-by: Animesh Manna <animesh.manna@intel.com>
> ---
>  drivers/gpu/drm/i915/display/intel_cmtg.c | 20 ++++++++++++++++++++
> drivers/gpu/drm/i915/display/intel_cmtg.h |  1 +
> drivers/gpu/drm/i915/display/intel_vrr.c  |  2 ++
>  3 files changed, 23 insertions(+)
>=20
> diff --git a/drivers/gpu/drm/i915/display/intel_cmtg.c
> b/drivers/gpu/drm/i915/display/intel_cmtg.c
> index 4c8187ddef1f..12f6ef4de0e9 100644
> --- a/drivers/gpu/drm/i915/display/intel_cmtg.c
> +++ b/drivers/gpu/drm/i915/display/intel_cmtg.c
> @@ -17,6 +17,7 @@
>  #include "intel_display_regs.h"
>  #include "intel_display_types.h"
>  #include "intel_vrr.h"
> +#include "intel_vrr_regs.h"
>=20
>  /**
>   * DOC: Common Primary Timing Generator (CMTG) @@ -255,3 +256,22 @@
> void intel_cmtg_set_vrr_timings(const struct intel_crtc_state *crtc_state=
)
>=20
>  	intel_vrr_set_fixed_rr_timings(crtc_state, cmtg_transcoder);  }
> +
> +void intel_cmtg_set_vrr_ctl(const struct intel_crtc_state *crtc_state)
> +{
> +	struct intel_display *display =3D to_intel_display(crtc_state);
> +	enum transcoder cmtg_transcoder =3D to_cmtg_transcoder(crtc_state-
> >cpu_transcoder);
> +	u32 vrr_ctl;
> +
> +	if (!intel_cmtg_is_allowed(crtc_state))
> +		return;
> +
> +	vrr_ctl =3D VRR_CTL_VRR_ENABLE | VRR_CTL_FLIP_LINE_EN |
> +		  XELPD_VRR_CTL_VRR_GUARDBAND(crtc_state-
> >vrr.guardband);
> +
> +	/* TODO: The code below may need to be revisited once CMRR is
> enabled */
> +	if (crtc_state->cmrr.enable)
> +		vrr_ctl |=3D VRR_CTL_CMRR_ENABLE;
> +
> +	intel_de_write(display, TRANS_VRR_CTL(display, cmtg_transcoder),
> +vrr_ctl); }
> diff --git a/drivers/gpu/drm/i915/display/intel_cmtg.h
> b/drivers/gpu/drm/i915/display/intel_cmtg.h
> index 899a2744514c..c92e3a62ff0d 100644
> --- a/drivers/gpu/drm/i915/display/intel_cmtg.h
> +++ b/drivers/gpu/drm/i915/display/intel_cmtg.h
> @@ -12,6 +12,7 @@ struct intel_display;
>  struct intel_crtc_state;
>=20
>  void intel_cmtg_set_vrr_timings(const struct intel_crtc_state *crtc_stat=
e);
> +void intel_cmtg_set_vrr_ctl(const struct intel_crtc_state *crtc_state);
>  void intel_cmtg_set_timings(const struct intel_crtc_state *crtc_state, b=
ool lrr);
> void intel_cmtg_set_clk_select(const struct intel_crtc_state *crtc_state)=
;  void
> intel_cmtg_sanitize(struct intel_display *display); diff --git
> a/drivers/gpu/drm/i915/display/intel_vrr.c b/drivers/gpu/drm/i915/display=
/intel_vrr.c
> index 2295f6545981..d4a2645cd380 100644
> --- a/drivers/gpu/drm/i915/display/intel_vrr.c
> +++ b/drivers/gpu/drm/i915/display/intel_vrr.c
> @@ -932,6 +932,8 @@ static void intel_vrr_tg_enable(const struct
> intel_crtc_state *crtc_state,
>  		vrr_ctl |=3D VRR_CTL_CMRR_ENABLE;
>=20
>  	intel_de_write(display, TRANS_VRR_CTL(display, cpu_transcoder),
> vrr_ctl);
> +
> +	intel_cmtg_set_vrr_ctl(crtc_state);
>  }
>=20
>  static void intel_vrr_tg_disable(const struct intel_crtc_state *old_crtc=
_state)
> --
> 2.29.0

