Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id QemBDa71Jmo9owIAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Mon, 08 Jun 2026 19:02:38 +0200
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 06D3F6590A0
	for <lists+intel-gfx@lfdr.de>; Mon, 08 Jun 2026 19:02:37 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=fail ("headers rsa verify failed") header.d=intel.com header.s=Intel header.b=W6MSi0xL;
	spf=pass (mail.lfdr.de: domain of intel-gfx-bounces@lists.freedesktop.org designates 131.252.210.177 as permitted sender) smtp.mailfrom=intel-gfx-bounces@lists.freedesktop.org;
	dmarc=fail reason="SPF not aligned (relaxed)" header.from=intel.com (policy=none);
	arc=reject ("signature check failed: fail, {[1] = sig:microsoft.com:reject}")
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 2411A10F78C;
	Mon,  8 Jun 2026 17:02:35 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.8])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 3E4F810F78C
 for <intel-gfx@lists.freedesktop.org>; Mon,  8 Jun 2026 17:02:34 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1780938154; x=1812474154;
 h=date:from:to:cc:subject:message-id:reply-to:references:
 in-reply-to:mime-version;
 bh=36A/6XLzi9olGBxbMfbv+pmaun118ai7S6p79NvmmEM=;
 b=W6MSi0xL0OJKbTc+fyLN2T1fHwg5HvpZzezFvq9npLZVyXylIJUY7UAO
 HOiE5gUe03uFzaooRxjyAuUqgSgCfAWHmDfMvufx+xjq0Y3zx2OM4CE/e
 CGW5KW3reZ6LOOeC5YeH+r2j0d8BayF/ZkhBpUJcl8AYF83KAKPZpamtt
 BywpYKLG/6cISuL9pgVWPHneTax4FWIKfr+BcrUdXm05TgGpCYcYKtH8y
 cXi4W3lFz/uR8DtKjBUOTU4wZbimoKc1dnSiYiRbH5a7GTTKNefIBu+iF
 8GW9CqRKg/dHhPOPmi1+94f4mylV6HaMpqIJ/FIheYM/3tYalrmUMwlD1 g==;
X-CSE-ConnectionGUID: eH+roMSrQOy04odc4XkIBQ==
X-CSE-MsgGUID: RTOcNsQZS0Sn58BjugXrNQ==
X-IronPort-AV: E=McAfee;i="6800,10657,11811"; a="99262671"
X-IronPort-AV: E=Sophos;i="6.24,194,1774335600"; d="scan'208";a="99262671"
Received: from fmviesa005.fm.intel.com ([10.60.135.145])
 by fmvoesa102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 Jun 2026 10:02:33 -0700
X-CSE-ConnectionGUID: 06ZbXmxfQ+W9gbxf0fpWjw==
X-CSE-MsgGUID: r4blYjw5RVW3YJiZe0AR5A==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.24,194,1774335600"; d="scan'208";a="250704547"
Received: from fmsmsx903.amr.corp.intel.com ([10.18.126.92])
 by fmviesa005.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 Jun 2026 10:02:33 -0700
Received: from FMSMSX901.amr.corp.intel.com (10.18.126.90) by
 fmsmsx903.amr.corp.intel.com (10.18.126.92) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Mon, 8 Jun 2026 10:02:32 -0700
Received: from fmsedg902.ED.cps.intel.com (10.1.192.144) by
 FMSMSX901.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37 via Frontend Transport; Mon, 8 Jun 2026 10:02:32 -0700
Received: from SA9PR02CU001.outbound.protection.outlook.com (40.93.196.71) by
 edgegateway.intel.com (192.55.55.82) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Mon, 8 Jun 2026 10:02:30 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=aOE242vohnkeOWElJQDZ68OvtzaW60E5b1jqUCZsYr2dvEpV/+cPCsxIUebHAoWvywf7No8twgVhWADKW9p7BTXyFXTFH2atqNFBdsz0u7cUm5VLhbDVR4xHMFkgUjsjaaNDN6qnwZV5Xw7WATYA61PTI/zeR9/vWIYzLyTWmVm0/TBRR8qMbdUeYzmVLjitXQ6RqQHH3SL8UQqoES2tdMTPBK65wJa8fIVDtZ7OfE5OCE9D93AEhVlvqAPMi2m1kR1KkLD4Ou5/4sRdHHmSSL82zsJj/sANVIpPKvD8HmU1c53C3BvgVzy6UmM2ygwVo+Les/EPYq//sKMWzwRD6w==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=iWsxQJkgdDM/Di/PjTdX7WtjuxdqOfGFsthTU9AzJO4=;
 b=yuZ4iW5ge1f7lXKsDgM4JgOCC0ilfJAWK6kmkP2gnszbY/Spolt7bJafuLQbbW+T0dQL14MEsQklOhaOP9lE9ckU7fgetLSCfxIsGKtwOh9uCVzf7YVN8phSttuyEmItR1V5FEP4UNRBGmO+R5v671xtbYSx81uhQs0/m97qhkUutXn4kNeOcpN3YMMbjbHTsb+p1U2BbVLh7zN5lqQpNmgmZ2CKgQtgROPp/5cEOgPRX4QbqfFT+bcWDIjue+wMZlfVN/gpyxGLhDN8iuQ707Q/IWkMkqvyneml2s5WCh0IfqI7w1j7OERLDlI6/OmQ1woXVF1XTTvRcY42TBkr4g==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from IA3PR11MB9273.namprd11.prod.outlook.com (2603:10b6:208:573::17)
 by LV3PR11MB8458.namprd11.prod.outlook.com (2603:10b6:408:1bb::20)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.21.92.13; Mon, 8 Jun 2026
 17:02:27 +0000
Received: from IA3PR11MB9273.namprd11.prod.outlook.com
 ([fe80::31a4:58c:e3b5:43fa]) by IA3PR11MB9273.namprd11.prod.outlook.com
 ([fe80::31a4:58c:e3b5:43fa%4]) with mapi id 15.21.0092.007; Mon, 8 Jun 2026
 17:02:27 +0000
Date: Mon, 8 Jun 2026 20:02:21 +0300
From: Imre Deak <imre.deak@intel.com>
To: Jani Nikula <jani.nikula@intel.com>, Mika Kahola <mika.kahola@intel.com>
CC: <intel-gfx@lists.freedesktop.org>
Subject: Re: =?utf-8?B?4pyTIGk5MTUuQ0kuRnVsbDogc3Vj?=
 =?utf-8?Q?cess_for_drm=2Fdp=2Fi915?= =?utf-8?Q?=3A?= drm/i915/dp_link:
 Refactor DP link recovery logic
Message-ID: <aib1nSTFtjRhmQLq@ideak-desk.lan>
References: <20260601093836.3057345-1-imre.deak@intel.com>
 <178033691449.32261.5912855743706321591@6beec6c84f66>
Content-Type: text/plain; charset="us-ascii"
Content-Disposition: inline
In-Reply-To: <178033691449.32261.5912855743706321591@6beec6c84f66>
Organization: Intel Finland Oy - BIC 0357606-4 - c/o Alberga Business Park, 6
 krs Bertel Jungin Aukio 5, 02600 Espoo, Finland
X-ClientProxiedBy: GV2PEPF0001A330.SWEP280.PROD.OUTLOOK.COM
 (2603:10a6:158:401::68b) To IA3PR11MB9273.namprd11.prod.outlook.com
 (2603:10b6:208:573::17)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: IA3PR11MB9273:EE_|LV3PR11MB8458:EE_
X-MS-Office365-Filtering-Correlation-Id: aec8b179-a62d-4730-befe-08dec57fb7ea
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
 ARA:13230040|1800799024|366016|376014|18002099003|22082099003|5023799004|11063799006|6133799003|4143699003|56012099006|3023799007;
X-Microsoft-Antispam-Message-Info: Qq/MsJrK7ZwPI0sjOjfgThZceKV1c0n8BmoLyXsFGpAogSgPhefv1Fv96G+DlLOcp7XBlLPamqk48aNSEtzRJh9zQXSietsfG31t4hYTVZLpPfWs2fWMgW1TyMcbEG1GF1dXIS1HX48u7SXHRro287e2JsP8vSQzqIm4ine1jnrzS+1e8/evr80E96TR+Ck14qPMTdCpJxbqLWEy9F2lqmiPG8SYWNsmXU3T2QS0Pe/LCRwCQrB5ox26tL6TWqhrHDFPeap3k2GUI1H/tYfn3WS8SbMn1VqphhlIS/D6O8sfKmOATtNsdVHJ/52uJs3VEzNz/QgRsEk5kJc785oNSa3AqRRVb829L5698awLzpbT3UYyqBL3mm8IKniBOeGJDP7WF3e/2dZKOxO/vlUEcWxK7JGclAfZS+PdtHf8cI2N/8JWVTqtYGel9B4428RrsuB7yTut4xg30gYYTrTO9mxNJjMLd1tTZYtZPAG1IlUTh8xHS4eIoHcGVLOAhWiqz6dKXYNBYfjjbmy5y9dG4emT2S/48eH9611gNPbqeAJGPDEthc+d6+F3DfArJOIH3dm2KHz/zCUl8Swo/Jwvci7/JPicAy1p6q3rUhD1AmejoPAx8U9TB7D6nF25s2FbqrQp0Y9IrV9T/zL0XqEgGA==
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:IA3PR11MB9273.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(1800799024)(366016)(376014)(18002099003)(22082099003)(5023799004)(11063799006)(6133799003)(4143699003)(56012099006)(3023799007);
 DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?2YuFVb0SYSnBFQdDFxWr9hNpKo0fVjfKromkrzidzCGFvVPK1JBDEGDAukFt?=
 =?us-ascii?Q?ZfZgJwEJcGwhoYd7V2lJItpmDmpr2txRu5oPLYSkzXt+oMG3QUqJQvhrM9Q+?=
 =?us-ascii?Q?t7SwiLGQGrnByxwKnrj88tkf0+6YCIUIFIk2Kr04QIsJtXsvqIX8d2gR8F9H?=
 =?us-ascii?Q?mN8FsK+2LmxLrJ4CV3fY+H10i8KRP45AoeM7bCn7K50zVwBjCf1dLniwIukP?=
 =?us-ascii?Q?1HQoxLJiYsGBNrUr4q38jw103oFF7ZSzj/33dqg7uX/hoA/XCpjGWofmMUzw?=
 =?us-ascii?Q?RS99E3Shpv41T1mA/7qQLRiGZvPomZJ9eCkUF6TjcwxV9LCD8hoUdAgqEjHI?=
 =?us-ascii?Q?eOLAJrUPWydkLPSQ/TMBHU8wbZZXNSSOCyZ1Okc9+uIg39VV8Ttw621DZ+0C?=
 =?us-ascii?Q?WdJ16XwqkKd7ClhvNcahLk5U8cozjgmA3xF1IF5PfCE6QQ9zmOtqrXlVc6ZR?=
 =?us-ascii?Q?+ClR1W3rvI9UjH/gQwQvUBtFTG/6MRrlhfOzYZQuh6Y4aA4sr553j3d1aN/5?=
 =?us-ascii?Q?8UDIxc+7clEnyZB3SYKYVqr9PLNrRlG+VHzcr8maC6RdHLZbzT/mLDqBoSVn?=
 =?us-ascii?Q?d4TjzlkXVVtWHbNRB6btud7uyrpu2Ns3dHDN72Sq0loh8TGJoWAfGranYfOL?=
 =?us-ascii?Q?BGGWumeqD5oytTH5Zz/s/C0qPcF5xyVgMsdnMbPoSHKQep8XUJ6frv5oiKIZ?=
 =?us-ascii?Q?KZimkPavDO56H3lsu3TtAB8d6ct2h5pR/aHW4HUvpn2Y2fVhFL7h8BxfieY5?=
 =?us-ascii?Q?TDlufrNlDi532dKUF/rKKd3xycpxzdFzLxmz9YwWq06157FaoNk0eSxWf9kP?=
 =?us-ascii?Q?CAf46XedMUql1J+OaDM7RdY300bC8stKuUPdlpEVgq/8g9r14H0ApxK+zkka?=
 =?us-ascii?Q?UjnVSKKTioH3eGfr1RQs6mkBJsTLkGfRf5c6BO/yv0DSlMU/y8JLQFYvx1VA?=
 =?us-ascii?Q?J0IcBVa6c1Ubk74Qx0FZgZVYBNRfxIMZxYdx+oQWyliJIHXajqQl4VFEDUv/?=
 =?us-ascii?Q?OFy1ELaPzMx4ONJGqPkJp6+mLQwBiH/JlcGsyP0zvvnGXURItbnE/SeoiYkP?=
 =?us-ascii?Q?LN+toO6i621sSgZwDHY9uVdd3Vg5ES7aMBq27TBMhIvPRzNM1w7oHtOq9lYE?=
 =?us-ascii?Q?26WU/CWxeftsZwCcuIw0gJGNJQN+G1+lzql0dvG8FYfeRQey8aSP6d/d6dew?=
 =?us-ascii?Q?CEuN9kEIKRTyls88x60idl7BJpZxVSOt669DnZhRsJzEdj6Ni0JbzBISl3SL?=
 =?us-ascii?Q?2v2g2nKnNee7qHGU1jyip1jI99VDMX8MA1hTmmK+O2FuSMnXqKmRpu0MJgI5?=
 =?us-ascii?Q?VT/C71GJN2pNyrbCNJtbIck7fvcGxzDQ8Kg0vr1vobPZ/52aOGUM/sdlFmZe?=
 =?us-ascii?Q?/G/0txJ62s2ot7PLhr3ctkDKv/zlU8Cunq8ifjDBNtNGbEOqWP1l7usRJSfX?=
 =?us-ascii?Q?krEzhJcqPw24vbGWP5c0wrR3S9/SPL4nPXgzv6NGLWnoOZgLN+bpdYiVETIX?=
 =?us-ascii?Q?lKX6Qvf5NfERGK/iO8s208q5ouIoUBOqne1tNG1mhREwkILSVNNE64hQu8Yx?=
 =?us-ascii?Q?awzB+FMh+DAbcQIlJSbZThLu0d9rC5J7UYFoQXgLZvsJbMl/3IeoETsroa4h?=
 =?us-ascii?Q?Sd9hTVuhsXoyqJ1iULAjtYnOaW52n9m3V8Hl+HfT1wLWPZo2HRqdHj7G0Q2p?=
 =?us-ascii?Q?E/8I/U9elJsWflnJdavvNbEVvCMcbzvZ5Vx3FLCPFrjugDvX+l4G9pAAVGeH?=
 =?us-ascii?Q?gzWnyzb49w=3D=3D?=
X-Exchange-RoutingPolicyChecked: J93k2ZkiGBVNk2tnMjXldxGYVZp3XOTjCbqe4RzSVAZpLy4fQPxs38X4CO0sJNKA6LYSSMyKQoWMGCq/23VuBcJwIFeSMiclhpkjhG1D5cXt+LR+9+mXvmmVz7uS0nLqyaUl+TktyRNxG+iLO/2W9x0rubCakvo9bgCCOKgZPXPNnhVFF4gwOXhJeEQhr2U2GMCnV65lwhA2qtSOtTrhrBp3T+jgrxJNw6MnrZCrr59B45V/AF3y8YLuZi9ZTHjKov7YdNOsWqnDZr0t1+PE9lJR7S2a1Kvan3tp9A4hFDE3pD0UFhLcwSg4fZNaaa9kSiMQ0jbF05FEvnK21fYceA==
X-MS-Exchange-CrossTenant-Network-Message-Id: aec8b179-a62d-4730-befe-08dec57fb7ea
X-MS-Exchange-CrossTenant-AuthSource: IA3PR11MB9273.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 08 Jun 2026 17:02:27.5207 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: XhYZekSx2GTDcXJ4YwwIUm+6DvnRT3Abbsiino3rnlR//dDFe6y1hYXwcMDUDMA5782aCqvtdu2c+bhmkTJFjw==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: LV3PR11MB8458
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
Reply-To: imre.deak@intel.com
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>
X-Rspamd-Action: add header
X-Spamd-Result: default: False [10.49 / 15.00];
	URL_MULTIPLE_AT_SIGNS(9.00)[3];
	R_DKIM_REJECT(1.00)[intel.com:s=Intel];
	ARC_REJECT(1.00)[signature check failed: fail, {[1] = sig:microsoft.com:reject}];
	R_SPF_ALLOW(-0.20)[+ip4:131.252.210.177:c];
	MAILLIST(-0.20)[mailman];
	RWL_MAILSPIKE_GOOD(-0.10)[131.252.210.177:from];
	DMARC_POLICY_SOFTFAIL(0.10)[intel.com : SPF not aligned (relaxed),none];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	FORGED_SENDER(0.00)[imre.deak@intel.com,intel-gfx-bounces@lists.freedesktop.org];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	REPLYTO_DOM_EQ_TO_DOM(0.00)[];
	FORGED_RECIPIENTS(0.00)[m:jani.nikula@intel.com,m:mika.kahola@intel.com,s:lists@lfdr.de];
	TO_DN_SOME(0.00)[];
	MIME_TRACE(0.00)[0:+];
	HAS_ORG_HEADER(0.00)[];
	FORWARDED(0.00)[intel-gfx@lists.freedesktop.org];
	GREYLIST(0.00)[pass,meta];
	DBL_BLOCKED_OPENRESOLVER(0.00)[gabe.freedesktop.org:rdns,gabe.freedesktop.org:helo];
	DKIM_TRACE(0.00)[intel.com:-];
	HAS_REPLYTO(0.00)[imre.deak@intel.com];
	FORGED_SENDER_FORWARDING(0.00)[];
	PREVIOUSLY_DELIVERED(0.00)[intel-gfx@lists.freedesktop.org];
	REPLYTO_ADDR_EQ_FROM(0.00)[];
	FROM_HAS_DN(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[imre.deak@intel.com,intel-gfx-bounces@lists.freedesktop.org];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	ALIAS_RESOLVED(0.00)[];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	RCPT_COUNT_THREE(0.00)[3];
	TAGGED_RCPT(0.00)[intel-gfx];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	MISSING_XM_UA(0.00)[];
	RCVD_COUNT_SEVEN(0.00)[9]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: 06D3F6590A0
X-Spam: Yes

On Mon, Jun 01, 2026 at 06:01:54PM +0000, Patchwork wrote:
> == Series Details ==
> 
> Series: drm/dp/i915: drm/i915/dp_link: Refactor DP link recovery logic
> URL   : https://patchwork.freedesktop.org/series/167645/
> State : success

Thanks for the reviews, patchset is pushed to drm-intel-next.

> == Summary ==
> 
> CI Bug Log - changes from CI_DRM_18595_full -> Patchwork_167645v1_full
> ====================================================
> 
> Summary
> -------
> 
>   **SUCCESS**
> 
>   No regressions found.
> 
>   
> 
> Participating hosts (11 -> 11)
> ------------------------------
> 
>   No changes in participating hosts
> 
> Known issues
> ------------
> 
>   Here are the changes found in Patchwork_167645v1_full that come from known issues:
> 
> ### IGT changes ###
> 
> #### Issues hit ####
> 
>   * igt@dmabuf@all-tests:
>     - shard-tglu:         NOTRUN -> [SKIP][1] ([i915#15931])
>    [1]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167645v1/shard-tglu-8/igt@dmabuf@all-tests.html
> 
>   * igt@gem_ccs@suspend-resume@linear-compressed-compfmt0-smem-lmem0:
>     - shard-dg2:          [PASS][2] -> [INCOMPLETE][3] ([i915#13356])
>    [2]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18595/shard-dg2-1/igt@gem_ccs@suspend-resume@linear-compressed-compfmt0-smem-lmem0.html
>    [3]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167645v1/shard-dg2-5/igt@gem_ccs@suspend-resume@linear-compressed-compfmt0-smem-lmem0.html
> 
>   * igt@gem_create@create-ext-cpu-access-sanity-check:
>     - shard-tglu:         NOTRUN -> [SKIP][4] ([i915#6335]) +1 other test skip
>    [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167645v1/shard-tglu-8/igt@gem_create@create-ext-cpu-access-sanity-check.html
> 
>   * igt@gem_create@create-ext-set-pat:
>     - shard-tglu-1:       NOTRUN -> [SKIP][5] ([i915#8562])
>    [5]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167645v1/shard-tglu-1/igt@gem_create@create-ext-set-pat.html
> 
>   * igt@gem_ctx_param@set-priority-not-supported:
>     - shard-tglu-1:       NOTRUN -> [SKIP][6] +46 other tests skip
>    [6]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167645v1/shard-tglu-1/igt@gem_ctx_param@set-priority-not-supported.html
> 
>   * igt@gem_ctx_persistence@heartbeat-stop:
>     - shard-dg2:          NOTRUN -> [SKIP][7] ([i915#8555])
>    [7]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167645v1/shard-dg2-6/igt@gem_ctx_persistence@heartbeat-stop.html
> 
>   * igt@gem_ctx_persistence@hostile:
>     - shard-snb:          NOTRUN -> [SKIP][8] ([i915#1099])
>    [8]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167645v1/shard-snb1/igt@gem_ctx_persistence@hostile.html
> 
>   * igt@gem_ctx_sseu@invalid-sseu:
>     - shard-rkl:          NOTRUN -> [SKIP][9] ([i915#280])
>    [9]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167645v1/shard-rkl-5/igt@gem_ctx_sseu@invalid-sseu.html
> 
>   * igt@gem_eio@in-flight-suspend:
>     - shard-glk10:        NOTRUN -> [INCOMPLETE][10] ([i915#13390])
>    [10]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167645v1/shard-glk10/igt@gem_eio@in-flight-suspend.html
> 
>   * igt@gem_exec_balancer@parallel-bb-first:
>     - shard-rkl:          NOTRUN -> [SKIP][11] ([i915#4525]) +1 other test skip
>    [11]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167645v1/shard-rkl-5/igt@gem_exec_balancer@parallel-bb-first.html
> 
>   * igt@gem_exec_balancer@parallel-contexts:
>     - shard-tglu-1:       NOTRUN -> [SKIP][12] ([i915#4525])
>    [12]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167645v1/shard-tglu-1/igt@gem_exec_balancer@parallel-contexts.html
> 
>   * igt@gem_exec_capture@capture-recoverable:
>     - shard-rkl:          NOTRUN -> [SKIP][13] ([i915#6344])
>    [13]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167645v1/shard-rkl-7/igt@gem_exec_capture@capture-recoverable.html
> 
>   * igt@gem_exec_reloc@basic-gtt-wc:
>     - shard-rkl:          NOTRUN -> [SKIP][14] ([i915#3281]) +2 other tests skip
>    [14]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167645v1/shard-rkl-5/igt@gem_exec_reloc@basic-gtt-wc.html
> 
>   * igt@gem_exec_reloc@basic-wc-read:
>     - shard-dg2:          NOTRUN -> [SKIP][15] ([i915#3281]) +4 other tests skip
>    [15]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167645v1/shard-dg2-6/igt@gem_exec_reloc@basic-wc-read.html
> 
>   * igt@gem_fenced_exec_thrash@no-spare-fences:
>     - shard-dg2:          NOTRUN -> [SKIP][16] ([i915#4860]) +1 other test skip
>    [16]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167645v1/shard-dg2-6/igt@gem_fenced_exec_thrash@no-spare-fences.html
> 
>   * igt@gem_huc_copy@huc-copy:
>     - shard-tglu:         NOTRUN -> [SKIP][17] ([i915#2190])
>    [17]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167645v1/shard-tglu-8/igt@gem_huc_copy@huc-copy.html
> 
>   * igt@gem_lmem_evict@dontneed-evict-race:
>     - shard-tglu:         NOTRUN -> [SKIP][18] ([i915#4613] / [i915#7582])
>    [18]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167645v1/shard-tglu-8/igt@gem_lmem_evict@dontneed-evict-race.html
> 
>   * igt@gem_lmem_swapping@heavy-random:
>     - shard-tglu-1:       NOTRUN -> [SKIP][19] ([i915#4613])
>    [19]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167645v1/shard-tglu-1/igt@gem_lmem_swapping@heavy-random.html
> 
>   * igt@gem_lmem_swapping@smem-oom:
>     - shard-tglu:         NOTRUN -> [SKIP][20] ([i915#4613]) +2 other tests skip
>    [20]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167645v1/shard-tglu-8/igt@gem_lmem_swapping@smem-oom.html
> 
>   * igt@gem_mmap_gtt@fault-concurrent-y:
>     - shard-dg2:          NOTRUN -> [SKIP][21] ([i915#4077]) +2 other tests skip
>    [21]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167645v1/shard-dg2-6/igt@gem_mmap_gtt@fault-concurrent-y.html
> 
>   * igt@gem_mmap_wc@pf-nonblock:
>     - shard-dg2:          NOTRUN -> [SKIP][22] ([i915#4083])
>    [22]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167645v1/shard-dg2-6/igt@gem_mmap_wc@pf-nonblock.html
> 
>   * igt@gem_readwrite@beyond-eob:
>     - shard-dg2:          NOTRUN -> [SKIP][23] ([i915#3282])
>    [23]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167645v1/shard-dg2-6/igt@gem_readwrite@beyond-eob.html
> 
>   * igt@gem_readwrite@new-obj:
>     - shard-rkl:          NOTRUN -> [SKIP][24] ([i915#3282])
>    [24]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167645v1/shard-rkl-5/igt@gem_readwrite@new-obj.html
> 
>   * igt@gem_render_copy@y-tiled-ccs-to-y-tiled-mc-ccs:
>     - shard-dg2:          NOTRUN -> [SKIP][25] ([i915#5190] / [i915#8428]) +1 other test skip
>    [25]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167645v1/shard-dg2-6/igt@gem_render_copy@y-tiled-ccs-to-y-tiled-mc-ccs.html
> 
>   * igt@gem_userptr_blits@unsync-overlap:
>     - shard-dg2:          NOTRUN -> [SKIP][26] ([i915#3297])
>    [26]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167645v1/shard-dg2-6/igt@gem_userptr_blits@unsync-overlap.html
> 
>   * igt@gem_workarounds@suspend-resume:
>     - shard-glk11:        NOTRUN -> [INCOMPLETE][27] ([i915#13356] / [i915#14586])
>    [27]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167645v1/shard-glk11/igt@gem_workarounds@suspend-resume.html
> 
>   * igt@gen7_exec_parse@chained-batch:
>     - shard-rkl:          NOTRUN -> [SKIP][28] ([i915#14544]) +5 other tests skip
>    [28]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167645v1/shard-rkl-6/igt@gen7_exec_parse@chained-batch.html
> 
>   * igt@gen9_exec_parse@basic-rejected:
>     - shard-rkl:          NOTRUN -> [SKIP][29] ([i915#2527])
>    [29]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167645v1/shard-rkl-5/igt@gen9_exec_parse@basic-rejected.html
> 
>   * igt@gen9_exec_parse@basic-rejected-ctx-param:
>     - shard-snb:          NOTRUN -> [SKIP][30] +59 other tests skip
>    [30]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167645v1/shard-snb1/igt@gen9_exec_parse@basic-rejected-ctx-param.html
>     - shard-tglu:         NOTRUN -> [SKIP][31] ([i915#2527] / [i915#2856])
>    [31]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167645v1/shard-tglu-8/igt@gen9_exec_parse@basic-rejected-ctx-param.html
> 
>   * igt@gen9_exec_parse@batch-without-end:
>     - shard-dg2:          NOTRUN -> [SKIP][32] ([i915#2856])
>    [32]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167645v1/shard-dg2-6/igt@gen9_exec_parse@batch-without-end.html
> 
>   * igt@i915_drm_fdinfo@most-busy-idle-check-all@vecs1:
>     - shard-dg2:          NOTRUN -> [SKIP][33] ([i915#14073]) +7 other tests skip
>    [33]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167645v1/shard-dg2-6/igt@i915_drm_fdinfo@most-busy-idle-check-all@vecs1.html
> 
>   * igt@i915_module_load@fault-injection@__uc_init:
>     - shard-tglu-1:       NOTRUN -> [SKIP][34] ([i915#15479]) +4 other tests skip
>    [34]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167645v1/shard-tglu-1/igt@i915_module_load@fault-injection@__uc_init.html
> 
>   * igt@i915_module_load@fault-injection@intel_connector_register:
>     - shard-tglu-1:       NOTRUN -> [ABORT][35] ([i915#15342]) +1 other test abort
>    [35]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167645v1/shard-tglu-1/igt@i915_module_load@fault-injection@intel_connector_register.html
> 
>   * igt@i915_pm_freq_api@freq-reset:
>     - shard-tglu-1:       NOTRUN -> [SKIP][36] ([i915#8399])
>    [36]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167645v1/shard-tglu-1/igt@i915_pm_freq_api@freq-reset.html
> 
>   * igt@i915_pm_rc6_residency@rc6-fence:
>     - shard-tglu:         NOTRUN -> [WARN][37] ([i915#13790] / [i915#2681]) +1 other test warn
>    [37]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167645v1/shard-tglu-8/igt@i915_pm_rc6_residency@rc6-fence.html
> 
>   * igt@i915_pm_sseu@full-enable:
>     - shard-dg2:          NOTRUN -> [SKIP][38] ([i915#4387])
>    [38]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167645v1/shard-dg2-6/igt@i915_pm_sseu@full-enable.html
> 
>   * igt@i915_query@hwconfig_table:
>     - shard-tglu:         NOTRUN -> [SKIP][39] ([i915#6245])
>    [39]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167645v1/shard-tglu-8/igt@i915_query@hwconfig_table.html
> 
>   * igt@i915_query@query-topology-known-pci-ids:
>     - shard-tglu:         NOTRUN -> [SKIP][40] ([i915#16109])
>    [40]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167645v1/shard-tglu-8/igt@i915_query@query-topology-known-pci-ids.html
> 
>   * igt@i915_suspend@fence-restore-tiled2untiled:
>     - shard-glk10:        NOTRUN -> [INCOMPLETE][41] ([i915#16182] / [i915#4817])
>    [41]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167645v1/shard-glk10/igt@i915_suspend@fence-restore-tiled2untiled.html
> 
>   * igt@intel_hwmon@hwmon-read:
>     - shard-tglu-1:       NOTRUN -> [SKIP][42] ([i915#7707])
>    [42]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167645v1/shard-tglu-1/igt@intel_hwmon@hwmon-read.html
> 
>   * igt@kms_async_flips@async-flip-suspend-resume:
>     - shard-tglu:         NOTRUN -> [ABORT][43] ([i915#15840]) +1 other test abort
>    [43]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167645v1/shard-tglu-8/igt@kms_async_flips@async-flip-suspend-resume.html
> 
>   * igt@kms_atomic@plane-primary-overlay-mutable-zpos:
>     - shard-tglu:         NOTRUN -> [SKIP][44] ([i915#9531])
>    [44]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167645v1/shard-tglu-8/igt@kms_atomic@plane-primary-overlay-mutable-zpos.html
> 
>   * igt@kms_atomic_transition@plane-all-modeset-transition-internal-panels:
>     - shard-tglu:         NOTRUN -> [SKIP][45] ([i915#1769] / [i915#3555])
>    [45]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167645v1/shard-tglu-8/igt@kms_atomic_transition@plane-all-modeset-transition-internal-panels.html
> 
>   * igt@kms_big_fb@4-tiled-16bpp-rotate-270:
>     - shard-dg2:          NOTRUN -> [SKIP][46] +3 other tests skip
>    [46]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167645v1/shard-dg2-6/igt@kms_big_fb@4-tiled-16bpp-rotate-270.html
> 
>   * igt@kms_big_fb@4-tiled-32bpp-rotate-0:
>     - shard-tglu-1:       NOTRUN -> [SKIP][47] ([i915#5286]) +2 other tests skip
>    [47]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167645v1/shard-tglu-1/igt@kms_big_fb@4-tiled-32bpp-rotate-0.html
> 
>   * igt@kms_big_fb@4-tiled-32bpp-rotate-180:
>     - shard-tglu:         NOTRUN -> [SKIP][48] ([i915#5286]) +2 other tests skip
>    [48]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167645v1/shard-tglu-8/igt@kms_big_fb@4-tiled-32bpp-rotate-180.html
> 
>   * igt@kms_big_fb@4-tiled-max-hw-stride-32bpp-rotate-0-hflip-async-flip:
>     - shard-rkl:          NOTRUN -> [SKIP][49] ([i915#5286]) +1 other test skip
>    [49]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167645v1/shard-rkl-5/igt@kms_big_fb@4-tiled-max-hw-stride-32bpp-rotate-0-hflip-async-flip.html
> 
>   * igt@kms_big_fb@4-tiled-max-hw-stride-64bpp-rotate-0-hflip:
>     - shard-mtlp:         [PASS][50] -> [FAIL][51] ([i915#15733] / [i915#5138]) +1 other test fail
>    [50]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18595/shard-mtlp-1/igt@kms_big_fb@4-tiled-max-hw-stride-64bpp-rotate-0-hflip.html
>    [51]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167645v1/shard-mtlp-8/igt@kms_big_fb@4-tiled-max-hw-stride-64bpp-rotate-0-hflip.html
> 
>   * igt@kms_big_fb@linear-16bpp-rotate-180:
>     - shard-tglu:         NOTRUN -> [FAIL][52] ([i915#16308]) +1 other test fail
>    [52]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167645v1/shard-tglu-8/igt@kms_big_fb@linear-16bpp-rotate-180.html
> 
>   * igt@kms_big_fb@linear-32bpp-rotate-180:
>     - shard-rkl:          NOTRUN -> [FAIL][53] ([i915#16308])
>    [53]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167645v1/shard-rkl-5/igt@kms_big_fb@linear-32bpp-rotate-180.html
> 
>   * igt@kms_big_fb@linear-8bpp-rotate-180:
>     - shard-glk:          NOTRUN -> [FAIL][54] ([i915#16308])
>    [54]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167645v1/shard-glk9/igt@kms_big_fb@linear-8bpp-rotate-180.html
> 
>   * igt@kms_big_fb@linear-8bpp-rotate-270:
>     - shard-rkl:          NOTRUN -> [SKIP][55] ([i915#3638]) +2 other tests skip
>    [55]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167645v1/shard-rkl-3/igt@kms_big_fb@linear-8bpp-rotate-270.html
> 
>   * igt@kms_big_fb@linear-max-hw-stride-32bpp-rotate-180:
>     - shard-glk10:        NOTRUN -> [FAIL][56] ([i915#16308])
>    [56]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167645v1/shard-glk10/igt@kms_big_fb@linear-max-hw-stride-32bpp-rotate-180.html
> 
>   * igt@kms_big_fb@linear-max-hw-stride-64bpp-rotate-0-hflip:
>     - shard-tglu:         NOTRUN -> [SKIP][57] ([i915#3828])
>    [57]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167645v1/shard-tglu-8/igt@kms_big_fb@linear-max-hw-stride-64bpp-rotate-0-hflip.html
> 
>   * igt@kms_big_fb@yf-tiled-64bpp-rotate-0:
>     - shard-dg2:          NOTRUN -> [SKIP][58] ([i915#4538] / [i915#5190]) +2 other tests skip
>    [58]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167645v1/shard-dg2-6/igt@kms_big_fb@yf-tiled-64bpp-rotate-0.html
> 
>   * igt@kms_ccs@bad-aux-stride-4-tiled-mtl-mc-ccs@pipe-a-hdmi-a-4:
>     - shard-dg1:          NOTRUN -> [SKIP][59] ([i915#6095]) +187 other tests skip
>    [59]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167645v1/shard-dg1-18/igt@kms_ccs@bad-aux-stride-4-tiled-mtl-mc-ccs@pipe-a-hdmi-a-4.html
> 
>   * igt@kms_ccs@bad-rotation-90-4-tiled-bmg-ccs:
>     - shard-tglu:         NOTRUN -> [SKIP][60] ([i915#12313]) +2 other tests skip
>    [60]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167645v1/shard-tglu-8/igt@kms_ccs@bad-rotation-90-4-tiled-bmg-ccs.html
> 
>   * igt@kms_ccs@bad-rotation-90-4-tiled-dg2-rc-ccs-cc@pipe-c-hdmi-a-2:
>     - shard-rkl:          NOTRUN -> [SKIP][61] ([i915#14098] / [i915#6095]) +38 other tests skip
>    [61]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167645v1/shard-rkl-3/igt@kms_ccs@bad-rotation-90-4-tiled-dg2-rc-ccs-cc@pipe-c-hdmi-a-2.html
> 
>   * igt@kms_ccs@crc-primary-basic-4-tiled-dg2-rc-ccs@pipe-b-hdmi-a-1:
>     - shard-tglu:         NOTRUN -> [SKIP][62] ([i915#6095]) +29 other tests skip
>    [62]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167645v1/shard-tglu-8/igt@kms_ccs@crc-primary-basic-4-tiled-dg2-rc-ccs@pipe-b-hdmi-a-1.html
> 
>   * igt@kms_ccs@crc-primary-basic-4-tiled-mtl-mc-ccs:
>     - shard-tglu-1:       NOTRUN -> [SKIP][63] ([i915#6095]) +24 other tests skip
>    [63]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167645v1/shard-tglu-1/igt@kms_ccs@crc-primary-basic-4-tiled-mtl-mc-ccs.html
> 
>   * igt@kms_ccs@crc-primary-basic-yf-tiled-ccs@pipe-b-hdmi-a-3:
>     - shard-dg2:          NOTRUN -> [SKIP][64] ([i915#10307] / [i915#6095]) +59 other tests skip
>    [64]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167645v1/shard-dg2-6/igt@kms_ccs@crc-primary-basic-yf-tiled-ccs@pipe-b-hdmi-a-3.html
> 
>   * igt@kms_ccs@crc-primary-rotation-180-4-tiled-mtl-mc-ccs@pipe-c-hdmi-a-2:
>     - shard-glk:          NOTRUN -> [SKIP][65] +175 other tests skip
>    [65]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167645v1/shard-glk2/igt@kms_ccs@crc-primary-rotation-180-4-tiled-mtl-mc-ccs@pipe-c-hdmi-a-2.html
> 
>   * igt@kms_ccs@crc-primary-suspend-4-tiled-lnl-ccs:
>     - shard-rkl:          NOTRUN -> [SKIP][66] ([i915#12805])
>    [66]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167645v1/shard-rkl-5/igt@kms_ccs@crc-primary-suspend-4-tiled-lnl-ccs.html
> 
>   * igt@kms_ccs@crc-primary-suspend-y-tiled-ccs@pipe-a-hdmi-a-1:
>     - shard-glk:          NOTRUN -> [INCOMPLETE][67] ([i915#15582] / [i915#16205]) +1 other test incomplete
>    [67]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167645v1/shard-glk2/igt@kms_ccs@crc-primary-suspend-y-tiled-ccs@pipe-a-hdmi-a-1.html
> 
>   * igt@kms_ccs@crc-primary-suspend-y-tiled-gen12-mc-ccs@pipe-b-hdmi-a-1:
>     - shard-dg2:          NOTRUN -> [SKIP][68] ([i915#6095]) +3 other tests skip
>    [68]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167645v1/shard-dg2-4/igt@kms_ccs@crc-primary-suspend-y-tiled-gen12-mc-ccs@pipe-b-hdmi-a-1.html
> 
>   * igt@kms_ccs@random-ccs-data-4-tiled-bmg-ccs:
>     - shard-dg2:          NOTRUN -> [SKIP][69] ([i915#12313])
>    [69]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167645v1/shard-dg2-6/igt@kms_ccs@random-ccs-data-4-tiled-bmg-ccs.html
> 
>   * igt@kms_ccs@random-ccs-data-4-tiled-lnl-ccs:
>     - shard-rkl:          NOTRUN -> [SKIP][70] ([i915#12313])
>    [70]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167645v1/shard-rkl-7/igt@kms_ccs@random-ccs-data-4-tiled-lnl-ccs.html
> 
>   * igt@kms_ccs@random-ccs-data-y-tiled-ccs@pipe-b-hdmi-a-1:
>     - shard-rkl:          NOTRUN -> [SKIP][71] ([i915#6095]) +63 other tests skip
>    [71]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167645v1/shard-rkl-8/igt@kms_ccs@random-ccs-data-y-tiled-ccs@pipe-b-hdmi-a-1.html
> 
>   * igt@kms_cdclk@mode-transition@pipe-d-hdmi-a-3:
>     - shard-dg2:          NOTRUN -> [SKIP][72] ([i915#13781]) +3 other tests skip
>    [72]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167645v1/shard-dg2-8/igt@kms_cdclk@mode-transition@pipe-d-hdmi-a-3.html
> 
>   * igt@kms_chamelium_edid@hdmi-edid-read:
>     - shard-dg2:          NOTRUN -> [SKIP][73] ([i915#11151] / [i915#7828])
>    [73]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167645v1/shard-dg2-6/igt@kms_chamelium_edid@hdmi-edid-read.html
> 
>   * igt@kms_chamelium_hpd@dp-hpd-storm-disable:
>     - shard-tglu:         NOTRUN -> [SKIP][74] ([i915#11151] / [i915#7828]) +6 other tests skip
>    [74]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167645v1/shard-tglu-8/igt@kms_chamelium_hpd@dp-hpd-storm-disable.html
> 
>   * igt@kms_chamelium_hpd@vga-hpd-fast:
>     - shard-rkl:          NOTRUN -> [SKIP][75] ([i915#11151] / [i915#7828]) +4 other tests skip
>    [75]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167645v1/shard-rkl-7/igt@kms_chamelium_hpd@vga-hpd-fast.html
> 
>   * igt@kms_chamelium_hpd@vga-hpd-without-ddc:
>     - shard-tglu-1:       NOTRUN -> [SKIP][76] ([i915#11151] / [i915#7828])
>    [76]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167645v1/shard-tglu-1/igt@kms_chamelium_hpd@vga-hpd-without-ddc.html
> 
>   * igt@kms_content_protection@atomic:
>     - shard-tglu:         NOTRUN -> [SKIP][77] ([i915#15865]) +1 other test skip
>    [77]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167645v1/shard-tglu-8/igt@kms_content_protection@atomic.html
> 
>   * igt@kms_content_protection@dp-mst-lic-type-0:
>     - shard-tglu:         NOTRUN -> [SKIP][78] ([i915#15330] / [i915#3116] / [i915#3299])
>    [78]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167645v1/shard-tglu-8/igt@kms_content_protection@dp-mst-lic-type-0.html
> 
>   * igt@kms_content_protection@dp-mst-type-0:
>     - shard-rkl:          NOTRUN -> [SKIP][79] ([i915#15330] / [i915#3116])
>    [79]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167645v1/shard-rkl-5/igt@kms_content_protection@dp-mst-type-0.html
> 
>   * igt@kms_content_protection@dp-mst-type-1-suspend-resume:
>     - shard-dg2:          NOTRUN -> [SKIP][80] ([i915#15330])
>    [80]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167645v1/shard-dg2-6/igt@kms_content_protection@dp-mst-type-1-suspend-resume.html
> 
>   * igt@kms_content_protection@type1:
>     - shard-tglu-1:       NOTRUN -> [SKIP][81] ([i915#15865]) +1 other test skip
>    [81]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167645v1/shard-tglu-1/igt@kms_content_protection@type1.html
> 
>   * igt@kms_cursor_crc@cursor-offscreen-512x170:
>     - shard-tglu:         NOTRUN -> [SKIP][82] ([i915#13049]) +1 other test skip
>    [82]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167645v1/shard-tglu-8/igt@kms_cursor_crc@cursor-offscreen-512x170.html
> 
>   * igt@kms_cursor_crc@cursor-onscreen-128x42:
>     - shard-tglu:         [PASS][83] -> [FAIL][84] ([i915#13566]) +1 other test fail
>    [83]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18595/shard-tglu-2/igt@kms_cursor_crc@cursor-onscreen-128x42.html
>    [84]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167645v1/shard-tglu-7/igt@kms_cursor_crc@cursor-onscreen-128x42.html
> 
>   * igt@kms_cursor_crc@cursor-onscreen-32x32:
>     - shard-tglu-1:       NOTRUN -> [SKIP][85] ([i915#3555]) +2 other tests skip
>    [85]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167645v1/shard-tglu-1/igt@kms_cursor_crc@cursor-onscreen-32x32.html
> 
>   * igt@kms_cursor_crc@cursor-onscreen-64x21@pipe-a-hdmi-a-1:
>     - shard-tglu-1:       NOTRUN -> [FAIL][86] ([i915#13566]) +1 other test fail
>    [86]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167645v1/shard-tglu-1/igt@kms_cursor_crc@cursor-onscreen-64x21@pipe-a-hdmi-a-1.html
> 
>   * igt@kms_cursor_crc@cursor-random-256x85@pipe-a-hdmi-a-2:
>     - shard-rkl:          NOTRUN -> [FAIL][87] ([i915#13566]) +3 other tests fail
>    [87]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167645v1/shard-rkl-7/igt@kms_cursor_crc@cursor-random-256x85@pipe-a-hdmi-a-2.html
> 
>   * igt@kms_cursor_crc@cursor-rapid-movement-max-size:
>     - shard-tglu:         NOTRUN -> [SKIP][88] ([i915#3555]) +2 other tests skip
>    [88]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167645v1/shard-tglu-8/igt@kms_cursor_crc@cursor-rapid-movement-max-size.html
> 
>   * igt@kms_cursor_crc@cursor-suspend:
>     - shard-rkl:          [PASS][89] -> [INCOMPLETE][90] ([i915#12358] / [i915#14152])
>    [89]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18595/shard-rkl-2/igt@kms_cursor_crc@cursor-suspend.html
>    [90]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167645v1/shard-rkl-3/igt@kms_cursor_crc@cursor-suspend.html
> 
>   * igt@kms_cursor_crc@cursor-suspend@pipe-a-hdmi-a-2:
>     - shard-rkl:          NOTRUN -> [INCOMPLETE][91] ([i915#12358] / [i915#14152])
>    [91]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167645v1/shard-rkl-3/igt@kms_cursor_crc@cursor-suspend@pipe-a-hdmi-a-2.html
> 
>   * igt@kms_cursor_legacy@2x-nonblocking-modeset-vs-cursor-atomic:
>     - shard-dg2:          NOTRUN -> [SKIP][92] ([i915#13046] / [i915#5354])
>    [92]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167645v1/shard-dg2-6/igt@kms_cursor_legacy@2x-nonblocking-modeset-vs-cursor-atomic.html
> 
>   * igt@kms_cursor_legacy@basic-busy-flip-before-cursor-atomic:
>     - shard-tglu-1:       NOTRUN -> [SKIP][93] ([i915#4103])
>    [93]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167645v1/shard-tglu-1/igt@kms_cursor_legacy@basic-busy-flip-before-cursor-atomic.html
> 
>   * igt@kms_cursor_legacy@basic-busy-flip-before-cursor-legacy:
>     - shard-dg2:          NOTRUN -> [SKIP][94] ([i915#4103])
>    [94]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167645v1/shard-dg2-6/igt@kms_cursor_legacy@basic-busy-flip-before-cursor-legacy.html
> 
>   * igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions-varying-size:
>     - shard-glk:          NOTRUN -> [FAIL][95] ([i915#15804])
>    [95]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167645v1/shard-glk2/igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions-varying-size.html
> 
>   * igt@kms_cursor_legacy@modeset-atomic-cursor-hotspot:
>     - shard-tglu-1:       NOTRUN -> [SKIP][96] ([i915#9067])
>    [96]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167645v1/shard-tglu-1/igt@kms_cursor_legacy@modeset-atomic-cursor-hotspot.html
> 
>   * igt@kms_dirtyfb@drrs-dirtyfb-ioctl:
>     - shard-rkl:          NOTRUN -> [SKIP][97] ([i915#9723])
>    [97]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167645v1/shard-rkl-7/igt@kms_dirtyfb@drrs-dirtyfb-ioctl.html
> 
>   * igt@kms_dp_aux_dev@basic:
>     - shard-tglu:         NOTRUN -> [SKIP][98] ([i915#1257])
>    [98]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167645v1/shard-tglu-8/igt@kms_dp_aux_dev@basic.html
> 
>   * igt@kms_dp_link_training@non-uhbr-mst:
>     - shard-tglu:         NOTRUN -> [SKIP][99] ([i915#13749])
>    [99]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167645v1/shard-tglu-8/igt@kms_dp_link_training@non-uhbr-mst.html
> 
>   * igt@kms_dp_link_training@non-uhbr-sst:
>     - shard-tglu-1:       NOTRUN -> [SKIP][100] ([i915#13749])
>    [100]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167645v1/shard-tglu-1/igt@kms_dp_link_training@non-uhbr-sst.html
> 
>   * igt@kms_dp_link_training@uhbr-sst:
>     - shard-rkl:          NOTRUN -> [SKIP][101] ([i915#13748])
>    [101]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167645v1/shard-rkl-3/igt@kms_dp_link_training@uhbr-sst.html
> 
>   * igt@kms_dsc@dsc-with-bpc:
>     - shard-tglu-1:       NOTRUN -> [SKIP][102] ([i915#3555] / [i915#3840])
>    [102]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167645v1/shard-tglu-1/igt@kms_dsc@dsc-with-bpc.html
> 
>   * igt@kms_dsc@dsc-with-formats:
>     - shard-tglu:         NOTRUN -> [SKIP][103] ([i915#3555] / [i915#3840])
>    [103]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167645v1/shard-tglu-8/igt@kms_dsc@dsc-with-formats.html
> 
>   * igt@kms_dsc@dsc-with-output-formats:
>     - shard-rkl:          NOTRUN -> [SKIP][104] ([i915#3555] / [i915#3840])
>    [104]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167645v1/shard-rkl-7/igt@kms_dsc@dsc-with-output-formats.html
> 
>   * igt@kms_dsc@dsc-with-output-formats-with-bpc:
>     - shard-tglu:         NOTRUN -> [SKIP][105] ([i915#3840] / [i915#9053])
>    [105]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167645v1/shard-tglu-8/igt@kms_dsc@dsc-with-output-formats-with-bpc.html
> 
>   * igt@kms_fbcon_fbt@psr:
>     - shard-tglu:         NOTRUN -> [SKIP][106] ([i915#3469])
>    [106]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167645v1/shard-tglu-8/igt@kms_fbcon_fbt@psr.html
> 
>   * igt@kms_feature_discovery@display-4x:
>     - shard-tglu-1:       NOTRUN -> [SKIP][107] ([i915#16081])
>    [107]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167645v1/shard-tglu-1/igt@kms_feature_discovery@display-4x.html
> 
>   * igt@kms_flip@2x-blocking-wf_vblank:
>     - shard-rkl:          NOTRUN -> [SKIP][108] ([i915#9934]) +4 other tests skip
>    [108]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167645v1/shard-rkl-7/igt@kms_flip@2x-blocking-wf_vblank.html
> 
>   * igt@kms_flip@2x-modeset-vs-vblank-race:
>     - shard-tglu-1:       NOTRUN -> [SKIP][109] ([i915#3637] / [i915#9934]) +4 other tests skip
>    [109]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167645v1/shard-tglu-1/igt@kms_flip@2x-modeset-vs-vblank-race.html
> 
>   * igt@kms_flip@2x-nonexisting-fb-interruptible:
>     - shard-dg2:          NOTRUN -> [SKIP][110] ([i915#9934]) +1 other test skip
>    [110]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167645v1/shard-dg2-6/igt@kms_flip@2x-nonexisting-fb-interruptible.html
> 
>   * igt@kms_flip@2x-plain-flip-fb-recreate:
>     - shard-tglu:         NOTRUN -> [SKIP][111] ([i915#3637] / [i915#9934]) +2 other tests skip
>    [111]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167645v1/shard-tglu-8/igt@kms_flip@2x-plain-flip-fb-recreate.html
> 
>   * igt@kms_flip@flip-vs-expired-vblank:
>     - shard-dg1:          [PASS][112] -> [FAIL][113] ([i915#13027])
>    [112]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18595/shard-dg1-13/igt@kms_flip@flip-vs-expired-vblank.html
>    [113]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167645v1/shard-dg1-15/igt@kms_flip@flip-vs-expired-vblank.html
> 
>   * igt@kms_flip@flip-vs-expired-vblank@b-hdmi-a1:
>     - shard-dg1:          NOTRUN -> [FAIL][114] ([i915#13027])
>    [114]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167645v1/shard-dg1-15/igt@kms_flip@flip-vs-expired-vblank@b-hdmi-a1.html
> 
>   * igt@kms_flip_scaled_crc@flip-32bpp-4tile-to-64bpp-4tile-upscaling:
>     - shard-tglu:         NOTRUN -> [SKIP][115] ([i915#15643])
>    [115]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167645v1/shard-tglu-8/igt@kms_flip_scaled_crc@flip-32bpp-4tile-to-64bpp-4tile-upscaling.html
> 
>   * igt@kms_flip_scaled_crc@flip-64bpp-4tile-to-16bpp-4tile-upscaling:
>     - shard-rkl:          NOTRUN -> [SKIP][116] ([i915#15643]) +2 other tests skip
>    [116]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167645v1/shard-rkl-7/igt@kms_flip_scaled_crc@flip-64bpp-4tile-to-16bpp-4tile-upscaling.html
> 
>   * igt@kms_flip_scaled_crc@flip-64bpp-yftile-to-32bpp-yftile-upscaling:
>     - shard-dg2:          NOTRUN -> [SKIP][117] ([i915#15643])
>    [117]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167645v1/shard-dg2-6/igt@kms_flip_scaled_crc@flip-64bpp-yftile-to-32bpp-yftile-upscaling.html
> 
>   * igt@kms_frontbuffer_tracking@fbc-2p-scndscrn-pri-shrfb-draw-mmap-gtt:
>     - shard-rkl:          NOTRUN -> [SKIP][118] ([i915#1825]) +2 other tests skip
>    [118]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167645v1/shard-rkl-5/igt@kms_frontbuffer_tracking@fbc-2p-scndscrn-pri-shrfb-draw-mmap-gtt.html
> 
>   * igt@kms_frontbuffer_tracking@fbchdr-1p-primscrn-pri-shrfb-draw-mmap-wc:
>     - shard-dg2:          NOTRUN -> [SKIP][119] ([i915#15990]) +4 other tests skip
>    [119]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167645v1/shard-dg2-6/igt@kms_frontbuffer_tracking@fbchdr-1p-primscrn-pri-shrfb-draw-mmap-wc.html
> 
>   * igt@kms_frontbuffer_tracking@fbchdr-1p-primscrn-spr-indfb-draw-pwrite:
>     - shard-tglu:         NOTRUN -> [SKIP][120] ([i915#15989]) +12 other tests skip
>    [120]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167645v1/shard-tglu-8/igt@kms_frontbuffer_tracking@fbchdr-1p-primscrn-spr-indfb-draw-pwrite.html
> 
>   * igt@kms_frontbuffer_tracking@fbchdr-1p-primscrn-spr-indfb-onoff:
>     - shard-tglu-1:       NOTRUN -> [SKIP][121] ([i915#15989]) +9 other tests skip
>    [121]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167645v1/shard-tglu-1/igt@kms_frontbuffer_tracking@fbchdr-1p-primscrn-spr-indfb-onoff.html
> 
>   * igt@kms_frontbuffer_tracking@fbchdr-1p-rte:
>     - shard-rkl:          [PASS][122] -> [SKIP][123] ([i915#15989])
>    [122]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18595/shard-rkl-1/igt@kms_frontbuffer_tracking@fbchdr-1p-rte.html
>    [123]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167645v1/shard-rkl-7/igt@kms_frontbuffer_tracking@fbchdr-1p-rte.html
> 
>   * igt@kms_frontbuffer_tracking@fbchdr-2p-scndscrn-cur-indfb-draw-pwrite:
>     - shard-dg2:          NOTRUN -> [SKIP][124] ([i915#15991]) +5 other tests skip
>    [124]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167645v1/shard-dg2-6/igt@kms_frontbuffer_tracking@fbchdr-2p-scndscrn-cur-indfb-draw-pwrite.html
> 
>   * igt@kms_frontbuffer_tracking@fbchdr-rgb101010-draw-render:
>     - shard-dg2:          NOTRUN -> [SKIP][125] ([i915#15989]) +4 other tests skip
>    [125]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167645v1/shard-dg2-6/igt@kms_frontbuffer_tracking@fbchdr-rgb101010-draw-render.html
> 
>   * igt@kms_frontbuffer_tracking@fbchdr-tiling-4:
>     - shard-tglu-1:       NOTRUN -> [SKIP][126] ([i915#5439])
>    [126]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167645v1/shard-tglu-1/igt@kms_frontbuffer_tracking@fbchdr-tiling-4.html
> 
>   * igt@kms_frontbuffer_tracking@fbcpsr-1p-primscrn-cur-indfb-draw-render:
>     - shard-glk10:        NOTRUN -> [SKIP][127] +171 other tests skip
>    [127]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167645v1/shard-glk10/igt@kms_frontbuffer_tracking@fbcpsr-1p-primscrn-cur-indfb-draw-render.html
> 
>   * igt@kms_frontbuffer_tracking@fbcpsr-2p-scndscrn-spr-indfb-fullscreen:
>     - shard-tglu:         NOTRUN -> [SKIP][128] +77 other tests skip
>    [128]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167645v1/shard-tglu-8/igt@kms_frontbuffer_tracking@fbcpsr-2p-scndscrn-spr-indfb-fullscreen.html
> 
>   * igt@kms_frontbuffer_tracking@fbcpsr-tiling-4:
>     - shard-rkl:          NOTRUN -> [SKIP][129] ([i915#5439])
>    [129]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167645v1/shard-rkl-7/igt@kms_frontbuffer_tracking@fbcpsr-tiling-4.html
> 
>   * igt@kms_frontbuffer_tracking@fbcpsrhdr-1p-indfb-fliptrack-mmap-gtt:
>     - shard-tglu:         NOTRUN -> [SKIP][130] ([i915#15102]) +32 other tests skip
>    [130]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167645v1/shard-tglu-8/igt@kms_frontbuffer_tracking@fbcpsrhdr-1p-indfb-fliptrack-mmap-gtt.html
> 
>   * igt@kms_frontbuffer_tracking@fbcpsrhdr-1p-primscrn-spr-indfb-draw-mmap-gtt:
>     - shard-rkl:          NOTRUN -> [SKIP][131] ([i915#15102]) +11 other tests skip
>    [131]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167645v1/shard-rkl-5/igt@kms_frontbuffer_tracking@fbcpsrhdr-1p-primscrn-spr-indfb-draw-mmap-gtt.html
> 
>   * igt@kms_frontbuffer_tracking@fbcpsrhdr-rgb565-draw-render:
>     - shard-dg2:          NOTRUN -> [SKIP][132] ([i915#15102]) +9 other tests skip
>    [132]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167645v1/shard-dg2-6/igt@kms_frontbuffer_tracking@fbcpsrhdr-rgb565-draw-render.html
> 
>   * igt@kms_frontbuffer_tracking@hdr-1p-primscrn-pri-shrfb-draw-pwrite:
>     - shard-glk:          [PASS][133] -> [SKIP][134] +14 other tests skip
>    [133]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18595/shard-glk8/igt@kms_frontbuffer_tracking@hdr-1p-primscrn-pri-shrfb-draw-pwrite.html
>    [134]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167645v1/shard-glk2/igt@kms_frontbuffer_tracking@hdr-1p-primscrn-pri-shrfb-draw-pwrite.html
>     - shard-dg2:          [PASS][135] -> [SKIP][136] ([i915#15989]) +2 other tests skip
>    [135]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18595/shard-dg2-10/igt@kms_frontbuffer_tracking@hdr-1p-primscrn-pri-shrfb-draw-pwrite.html
>    [136]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167645v1/shard-dg2-4/igt@kms_frontbuffer_tracking@hdr-1p-primscrn-pri-shrfb-draw-pwrite.html
> 
>   * igt@kms_frontbuffer_tracking@hdr-1p-primscrn-spr-indfb-draw-pwrite:
>     - shard-rkl:          NOTRUN -> [SKIP][137] ([i915#15989]) +9 other tests skip
>    [137]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167645v1/shard-rkl-5/igt@kms_frontbuffer_tracking@hdr-1p-primscrn-spr-indfb-draw-pwrite.html
> 
>   * igt@kms_frontbuffer_tracking@hdr-2p-primscrn-pri-shrfb-draw-mmap-cpu:
>     - shard-rkl:          NOTRUN -> [SKIP][138] +42 other tests skip
>    [138]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167645v1/shard-rkl-5/igt@kms_frontbuffer_tracking@hdr-2p-primscrn-pri-shrfb-draw-mmap-cpu.html
> 
>   * igt@kms_frontbuffer_tracking@psr-1p-primscrn-shrfb-msflip-blt:
>     - shard-rkl:          NOTRUN -> [SKIP][139] ([i915#15102] / [i915#3023]) +7 other tests skip
>    [139]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167645v1/shard-rkl-5/igt@kms_frontbuffer_tracking@psr-1p-primscrn-shrfb-msflip-blt.html
> 
>   * igt@kms_frontbuffer_tracking@psr-2p-primscrn-pri-shrfb-draw-mmap-gtt:
>     - shard-dg2:          NOTRUN -> [SKIP][140] ([i915#15990] / [i915#8708]) +6 other tests skip
>    [140]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167645v1/shard-dg2-6/igt@kms_frontbuffer_tracking@psr-2p-primscrn-pri-shrfb-draw-mmap-gtt.html
> 
>   * igt@kms_frontbuffer_tracking@psr-2p-scndscrn-cur-indfb-move:
>     - shard-dg2:          NOTRUN -> [SKIP][141] ([i915#15991] / [i915#5354]) +3 other tests skip
>    [141]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167645v1/shard-dg2-6/igt@kms_frontbuffer_tracking@psr-2p-scndscrn-cur-indfb-move.html
> 
>   * igt@kms_frontbuffer_tracking@psr-suspend:
>     - shard-tglu-1:       NOTRUN -> [SKIP][142] ([i915#15102]) +18 other tests skip
>    [142]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167645v1/shard-tglu-1/igt@kms_frontbuffer_tracking@psr-suspend.html
> 
>   * igt@kms_hdr@bpc-switch-suspend@pipe-a-hdmi-a-4-xrgb2101010:
>     - shard-dg1:          NOTRUN -> [SKIP][143] ([i915#16012]) +5 other tests skip
>    [143]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167645v1/shard-dg1-19/igt@kms_hdr@bpc-switch-suspend@pipe-a-hdmi-a-4-xrgb2101010.html
> 
>   * igt@kms_hdr@brightness-with-hdr@pipe-a-hdmi-a-1-xrgb2101010:
>     - shard-tglu-1:       NOTRUN -> [SKIP][144] ([i915#16011]) +2 other tests skip
>    [144]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167645v1/shard-tglu-1/igt@kms_hdr@brightness-with-hdr@pipe-a-hdmi-a-1-xrgb2101010.html
> 
>   * igt@kms_hdr@invalid-hdr@pipe-a-hdmi-a-3-xrgb16161616f:
>     - shard-dg2:          NOTRUN -> [SKIP][145] ([i915#16012]) +1 other test skip
>    [145]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167645v1/shard-dg2-8/igt@kms_hdr@invalid-hdr@pipe-a-hdmi-a-3-xrgb16161616f.html
> 
>   * igt@kms_hdr@invalid-metadata-sizes:
>     - shard-dg2:          [PASS][146] -> [SKIP][147] ([i915#16011] / [i915#3555] / [i915#8228])
>    [146]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18595/shard-dg2-10/igt@kms_hdr@invalid-metadata-sizes.html
>    [147]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167645v1/shard-dg2-4/igt@kms_hdr@invalid-metadata-sizes.html
>     - shard-tglu:         NOTRUN -> [SKIP][148] ([i915#16011] / [i915#3555] / [i915#8228])
>    [148]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167645v1/shard-tglu-8/igt@kms_hdr@invalid-metadata-sizes.html
> 
>   * igt@kms_hdr@invalid-metadata-sizes@pipe-a-hdmi-a-1-xrgb2101010:
>     - shard-tglu:         NOTRUN -> [SKIP][149] ([i915#16011]) +1 other test skip
>    [149]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167645v1/shard-tglu-8/igt@kms_hdr@invalid-metadata-sizes@pipe-a-hdmi-a-1-xrgb2101010.html
>     - shard-dg2:          NOTRUN -> [SKIP][150] ([i915#16011]) +1 other test skip
>    [150]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167645v1/shard-dg2-4/igt@kms_hdr@invalid-metadata-sizes@pipe-a-hdmi-a-1-xrgb2101010.html
> 
>   * igt@kms_hdr@invalid-metadata-sizes@pipe-a-hdmi-a-2-xrgb2101010:
>     - shard-rkl:          NOTRUN -> [SKIP][151] ([i915#16011]) +9 other tests skip
>    [151]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167645v1/shard-rkl-7/igt@kms_hdr@invalid-metadata-sizes@pipe-a-hdmi-a-2-xrgb2101010.html
> 
>   * igt@kms_hdr@static-toggle-dpms:
>     - shard-rkl:          NOTRUN -> [SKIP][152] ([i915#16011] / [i915#3555] / [i915#8228])
>    [152]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167645v1/shard-rkl-3/igt@kms_hdr@static-toggle-dpms.html
> 
>   * igt@kms_hdr@static-toggle-suspend@pipe-a-hdmi-a-2-xrgb2101010:
>     - shard-glk11:        NOTRUN -> [SKIP][153] +56 other tests skip
>    [153]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167645v1/shard-glk11/igt@kms_hdr@static-toggle-suspend@pipe-a-hdmi-a-2-xrgb2101010.html
> 
>   * igt@kms_hdr@static-toggle@pipe-a-hdmi-a-1-xrgb16161616f:
>     - shard-dg1:          NOTRUN -> [SKIP][154] ([i915#16011]) +5 other tests skip
>    [154]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167645v1/shard-dg1-15/igt@kms_hdr@static-toggle@pipe-a-hdmi-a-1-xrgb16161616f.html
> 
>   * igt@kms_joiner@basic-big-joiner:
>     - shard-tglu:         NOTRUN -> [SKIP][155] ([i915#15460])
>    [155]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167645v1/shard-tglu-8/igt@kms_joiner@basic-big-joiner.html
> 
>   * igt@kms_joiner@invalid-modeset-big-joiner:
>     - shard-rkl:          NOTRUN -> [SKIP][156] ([i915#15460])
>    [156]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167645v1/shard-rkl-7/igt@kms_joiner@invalid-modeset-big-joiner.html
> 
>   * igt@kms_joiner@invalid-modeset-force-big-joiner:
>     - shard-rkl:          NOTRUN -> [SKIP][157] ([i915#15459])
>    [157]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167645v1/shard-rkl-5/igt@kms_joiner@invalid-modeset-force-big-joiner.html
> 
>   * igt@kms_panel_fitting@atomic-fastset:
>     - shard-rkl:          NOTRUN -> [SKIP][158] ([i915#6301])
>    [158]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167645v1/shard-rkl-5/igt@kms_panel_fitting@atomic-fastset.html
> 
>   * igt@kms_panel_fitting@legacy:
>     - shard-dg2:          NOTRUN -> [SKIP][159] ([i915#6301])
>    [159]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167645v1/shard-dg2-6/igt@kms_panel_fitting@legacy.html
> 
>   * igt@kms_pipe_crc_basic@suspend-read-crc@pipe-a-hdmi-a-1:
>     - shard-glk:          NOTRUN -> [INCOMPLETE][160] ([i915#12756] / [i915#13409] / [i915#13476]) +1 other test incomplete
>    [160]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167645v1/shard-glk2/igt@kms_pipe_crc_basic@suspend-read-crc@pipe-a-hdmi-a-1.html
> 
>   * igt@kms_plane@pixel-format-4-tiled-dg2-rc-ccs-modifier@pipe-b-plane-5:
>     - shard-dg2:          NOTRUN -> [SKIP][161] ([i915#15608]) +1 other test skip
>    [161]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167645v1/shard-dg2-6/igt@kms_plane@pixel-format-4-tiled-dg2-rc-ccs-modifier@pipe-b-plane-5.html
> 
>   * igt@kms_plane@pixel-format-4-tiled-lnl-ccs-modifier-source-clamping:
>     - shard-tglu-1:       NOTRUN -> [SKIP][162] ([i915#15709])
>    [162]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167645v1/shard-tglu-1/igt@kms_plane@pixel-format-4-tiled-lnl-ccs-modifier-source-clamping.html
> 
>   * igt@kms_plane@pixel-format-4-tiled-mtl-mc-ccs-modifier:
>     - shard-tglu:         NOTRUN -> [SKIP][163] ([i915#15709]) +1 other test skip
>    [163]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167645v1/shard-tglu-8/igt@kms_plane@pixel-format-4-tiled-mtl-mc-ccs-modifier.html
> 
>   * igt@kms_plane@pixel-format-4-tiled-mtl-rc-ccs-cc-modifier:
>     - shard-rkl:          NOTRUN -> [SKIP][164] ([i915#15709]) +1 other test skip
>    [164]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167645v1/shard-rkl-5/igt@kms_plane@pixel-format-4-tiled-mtl-rc-ccs-cc-modifier.html
> 
>   * igt@kms_plane@pixel-format-x-tiled-modifier@pipe-b-plane-7:
>     - shard-tglu-1:       NOTRUN -> [SKIP][165] ([i915#15608]) +1 other test skip
>    [165]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167645v1/shard-tglu-1/igt@kms_plane@pixel-format-x-tiled-modifier@pipe-b-plane-7.html
> 
>   * igt@kms_plane@pixel-format-yf-tiled-ccs-modifier-source-clamping:
>     - shard-dg2:          NOTRUN -> [SKIP][166] ([i915#15709])
>    [166]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167645v1/shard-dg2-6/igt@kms_plane@pixel-format-yf-tiled-ccs-modifier-source-clamping.html
> 
>   * igt@kms_plane@planar-pixel-format-settings@nv12-tile4-src-y:
>     - shard-tglu:         NOTRUN -> [SKIP][167] ([i915#16112])
>    [167]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167645v1/shard-tglu-8/igt@kms_plane@planar-pixel-format-settings@nv12-tile4-src-y.html
> 
>   * igt@kms_plane_lowres@tiling-yf:
>     - shard-rkl:          NOTRUN -> [SKIP][168] ([i915#3555]) +1 other test skip
>    [168]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167645v1/shard-rkl-5/igt@kms_plane_lowres@tiling-yf.html
> 
>   * igt@kms_plane_multiple@2x-tiling-x:
>     - shard-tglu:         NOTRUN -> [SKIP][169] ([i915#13958])
>    [169]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167645v1/shard-tglu-8/igt@kms_plane_multiple@2x-tiling-x.html
> 
>   * igt@kms_plane_scaling@plane-downscale-factor-0-5-with-rotation@pipe-b:
>     - shard-rkl:          NOTRUN -> [SKIP][170] ([i915#15329]) +7 other tests skip
>    [170]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167645v1/shard-rkl-5/igt@kms_plane_scaling@plane-downscale-factor-0-5-with-rotation@pipe-b.html
> 
>   * igt@kms_plane_scaling@plane-upscale-factor-0-25-with-rotation@pipe-d:
>     - shard-tglu:         NOTRUN -> [SKIP][171] ([i915#15329]) +4 other tests skip
>    [171]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167645v1/shard-tglu-8/igt@kms_plane_scaling@plane-upscale-factor-0-25-with-rotation@pipe-d.html
> 
>   * igt@kms_pm_backlight@brightness-with-dpms:
>     - shard-rkl:          NOTRUN -> [SKIP][172] ([i915#12343])
>    [172]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167645v1/shard-rkl-5/igt@kms_pm_backlight@brightness-with-dpms.html
> 
>   * igt@kms_pm_backlight@fade-with-dpms:
>     - shard-tglu-1:       NOTRUN -> [SKIP][173] ([i915#12343] / [i915#9812])
>    [173]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167645v1/shard-tglu-1/igt@kms_pm_backlight@fade-with-dpms.html
> 
>   * igt@kms_pm_dc@dc3co-vpb-simulation:
>     - shard-tglu:         NOTRUN -> [SKIP][174] ([i915#15948])
>    [174]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167645v1/shard-tglu-8/igt@kms_pm_dc@dc3co-vpb-simulation.html
> 
>   * igt@kms_pm_dc@dc6-dpms:
>     - shard-rkl:          NOTRUN -> [FAIL][175] ([i915#15752])
>    [175]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167645v1/shard-rkl-3/igt@kms_pm_dc@dc6-dpms.html
> 
>   * igt@kms_pm_dc@dc9-dpms:
>     - shard-tglu:         NOTRUN -> [SKIP][176] ([i915#15739])
>    [176]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167645v1/shard-tglu-8/igt@kms_pm_dc@dc9-dpms.html
> 
>   * igt@kms_pm_lpsp@kms-lpsp:
>     - shard-dg2:          NOTRUN -> [SKIP][177] ([i915#9340])
>    [177]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167645v1/shard-dg2-6/igt@kms_pm_lpsp@kms-lpsp.html
> 
>   * igt@kms_pm_lpsp@screens-disabled:
>     - shard-tglu-1:       NOTRUN -> [SKIP][178] ([i915#8430])
>    [178]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167645v1/shard-tglu-1/igt@kms_pm_lpsp@screens-disabled.html
> 
>   * igt@kms_pm_rpm@dpms-non-lpsp:
>     - shard-rkl:          NOTRUN -> [SKIP][179] ([i915#15073])
>    [179]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167645v1/shard-rkl-5/igt@kms_pm_rpm@dpms-non-lpsp.html
> 
>   * igt@kms_pm_rpm@modeset-non-lpsp:
>     - shard-dg1:          [PASS][180] -> [SKIP][181] ([i915#15073]) +2 other tests skip
>    [180]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18595/shard-dg1-17/igt@kms_pm_rpm@modeset-non-lpsp.html
>    [181]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167645v1/shard-dg1-14/igt@kms_pm_rpm@modeset-non-lpsp.html
> 
>   * igt@kms_pm_rpm@modeset-non-lpsp-stress:
>     - shard-rkl:          [PASS][182] -> [SKIP][183] ([i915#15073])
>    [182]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18595/shard-rkl-3/igt@kms_pm_rpm@modeset-non-lpsp-stress.html
>    [183]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167645v1/shard-rkl-2/igt@kms_pm_rpm@modeset-non-lpsp-stress.html
> 
>   * igt@kms_pm_rpm@system-suspend-modeset:
>     - shard-glk11:        NOTRUN -> [INCOMPLETE][184] ([i915#10553])
>    [184]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167645v1/shard-glk11/igt@kms_pm_rpm@system-suspend-modeset.html
> 
>   * igt@kms_prime@basic-crc-hybrid:
>     - shard-tglu:         NOTRUN -> [SKIP][185] ([i915#6524])
>    [185]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167645v1/shard-tglu-8/igt@kms_prime@basic-crc-hybrid.html
> 
>   * igt@kms_psr2_sf@fbc-pr-overlay-plane-update-sf-dmg-area:
>     - shard-snb:          NOTRUN -> [SKIP][186] ([i915#11520])
>    [186]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167645v1/shard-snb1/igt@kms_psr2_sf@fbc-pr-overlay-plane-update-sf-dmg-area.html
> 
>   * igt@kms_psr2_sf@fbc-psr2-cursor-plane-move-continuous-exceed-sf:
>     - shard-tglu-1:       NOTRUN -> [SKIP][187] ([i915#11520]) +3 other tests skip
>    [187]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167645v1/shard-tglu-1/igt@kms_psr2_sf@fbc-psr2-cursor-plane-move-continuous-exceed-sf.html
> 
>   * igt@kms_psr2_sf@pr-overlay-plane-move-continuous-exceed-fully-sf:
>     - shard-tglu:         NOTRUN -> [SKIP][188] ([i915#11520]) +3 other tests skip
>    [188]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167645v1/shard-tglu-8/igt@kms_psr2_sf@pr-overlay-plane-move-continuous-exceed-fully-sf.html
> 
>   * igt@kms_psr2_sf@pr-overlay-plane-update-continuous-sf:
>     - shard-rkl:          NOTRUN -> [SKIP][189] ([i915#11520]) +3 other tests skip
>    [189]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167645v1/shard-rkl-5/igt@kms_psr2_sf@pr-overlay-plane-update-continuous-sf.html
> 
>   * igt@kms_psr2_sf@psr2-cursor-plane-move-continuous-sf:
>     - shard-glk:          NOTRUN -> [SKIP][190] ([i915#11520]) +3 other tests skip
>    [190]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167645v1/shard-glk2/igt@kms_psr2_sf@psr2-cursor-plane-move-continuous-sf.html
> 
>   * igt@kms_psr2_sf@psr2-overlay-plane-update-sf-dmg-area:
>     - shard-dg2:          NOTRUN -> [SKIP][191] ([i915#11520]) +2 other tests skip
>    [191]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167645v1/shard-dg2-6/igt@kms_psr2_sf@psr2-overlay-plane-update-sf-dmg-area.html
> 
>   * igt@kms_psr2_sf@psr2-overlay-primary-update-sf-dmg-area:
>     - shard-glk11:        NOTRUN -> [SKIP][192] ([i915#11520])
>    [192]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167645v1/shard-glk11/igt@kms_psr2_sf@psr2-overlay-primary-update-sf-dmg-area.html
> 
>   * igt@kms_psr2_sf@psr2-primary-plane-update-sf-dmg-area:
>     - shard-glk10:        NOTRUN -> [SKIP][193] ([i915#11520]) +5 other tests skip
>    [193]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167645v1/shard-glk10/igt@kms_psr2_sf@psr2-primary-plane-update-sf-dmg-area.html
> 
>   * igt@kms_psr2_su@frontbuffer-xrgb8888:
>     - shard-rkl:          NOTRUN -> [SKIP][194] ([i915#9683])
>    [194]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167645v1/shard-rkl-3/igt@kms_psr2_su@frontbuffer-xrgb8888.html
> 
>   * igt@kms_psr2_su@page_flip-nv12:
>     - shard-tglu:         NOTRUN -> [SKIP][195] ([i915#9683])
>    [195]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167645v1/shard-tglu-8/igt@kms_psr2_su@page_flip-nv12.html
> 
>   * igt@kms_psr@fbc-psr-no-drrs:
>     - shard-tglu:         NOTRUN -> [SKIP][196] ([i915#9732]) +14 other tests skip
>    [196]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167645v1/shard-tglu-8/igt@kms_psr@fbc-psr-no-drrs.html
> 
>   * igt@kms_psr@fbc-psr-sprite-mmap-gtt:
>     - shard-rkl:          NOTRUN -> [SKIP][197] ([i915#1072] / [i915#9732]) +11 other tests skip
>    [197]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167645v1/shard-rkl-5/igt@kms_psr@fbc-psr-sprite-mmap-gtt.html
> 
>   * igt@kms_psr@fbc-psr2-cursor-blt:
>     - shard-tglu-1:       NOTRUN -> [SKIP][198] ([i915#9732]) +8 other tests skip
>    [198]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167645v1/shard-tglu-1/igt@kms_psr@fbc-psr2-cursor-blt.html
> 
>   * igt@kms_psr@psr2-cursor-plane-move:
>     - shard-dg2:          NOTRUN -> [SKIP][199] ([i915#1072] / [i915#9732]) +4 other tests skip
>    [199]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167645v1/shard-dg2-6/igt@kms_psr@psr2-cursor-plane-move.html
> 
>   * igt@kms_rotation_crc@primary-4-tiled-reflect-x-0:
>     - shard-rkl:          NOTRUN -> [SKIP][200] ([i915#5289])
>    [200]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167645v1/shard-rkl-5/igt@kms_rotation_crc@primary-4-tiled-reflect-x-0.html
> 
>   * igt@kms_rotation_crc@primary-yf-tiled-reflect-x-90:
>     - shard-tglu:         NOTRUN -> [SKIP][201] ([i915#5289]) +1 other test skip
>    [201]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167645v1/shard-tglu-8/igt@kms_rotation_crc@primary-yf-tiled-reflect-x-90.html
> 
>   * igt@kms_vrr@flip-basic-fastset:
>     - shard-tglu:         NOTRUN -> [SKIP][202] ([i915#9906]) +1 other test skip
>    [202]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167645v1/shard-tglu-8/igt@kms_vrr@flip-basic-fastset.html
> 
>   * igt@kms_vrr@flipline:
>     - shard-rkl:          NOTRUN -> [SKIP][203] ([i915#15243] / [i915#3555])
>    [203]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167645v1/shard-rkl-5/igt@kms_vrr@flipline.html
> 
>   * igt@perf_pmu@busy-idle@vcs0:
>     - shard-dg2:          NOTRUN -> [FAIL][204] ([i915#4349]) +5 other tests fail
>    [204]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167645v1/shard-dg2-6/igt@perf_pmu@busy-idle@vcs0.html
> 
>   * igt@sriov_basic@enable-vfs-autoprobe-on@numvfs-7:
>     - shard-tglu-1:       NOTRUN -> [SKIP][205] ([i915#16066]) +9 other tests skip
>    [205]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167645v1/shard-tglu-1/igt@sriov_basic@enable-vfs-autoprobe-on@numvfs-7.html
> 
>   
> #### Possible fixes ####
> 
>   * igt@gem_exec_endless@dispatch:
>     - shard-mtlp:         [TIMEOUT][206] ([i915#3778] / [i915#7016]) -> [PASS][207] +1 other test pass
>    [206]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18595/shard-mtlp-6/igt@gem_exec_endless@dispatch.html
>    [207]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167645v1/shard-mtlp-8/igt@gem_exec_endless@dispatch.html
> 
>   * igt@gem_workarounds@suspend-resume-fd:
>     - shard-glk:          [INCOMPLETE][208] ([i915#13356] / [i915#14586]) -> [PASS][209]
>    [208]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18595/shard-glk8/igt@gem_workarounds@suspend-resume-fd.html
>    [209]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167645v1/shard-glk2/igt@gem_workarounds@suspend-resume-fd.html
> 
>   * igt@i915_pm_rpm@system-suspend-devices:
>     - shard-rkl:          [ABORT][210] ([i915#15060]) -> [PASS][211]
>    [210]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18595/shard-rkl-1/igt@i915_pm_rpm@system-suspend-devices.html
>    [211]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167645v1/shard-rkl-7/igt@i915_pm_rpm@system-suspend-devices.html
> 
>   * igt@i915_pm_rps@reset:
>     - shard-snb:          [TIMEOUT][212] ([i915#16162]) -> [PASS][213]
>    [212]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18595/shard-snb6/igt@i915_pm_rps@reset.html
>    [213]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167645v1/shard-snb1/igt@i915_pm_rps@reset.html
> 
>   * igt@i915_suspend@basic-s3-without-i915:
>     - shard-rkl:          [ABORT][214] ([i915#15131]) -> [PASS][215]
>    [214]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18595/shard-rkl-1/igt@i915_suspend@basic-s3-without-i915.html
>    [215]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167645v1/shard-rkl-6/igt@i915_suspend@basic-s3-without-i915.html
> 
>   * igt@i915_suspend@forcewake:
>     - shard-rkl:          [INCOMPLETE][216] ([i915#4817]) -> [PASS][217]
>    [216]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18595/shard-rkl-3/igt@i915_suspend@forcewake.html
>    [217]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167645v1/shard-rkl-3/igt@i915_suspend@forcewake.html
> 
>   * igt@kms_atomic_transition@plane-all-modeset-transition@pipe-a-hdmi-a-3:
>     - shard-dg2:          [FAIL][218] ([i915#5956]) -> [PASS][219] +1 other test pass
>    [218]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18595/shard-dg2-5/igt@kms_atomic_transition@plane-all-modeset-transition@pipe-a-hdmi-a-3.html
>    [219]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167645v1/shard-dg2-1/igt@kms_atomic_transition@plane-all-modeset-transition@pipe-a-hdmi-a-3.html
> 
>   * igt@kms_cursor_crc@cursor-random-256x256:
>     - shard-dg1:          [DMESG-WARN][220] ([i915#4423]) -> [PASS][221] +3 other tests pass
>    [220]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18595/shard-dg1-14/igt@kms_cursor_crc@cursor-random-256x256.html
>    [221]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167645v1/shard-dg1-14/igt@kms_cursor_crc@cursor-random-256x256.html
> 
>   * igt@kms_cursor_crc@cursor-sliding-256x85:
>     - shard-rkl:          [FAIL][222] ([i915#13566]) -> [PASS][223] +1 other test pass
>    [222]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18595/shard-rkl-1/igt@kms_cursor_crc@cursor-sliding-256x85.html
>    [223]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167645v1/shard-rkl-6/igt@kms_cursor_crc@cursor-sliding-256x85.html
> 
>   * igt@kms_frontbuffer_tracking@hdr-1p-offscreen-pri-shrfb-draw-mmap-cpu:
>     - shard-glk:          [SKIP][224] -> [PASS][225] +2 other tests pass
>    [224]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18595/shard-glk5/igt@kms_frontbuffer_tracking@hdr-1p-offscreen-pri-shrfb-draw-mmap-cpu.html
>    [225]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167645v1/shard-glk8/igt@kms_frontbuffer_tracking@hdr-1p-offscreen-pri-shrfb-draw-mmap-cpu.html
> 
>   * igt@kms_hdmi_inject@inject-audio:
>     - shard-tglu:         [SKIP][226] ([i915#13030]) -> [PASS][227]
>    [226]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18595/shard-tglu-4/igt@kms_hdmi_inject@inject-audio.html
>    [227]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167645v1/shard-tglu-4/igt@kms_hdmi_inject@inject-audio.html
> 
>   * igt@kms_pm_rpm@dpms-mode-unset-lpsp:
>     - shard-dg2:          [SKIP][228] ([i915#15073]) -> [PASS][229]
>    [228]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18595/shard-dg2-7/igt@kms_pm_rpm@dpms-mode-unset-lpsp.html
>    [229]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167645v1/shard-dg2-4/igt@kms_pm_rpm@dpms-mode-unset-lpsp.html
> 
>   
> #### Warnings ####
> 
>   * igt@api_intel_bb@blit-reloc-keep-cache:
>     - shard-rkl:          [SKIP][230] ([i915#8411]) -> [SKIP][231] ([i915#14544] / [i915#8411]) +1 other test skip
>    [230]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18595/shard-rkl-1/igt@api_intel_bb@blit-reloc-keep-cache.html
>    [231]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167645v1/shard-rkl-6/igt@api_intel_bb@blit-reloc-keep-cache.html
> 
>   * igt@gem_exec_balancer@parallel-balancer:
>     - shard-rkl:          [SKIP][232] ([i915#4525]) -> [SKIP][233] ([i915#14544] / [i915#4525])
>    [232]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18595/shard-rkl-1/igt@gem_exec_balancer@parallel-balancer.html
>    [233]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167645v1/shard-rkl-6/igt@gem_exec_balancer@parallel-balancer.html
> 
>   * igt@gem_exec_capture@capture-invisible@smem0:
>     - shard-rkl:          [SKIP][234] ([i915#6334]) -> [SKIP][235] ([i915#14544] / [i915#6334]) +1 other test skip
>    [234]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18595/shard-rkl-1/igt@gem_exec_capture@capture-invisible@smem0.html
>    [235]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167645v1/shard-rkl-6/igt@gem_exec_capture@capture-invisible@smem0.html
> 
>   * igt@gem_exec_reloc@basic-gtt-cpu-active:
>     - shard-rkl:          [SKIP][236] ([i915#3281]) -> [SKIP][237] ([i915#14544] / [i915#3281]) +2 other tests skip
>    [236]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18595/shard-rkl-1/igt@gem_exec_reloc@basic-gtt-cpu-active.html
>    [237]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167645v1/shard-rkl-6/igt@gem_exec_reloc@basic-gtt-cpu-active.html
> 
>   * igt@gem_exec_reloc@basic-write-read:
>     - shard-rkl:          [SKIP][238] ([i915#14544] / [i915#3281]) -> [SKIP][239] ([i915#3281]) +3 other tests skip
>    [238]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18595/shard-rkl-6/igt@gem_exec_reloc@basic-write-read.html
>    [239]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167645v1/shard-rkl-1/igt@gem_exec_reloc@basic-write-read.html
> 
>   * igt@gem_lmem_swapping@heavy-verify-multi-ccs:
>     - shard-rkl:          [SKIP][240] ([i915#4613]) -> [SKIP][241] ([i915#14544] / [i915#4613])
>    [240]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18595/shard-rkl-1/igt@gem_lmem_swapping@heavy-verify-multi-ccs.html
>    [241]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167645v1/shard-rkl-6/igt@gem_lmem_swapping@heavy-verify-multi-ccs.html
> 
>   * igt@gem_partial_pwrite_pread@write-display:
>     - shard-rkl:          [SKIP][242] ([i915#3282]) -> [SKIP][243] ([i915#14544] / [i915#3282]) +1 other test skip
>    [242]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18595/shard-rkl-1/igt@gem_partial_pwrite_pread@write-display.html
>    [243]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167645v1/shard-rkl-6/igt@gem_partial_pwrite_pread@write-display.html
> 
>   * igt@gem_pxp@hw-rejects-pxp-buffer:
>     - shard-rkl:          [SKIP][244] ([i915#13717]) -> [SKIP][245] ([i915#13717] / [i915#14544])
>    [244]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18595/shard-rkl-1/igt@gem_pxp@hw-rejects-pxp-buffer.html
>    [245]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167645v1/shard-rkl-6/igt@gem_pxp@hw-rejects-pxp-buffer.html
> 
>   * igt@gem_readwrite@beyond-eob:
>     - shard-rkl:          [SKIP][246] ([i915#14544] / [i915#3282]) -> [SKIP][247] ([i915#3282])
>    [246]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18595/shard-rkl-6/igt@gem_readwrite@beyond-eob.html
>    [247]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167645v1/shard-rkl-1/igt@gem_readwrite@beyond-eob.html
> 
>   * igt@gem_userptr_blits@unsync-overlap:
>     - shard-rkl:          [SKIP][248] ([i915#14544] / [i915#3297]) -> [SKIP][249] ([i915#3297])
>    [248]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18595/shard-rkl-6/igt@gem_userptr_blits@unsync-overlap.html
>    [249]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167645v1/shard-rkl-1/igt@gem_userptr_blits@unsync-overlap.html
> 
>   * igt@gen9_exec_parse@batch-without-end:
>     - shard-rkl:          [SKIP][250] ([i915#14544] / [i915#2527]) -> [SKIP][251] ([i915#2527])
>    [250]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18595/shard-rkl-6/igt@gen9_exec_parse@batch-without-end.html
>    [251]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167645v1/shard-rkl-1/igt@gen9_exec_parse@batch-without-end.html
> 
>   * igt@kms_big_fb@4-tiled-16bpp-rotate-270:
>     - shard-rkl:          [SKIP][252] ([i915#14544] / [i915#5286]) -> [SKIP][253] ([i915#5286])
>    [252]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18595/shard-rkl-6/igt@kms_big_fb@4-tiled-16bpp-rotate-270.html
>    [253]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167645v1/shard-rkl-1/igt@kms_big_fb@4-tiled-16bpp-rotate-270.html
> 
>   * igt@kms_big_fb@4-tiled-64bpp-rotate-0:
>     - shard-rkl:          [SKIP][254] ([i915#5286]) -> [SKIP][255] ([i915#14544] / [i915#5286])
>    [254]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18595/shard-rkl-1/igt@kms_big_fb@4-tiled-64bpp-rotate-0.html
>    [255]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167645v1/shard-rkl-6/igt@kms_big_fb@4-tiled-64bpp-rotate-0.html
> 
>   * igt@kms_big_fb@linear-64bpp-rotate-90:
>     - shard-rkl:          [SKIP][256] ([i915#3638]) -> [SKIP][257] ([i915#14544] / [i915#3638])
>    [256]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18595/shard-rkl-1/igt@kms_big_fb@linear-64bpp-rotate-90.html
>    [257]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167645v1/shard-rkl-6/igt@kms_big_fb@linear-64bpp-rotate-90.html
> 
>   * igt@kms_big_fb@x-tiled-8bpp-rotate-270:
>     - shard-rkl:          [SKIP][258] ([i915#14544] / [i915#3638]) -> [SKIP][259] ([i915#3638])
>    [258]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18595/shard-rkl-6/igt@kms_big_fb@x-tiled-8bpp-rotate-270.html
>    [259]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167645v1/shard-rkl-1/igt@kms_big_fb@x-tiled-8bpp-rotate-270.html
> 
>   * igt@kms_ccs@bad-aux-stride-4-tiled-mtl-rc-ccs@pipe-c-hdmi-a-2:
>     - shard-rkl:          [SKIP][260] ([i915#14098] / [i915#14544] / [i915#6095]) -> [SKIP][261] ([i915#14098] / [i915#6095]) +5 other tests skip
>    [260]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18595/shard-rkl-6/igt@kms_ccs@bad-aux-stride-4-tiled-mtl-rc-ccs@pipe-c-hdmi-a-2.html
>    [261]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167645v1/shard-rkl-1/igt@kms_ccs@bad-aux-stride-4-tiled-mtl-rc-ccs@pipe-c-hdmi-a-2.html
> 
>   * igt@kms_ccs@bad-rotation-90-4-tiled-mtl-mc-ccs@pipe-b-hdmi-a-2:
>     - shard-rkl:          [SKIP][262] ([i915#6095]) -> [SKIP][263] ([i915#14544] / [i915#6095]) +2 other tests skip
>    [262]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18595/shard-rkl-1/igt@kms_ccs@bad-rotation-90-4-tiled-mtl-mc-ccs@pipe-b-hdmi-a-2.html
>    [263]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167645v1/shard-rkl-6/igt@kms_ccs@bad-rotation-90-4-tiled-mtl-mc-ccs@pipe-b-hdmi-a-2.html
> 
>   * igt@kms_ccs@crc-primary-suspend-y-tiled-gen12-mc-ccs:
>     - shard-rkl:          [SKIP][264] ([i915#14098] / [i915#6095]) -> [SKIP][265] ([i915#14098] / [i915#14544] / [i915#6095]) +3 other tests skip
>    [264]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18595/shard-rkl-1/igt@kms_ccs@crc-primary-suspend-y-tiled-gen12-mc-ccs.html
>    [265]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167645v1/shard-rkl-6/igt@kms_ccs@crc-primary-suspend-y-tiled-gen12-mc-ccs.html
> 
>   * igt@kms_ccs@random-ccs-data-y-tiled-gen12-mc-ccs@pipe-a-hdmi-a-2:
>     - shard-rkl:          [SKIP][266] ([i915#14544] / [i915#6095]) -> [SKIP][267] ([i915#6095]) +5 other tests skip
>    [266]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18595/shard-rkl-6/igt@kms_ccs@random-ccs-data-y-tiled-gen12-mc-ccs@pipe-a-hdmi-a-2.html
>    [267]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167645v1/shard-rkl-1/igt@kms_ccs@random-ccs-data-y-tiled-gen12-mc-ccs@pipe-a-hdmi-a-2.html
> 
>   * igt@kms_cdclk@mode-transition-all-outputs:
>     - shard-rkl:          [SKIP][268] ([i915#3742]) -> [SKIP][269] ([i915#14544] / [i915#3742])
>    [268]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18595/shard-rkl-1/igt@kms_cdclk@mode-transition-all-outputs.html
>    [269]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167645v1/shard-rkl-6/igt@kms_cdclk@mode-transition-all-outputs.html
> 
>   * igt@kms_chamelium_frames@dp-frame-dump:
>     - shard-rkl:          [SKIP][270] ([i915#11151] / [i915#7828]) -> [SKIP][271] ([i915#11151] / [i915#14544] / [i915#7828]) +1 other test skip
>    [270]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18595/shard-rkl-1/igt@kms_chamelium_frames@dp-frame-dump.html
>    [271]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167645v1/shard-rkl-6/igt@kms_chamelium_frames@dp-frame-dump.html
> 
>   * igt@kms_content_protection@dp-mst-type-0-suspend-resume:
>     - shard-rkl:          [SKIP][272] ([i915#15330]) -> [SKIP][273] ([i915#14544] / [i915#15330])
>    [272]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18595/shard-rkl-1/igt@kms_content_protection@dp-mst-type-0-suspend-resume.html
>    [273]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167645v1/shard-rkl-6/igt@kms_content_protection@dp-mst-type-0-suspend-resume.html
> 
>   * igt@kms_content_protection@dp-mst-type-1-suspend-resume:
>     - shard-rkl:          [SKIP][274] ([i915#14544] / [i915#15330]) -> [SKIP][275] ([i915#15330])
>    [274]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18595/shard-rkl-6/igt@kms_content_protection@dp-mst-type-1-suspend-resume.html
>    [275]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167645v1/shard-rkl-1/igt@kms_content_protection@dp-mst-type-1-suspend-resume.html
> 
>   * igt@kms_content_protection@mei-interface:
>     - shard-dg1:          [SKIP][276] ([i915#9433]) -> [SKIP][277] ([i915#15865])
>    [276]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18595/shard-dg1-12/igt@kms_content_protection@mei-interface.html
>    [277]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167645v1/shard-dg1-19/igt@kms_content_protection@mei-interface.html
> 
>   * igt@kms_cursor_crc@cursor-onscreen-512x512:
>     - shard-rkl:          [SKIP][278] ([i915#13049]) -> [SKIP][279] ([i915#13049] / [i915#14544])
>    [278]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18595/shard-rkl-1/igt@kms_cursor_crc@cursor-onscreen-512x512.html
>    [279]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167645v1/shard-rkl-6/igt@kms_cursor_crc@cursor-onscreen-512x512.html
> 
>   * igt@kms_cursor_crc@cursor-random-max-size:
>     - shard-rkl:          [SKIP][280] ([i915#3555]) -> [SKIP][281] ([i915#14544] / [i915#3555])
>    [280]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18595/shard-rkl-1/igt@kms_cursor_crc@cursor-random-max-size.html
>    [281]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167645v1/shard-rkl-6/igt@kms_cursor_crc@cursor-random-max-size.html
> 
>   * igt@kms_cursor_legacy@2x-flip-vs-cursor-legacy:
>     - shard-rkl:          [SKIP][282] -> [SKIP][283] ([i915#14544]) +24 other tests skip
>    [282]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18595/shard-rkl-1/igt@kms_cursor_legacy@2x-flip-vs-cursor-legacy.html
>    [283]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167645v1/shard-rkl-6/igt@kms_cursor_legacy@2x-flip-vs-cursor-legacy.html
> 
>   * igt@kms_cursor_legacy@basic-busy-flip-before-cursor-legacy:
>     - shard-rkl:          [SKIP][284] ([i915#14544] / [i915#4103]) -> [SKIP][285] ([i915#4103])
>    [284]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18595/shard-rkl-6/igt@kms_cursor_legacy@basic-busy-flip-before-cursor-legacy.html
>    [285]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167645v1/shard-rkl-1/igt@kms_cursor_legacy@basic-busy-flip-before-cursor-legacy.html
> 
>   * igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions:
>     - shard-glk:          [FAIL][286] ([i915#15804]) -> [FAIL][287] ([i915#15768])
>    [286]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18595/shard-glk9/igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions.html
>    [287]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167645v1/shard-glk3/igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions.html
> 
>   * igt@kms_dsc@dsc-fractional-bpp-with-bpc:
>     - shard-rkl:          [SKIP][288] ([i915#3840]) -> [SKIP][289] ([i915#14544] / [i915#3840])
>    [288]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18595/shard-rkl-1/igt@kms_dsc@dsc-fractional-bpp-with-bpc.html
>    [289]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167645v1/shard-rkl-6/igt@kms_dsc@dsc-fractional-bpp-with-bpc.html
> 
>   * igt@kms_flip@2x-flip-vs-suspend-interruptible:
>     - shard-glk:          [INCOMPLETE][290] ([i915#12745] / [i915#4839]) -> [INCOMPLETE][291] ([i915#12314] / [i915#12745] / [i915#4839])
>    [290]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18595/shard-glk4/igt@kms_flip@2x-flip-vs-suspend-interruptible.html
>    [291]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167645v1/shard-glk8/igt@kms_flip@2x-flip-vs-suspend-interruptible.html
> 
>   * igt@kms_flip@2x-flip-vs-suspend-interruptible@ac-hdmi-a1-hdmi-a2:
>     - shard-glk:          [INCOMPLETE][292] ([i915#12745]) -> [INCOMPLETE][293] ([i915#12314] / [i915#12745])
>    [292]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18595/shard-glk4/igt@kms_flip@2x-flip-vs-suspend-interruptible@ac-hdmi-a1-hdmi-a2.html
>    [293]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167645v1/shard-glk8/igt@kms_flip@2x-flip-vs-suspend-interruptible@ac-hdmi-a1-hdmi-a2.html
> 
>   * igt@kms_flip@flip-vs-suspend:
>     - shard-rkl:          [INCOMPLETE][294] ([i915#16276] / [i915#6113]) -> [ABORT][295] ([i915#15132]) +1 other test abort
>    [294]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18595/shard-rkl-6/igt@kms_flip@flip-vs-suspend.html
>    [295]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167645v1/shard-rkl-1/igt@kms_flip@flip-vs-suspend.html
> 
>   * igt@kms_flip@flip-vs-suspend-interruptible:
>     - shard-glk:          [INCOMPLETE][296] ([i915#12314] / [i915#12745] / [i915#4839] / [i915#6113]) -> [INCOMPLETE][297] ([i915#12314] / [i915#12745] / [i915#4839])
>    [296]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18595/shard-glk5/igt@kms_flip@flip-vs-suspend-interruptible.html
>    [297]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167645v1/shard-glk8/igt@kms_flip@flip-vs-suspend-interruptible.html
> 
>   * igt@kms_flip_scaled_crc@flip-64bpp-yftile-to-32bpp-yftile-upscaling:
>     - shard-rkl:          [SKIP][298] ([i915#14544] / [i915#15643]) -> [SKIP][299] ([i915#15643])
>    [298]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18595/shard-rkl-6/igt@kms_flip_scaled_crc@flip-64bpp-yftile-to-32bpp-yftile-upscaling.html
>    [299]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167645v1/shard-rkl-1/igt@kms_flip_scaled_crc@flip-64bpp-yftile-to-32bpp-yftile-upscaling.html
> 
>   * igt@kms_frontbuffer_tracking@fbchdr-2p-scndscrn-cur-indfb-draw-pwrite:
>     - shard-rkl:          [SKIP][300] ([i915#14544]) -> [SKIP][301] +7 other tests skip
>    [300]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18595/shard-rkl-6/igt@kms_frontbuffer_tracking@fbchdr-2p-scndscrn-cur-indfb-draw-pwrite.html
>    [301]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167645v1/shard-rkl-1/igt@kms_frontbuffer_tracking@fbchdr-2p-scndscrn-cur-indfb-draw-pwrite.html
> 
>   * igt@kms_frontbuffer_tracking@fbcpsr-1p-primscrn-pri-indfb-draw-blt:
>     - shard-dg2:          [SKIP][302] ([i915#15102]) -> [SKIP][303] ([i915#10433] / [i915#15102]) +1 other test skip
>    [302]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18595/shard-dg2-7/igt@kms_frontbuffer_tracking@fbcpsr-1p-primscrn-pri-indfb-draw-blt.html
>    [303]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167645v1/shard-dg2-4/igt@kms_frontbuffer_tracking@fbcpsr-1p-primscrn-pri-indfb-draw-blt.html
> 
>   * igt@kms_frontbuffer_tracking@fbcpsr-1p-shrfb-fliptrack-mmap-gtt:
>     - shard-rkl:          [SKIP][304] ([i915#14544] / [i915#15102] / [i915#3023]) -> [SKIP][305] ([i915#15102] / [i915#3023]) +4 other tests skip
>    [304]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18595/shard-rkl-6/igt@kms_frontbuffer_tracking@fbcpsr-1p-shrfb-fliptrack-mmap-gtt.html
>    [305]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167645v1/shard-rkl-1/igt@kms_frontbuffer_tracking@fbcpsr-1p-shrfb-fliptrack-mmap-gtt.html
> 
>   * igt@kms_frontbuffer_tracking@fbcpsr-2p-scndscrn-pri-shrfb-draw-mmap-wc:
>     - shard-rkl:          [SKIP][306] ([i915#1825]) -> [SKIP][307] ([i915#14544] / [i915#1825])
>    [306]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18595/shard-rkl-1/igt@kms_frontbuffer_tracking@fbcpsr-2p-scndscrn-pri-shrfb-draw-mmap-wc.html
>    [307]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167645v1/shard-rkl-6/igt@kms_frontbuffer_tracking@fbcpsr-2p-scndscrn-pri-shrfb-draw-mmap-wc.html
> 
>   * igt@kms_frontbuffer_tracking@fbcpsr-indfb-scaledprimary:
>     - shard-dg2:          [SKIP][308] ([i915#10433] / [i915#15102]) -> [SKIP][309] ([i915#15102]) +2 other tests skip
>    [308]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18595/shard-dg2-4/igt@kms_frontbuffer_tracking@fbcpsr-indfb-scaledprimary.html
>    [309]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167645v1/shard-dg2-8/igt@kms_frontbuffer_tracking@fbcpsr-indfb-scaledprimary.html
> 
>   * igt@kms_frontbuffer_tracking@fbcpsrhdr-2p-primscrn-cur-indfb-draw-render:
>     - shard-dg1:          [SKIP][310] ([i915#4423]) -> [SKIP][311]
>    [310]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18595/shard-dg1-19/igt@kms_frontbuffer_tracking@fbcpsrhdr-2p-primscrn-cur-indfb-draw-render.html
>    [311]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167645v1/shard-dg1-12/igt@kms_frontbuffer_tracking@fbcpsrhdr-2p-primscrn-cur-indfb-draw-render.html
> 
>   * igt@kms_frontbuffer_tracking@fbcpsrhdr-tiling-linear:
>     - shard-rkl:          [SKIP][312] ([i915#15102]) -> [SKIP][313] ([i915#14544] / [i915#15102]) +2 other tests skip
>    [312]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18595/shard-rkl-1/igt@kms_frontbuffer_tracking@fbcpsrhdr-tiling-linear.html
>    [313]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167645v1/shard-rkl-6/igt@kms_frontbuffer_tracking@fbcpsrhdr-tiling-linear.html
> 
>   * igt@kms_frontbuffer_tracking@psr-1p-primscrn-cur-indfb-draw-render:
>     - shard-rkl:          [SKIP][314] ([i915#15102] / [i915#3023]) -> [SKIP][315] ([i915#14544] / [i915#15102] / [i915#3023]) +6 other tests skip
>    [314]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18595/shard-rkl-1/igt@kms_frontbuffer_tracking@psr-1p-primscrn-cur-indfb-draw-render.html
>    [315]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167645v1/shard-rkl-6/igt@kms_frontbuffer_tracking@psr-1p-primscrn-cur-indfb-draw-render.html
> 
>   * igt@kms_frontbuffer_tracking@psr-2p-primscrn-pri-shrfb-draw-mmap-gtt:
>     - shard-rkl:          [SKIP][316] ([i915#14544] / [i915#1825]) -> [SKIP][317] ([i915#1825])
>    [316]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18595/shard-rkl-6/igt@kms_frontbuffer_tracking@psr-2p-primscrn-pri-shrfb-draw-mmap-gtt.html
>    [317]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167645v1/shard-rkl-1/igt@kms_frontbuffer_tracking@psr-2p-primscrn-pri-shrfb-draw-mmap-gtt.html
> 
>   * igt@kms_frontbuffer_tracking@psrhdr-shrfb-scaledprimary:
>     - shard-rkl:          [SKIP][318] ([i915#14544] / [i915#15102]) -> [SKIP][319] ([i915#15102]) +2 other tests skip
>    [318]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18595/shard-rkl-6/igt@kms_frontbuffer_tracking@psrhdr-shrfb-scaledprimary.html
>    [319]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167645v1/shard-rkl-1/igt@kms_frontbuffer_tracking@psrhdr-shrfb-scaledprimary.html
> 
>   * igt@kms_panel_fitting@legacy:
>     - shard-rkl:          [SKIP][320] ([i915#14544] / [i915#6301]) -> [SKIP][321] ([i915#6301])
>    [320]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18595/shard-rkl-6/igt@kms_panel_fitting@legacy.html
>    [321]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167645v1/shard-rkl-1/igt@kms_panel_fitting@legacy.html
> 
>   * igt@kms_pipe_stress@stress-xrgb8888-yftiled:
>     - shard-rkl:          [SKIP][322] ([i915#14712]) -> [SKIP][323] ([i915#14544] / [i915#14712])
>    [322]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18595/shard-rkl-1/igt@kms_pipe_stress@stress-xrgb8888-yftiled.html
>    [323]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167645v1/shard-rkl-6/igt@kms_pipe_stress@stress-xrgb8888-yftiled.html
> 
>   * igt@kms_plane@pixel-format-4-tiled-dg2-rc-ccs-modifier-source-clamping:
>     - shard-rkl:          [SKIP][324] ([i915#15709]) -> [SKIP][325] ([i915#14544] / [i915#15709])
>    [324]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18595/shard-rkl-1/igt@kms_plane@pixel-format-4-tiled-dg2-rc-ccs-modifier-source-clamping.html
>    [325]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167645v1/shard-rkl-6/igt@kms_plane@pixel-format-4-tiled-dg2-rc-ccs-modifier-source-clamping.html
> 
>   * igt@kms_plane@pixel-format-yf-tiled-ccs-modifier-source-clamping:
>     - shard-rkl:          [SKIP][326] ([i915#14544] / [i915#15709]) -> [SKIP][327] ([i915#15709])
>    [326]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18595/shard-rkl-6/igt@kms_plane@pixel-format-yf-tiled-ccs-modifier-source-clamping.html
>    [327]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167645v1/shard-rkl-1/igt@kms_plane@pixel-format-yf-tiled-ccs-modifier-source-clamping.html
> 
>   * igt@kms_pm_lpsp@kms-lpsp:
>     - shard-rkl:          [SKIP][328] ([i915#14544] / [i915#9340]) -> [SKIP][329] ([i915#9340])
>    [328]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18595/shard-rkl-6/igt@kms_pm_lpsp@kms-lpsp.html
>    [329]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167645v1/shard-rkl-1/igt@kms_pm_lpsp@kms-lpsp.html
>     - shard-dg1:          [SKIP][330] ([i915#9340]) -> [SKIP][331] ([i915#3828])
>    [330]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18595/shard-dg1-17/igt@kms_pm_lpsp@kms-lpsp.html
>    [331]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167645v1/shard-dg1-14/igt@kms_pm_lpsp@kms-lpsp.html
> 
>   * igt@kms_pm_rpm@dpms-mode-unset-lpsp:
>     - shard-rkl:          [SKIP][332] ([i915#15073]) -> [SKIP][333] ([i915#14544] / [i915#15073])
>    [332]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18595/shard-rkl-1/igt@kms_pm_rpm@dpms-mode-unset-lpsp.html
>    [333]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167645v1/shard-rkl-6/igt@kms_pm_rpm@dpms-mode-unset-lpsp.html
> 
>   * igt@kms_psr2_sf@fbc-pr-overlay-plane-move-continuous-sf:
>     - shard-rkl:          [SKIP][334] ([i915#11520]) -> [SKIP][335] ([i915#11520] / [i915#14544]) +1 other test skip
>    [334]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18595/shard-rkl-1/igt@kms_psr2_sf@fbc-pr-overlay-plane-move-continuous-sf.html
>    [335]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167645v1/shard-rkl-6/igt@kms_psr2_sf@fbc-pr-overlay-plane-move-continuous-sf.html
> 
>   * igt@kms_psr2_sf@psr2-overlay-plane-update-sf-dmg-area:
>     - shard-rkl:          [SKIP][336] ([i915#11520] / [i915#14544]) -> [SKIP][337] ([i915#11520])
>    [336]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18595/shard-rkl-6/igt@kms_psr2_sf@psr2-overlay-plane-update-sf-dmg-area.html
>    [337]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167645v1/shard-rkl-1/igt@kms_psr2_sf@psr2-overlay-plane-update-sf-dmg-area.html
> 
>   * igt@kms_psr@fbc-pr-cursor-render:
>     - shard-rkl:          [SKIP][338] ([i915#1072] / [i915#9732]) -> [SKIP][339] ([i915#1072] / [i915#14544] / [i915#9732]) +4 other tests skip
>    [338]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18595/shard-rkl-1/igt@kms_psr@fbc-pr-cursor-render.html
>    [339]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167645v1/shard-rkl-6/igt@kms_psr@fbc-pr-cursor-render.html
> 
>   * igt@kms_psr@psr-sprite-plane-onoff:
>     - shard-rkl:          [SKIP][340] ([i915#1072] / [i915#14544] / [i915#9732]) -> [SKIP][341] ([i915#1072] / [i915#9732]) +2 other tests skip
>    [340]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18595/shard-rkl-6/igt@kms_psr@psr-sprite-plane-onoff.html
>    [341]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167645v1/shard-rkl-1/igt@kms_psr@psr-sprite-plane-onoff.html
> 
>   * igt@kms_vrr@lobf:
>     - shard-rkl:          [SKIP][342] ([i915#11920]) -> [SKIP][343] ([i915#11920] / [i915#14544])
>    [342]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18595/shard-rkl-1/igt@kms_vrr@lobf.html
>    [343]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167645v1/shard-rkl-6/igt@kms_vrr@lobf.html
> 
>   
>   {name}: This element is suppressed. This means it is ignored when computing
>           the status of the difference (SUCCESS, WARNING, or FAILURE).
> 
>   [i915#10307]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/10307
>   [i915#10433]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/10433
>   [i915#10553]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/10553
>   [i915#1072]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/1072
>   [i915#1099]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/1099
>   [i915#11151]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/11151
>   [i915#11520]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/11520
>   [i915#11920]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/11920
>   [i915#12313]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12313
>   [i915#12314]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12314
>   [i915#12343]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12343
>   [i915#12358]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12358
>   [i915#1257]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/1257
>   [i915#12745]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12745
>   [i915#12756]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12756
>   [i915#12805]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12805
>   [i915#13027]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/13027
>   [i915#13030]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/13030
>   [i915#13046]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/13046
>   [i915#13049]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/13049
>   [i915#13356]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/13356
>   [i915#13390]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/13390
>   [i915#13409]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/13409
>   [i915#13476]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/13476
>   [i915#13566]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/13566
>   [i915#13717]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/13717
>   [i915#13748]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/13748
>   [i915#13749]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/13749
>   [i915#13781]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/13781
>   [i915#13790]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/13790
>   [i915#13958]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/13958
>   [i915#14073]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14073
>   [i915#14098]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14098
>   [i915#14152]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14152
>   [i915#14544]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14544
>   [i915#14586]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14586
>   [i915#14712]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14712
>   [i915#15060]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/15060
>   [i915#15073]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/15073
>   [i915#15102]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/15102
>   [i915#15131]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/15131
>   [i915#15132]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/15132
>   [i915#15243]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/15243
>   [i915#15329]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/15329
>   [i915#15330]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/15330
>   [i915#15342]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/15342
>   [i915#15459]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/15459
>   [i915#15460]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/15460
>   [i915#15479]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/15479
>   [i915#15582]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/15582
>   [i915#15608]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/15608
>   [i915#15643]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/15643
>   [i915#15709]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/15709
>   [i915#15733]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/15733
>   [i915#15739]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/15739
>   [i915#15752]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/15752
>   [i915#15768]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/15768
>   [i915#15804]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/15804
>   [i915#15840]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/15840
>   [i915#15865]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/15865
>   [i915#15931]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/15931
>   [i915#15948]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/15948
>   [i915#15989]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/15989
>   [i915#15990]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/15990
>   [i915#15991]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/15991
>   [i915#16011]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/16011
>   [i915#16012]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/16012
>   [i915#16066]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/16066
>   [i915#16081]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/16081
>   [i915#16109]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/16109
>   [i915#16112]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/16112
>   [i915#16162]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/16162
>   [i915#16182]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/16182
>   [i915#16205]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/16205
>   [i915#16276]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/16276
>   [i915#16308]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/16308
>   [i915#1769]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/1769
>   [i915#1825]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/1825
>   [i915#2190]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/2190
>   [i915#2527]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/2527
>   [i915#2681]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/2681
>   [i915#280]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/280
>   [i915#2856]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/2856
>   [i915#3023]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3023
>   [i915#3116]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3116
>   [i915#3281]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3281
>   [i915#3282]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3282
>   [i915#3297]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3297
>   [i915#3299]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3299
>   [i915#3469]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3469
>   [i915#3555]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3555
>   [i915#3637]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3637
>   [i915#3638]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3638
>   [i915#3742]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3742
>   [i915#3778]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3778
>   [i915#3828]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3828
>   [i915#3840]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3840
>   [i915#4077]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4077
>   [i915#4083]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4083
>   [i915#4103]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4103
>   [i915#4349]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4349
>   [i915#4387]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4387
>   [i915#4423]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4423
>   [i915#4525]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4525
>   [i915#4538]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4538
>   [i915#4613]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4613
>   [i915#4817]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4817
>   [i915#4839]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4839
>   [i915#4860]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4860
>   [i915#5138]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/5138
>   [i915#5190]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/5190
>   [i915#5286]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/5286
>   [i915#5289]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/5289
>   [i915#5354]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/5354
>   [i915#5439]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/5439
>   [i915#5956]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/5956
>   [i915#6095]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/6095
>   [i915#6113]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/6113
>   [i915#6245]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/6245
>   [i915#6301]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/6301
>   [i915#6334]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/6334
>   [i915#6335]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/6335
>   [i915#6344]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/6344
>   [i915#6524]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/6524
>   [i915#7016]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/7016
>   [i915#7582]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/7582
>   [i915#7707]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/7707
>   [i915#7828]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/7828
>   [i915#8228]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/8228
>   [i915#8399]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/8399
>   [i915#8411]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/8411
>   [i915#8428]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/8428
>   [i915#8430]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/8430
>   [i915#8555]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/8555
>   [i915#8562]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/8562
>   [i915#8708]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/8708
>   [i915#9053]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9053
>   [i915#9067]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9067
>   [i915#9340]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9340
>   [i915#9433]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9433
>   [i915#9531]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9531
>   [i915#9683]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9683
>   [i915#9723]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9723
>   [i915#9732]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9732
>   [i915#9812]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9812
>   [i915#9906]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9906
>   [i915#9934]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9934
> 
> 
> Build changes
> -------------
> 
>   * Linux: CI_DRM_18595 -> Patchwork_167645v1
> 
>   CI-20190529: 20190529
>   CI_DRM_18595: 8133a9f4c4fd407e81df71530490836a1170bb2f @ git://anongit.freedesktop.org/gfx-ci/linux
>   IGT_8943: 8943
>   Patchwork_167645v1: 8133a9f4c4fd407e81df71530490836a1170bb2f @ git://anongit.freedesktop.org/gfx-ci/linux
>   piglit_4509: fdc5a4ca11124ab8413c7988896eec4c97336694 @ git://anongit.freedesktop.org/piglit
> 
> == Logs ==
> 
> For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167645v1/index.html
