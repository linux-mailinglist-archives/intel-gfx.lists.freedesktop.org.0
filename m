Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id y4wCBCMZKGqk9wIAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Tue, 09 Jun 2026 15:46:11 +0200
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 679EB660B38
	for <lists+intel-gfx@lfdr.de>; Tue, 09 Jun 2026 15:46:10 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=fail ("headers rsa verify failed") header.d=intel.com header.s=Intel header.b=QR9y3p8b;
	spf=pass (mail.lfdr.de: domain of intel-gfx-bounces@lists.freedesktop.org designates 131.252.210.177 as permitted sender) smtp.mailfrom=intel-gfx-bounces@lists.freedesktop.org;
	dmarc=fail reason="SPF not aligned (relaxed)" header.from=intel.com (policy=none);
	arc=reject ("signature check failed: fail, {[1] = sig:microsoft.com:reject}")
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id E8EBA10E34A;
	Tue,  9 Jun 2026 13:46:08 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.9])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 6786010E323;
 Tue,  9 Jun 2026 13:46:06 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1781012767; x=1812548767;
 h=date:from:cc:subject:message-id:reply-to:references:
 content-transfer-encoding:in-reply-to:mime-version;
 bh=uM7D9xU25167BsvmDB/o/qWriIrFI+otbDEWNxEPaIY=;
 b=QR9y3p8boCizJ3uoNqRiCopvypOivf/PaVeHuFVgi1WwSxYYz66Hqnjl
 3/6waTUW3l/Uyqx403FcymIrW3by8+IgVv9gJTsrONE/Az73QAtnXzPzX
 IpQpr12LvoidYDkGwiZxbjVPeaQ7JLd7YjySgrW9tPIiNGCzz2MmoAwTP
 S8EOcydncVT7eDG6bmILzdBZX9moU76n+44wcJqFjvGO/44oznOwPOFut
 bEmy8gRN6ieH/HnGDW4Eqpij6+3j2Tb9CVMA88WTACKBMTAP1xSC3Za90
 6yVA9/hipJiT+AYi9CmAUEWmgwNYvjF8DuukronOZ08pHpv20PXLFWuFd A==;
X-CSE-ConnectionGUID: fNdLoEK9QIKLVdqyOOBrJQ==
X-CSE-MsgGUID: UEUZfImZREuEG+0bKrUx2A==
X-IronPort-AV: E=McAfee;i="6800,10657,11811"; a="104436554"
X-IronPort-AV: E=Sophos;i="6.24,196,1774335600"; d="scan'208";a="104436554"
Received: from orviesa009.jf.intel.com ([10.64.159.149])
 by orvoesa101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 09 Jun 2026 06:46:06 -0700
X-CSE-ConnectionGUID: s1qpELyMRzWIjZr4ITGbdQ==
X-CSE-MsgGUID: m6W9aVuUSMuxcRWKqRwv2w==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.24,196,1774335600"; d="scan'208";a="245912738"
Received: from fmsmsx903.amr.corp.intel.com ([10.18.126.92])
 by orviesa009.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 09 Jun 2026 06:46:05 -0700
Received: from FMSMSX903.amr.corp.intel.com (10.18.126.92) by
 fmsmsx903.amr.corp.intel.com (10.18.126.92) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Tue, 9 Jun 2026 06:46:05 -0700
Received: from fmsedg903.ED.cps.intel.com (10.1.192.145) by
 FMSMSX903.amr.corp.intel.com (10.18.126.92) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37 via Frontend Transport; Tue, 9 Jun 2026 06:46:05 -0700
Received: from DM1PR04CU001.outbound.protection.outlook.com (52.101.61.51) by
 edgegateway.intel.com (192.55.55.83) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Tue, 9 Jun 2026 06:46:05 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=FYwF3iaoycDPApOlfP6cYeIWKnNpWzXSEW59DTABKjD5aY8FBZnn+tztuVTDHxYUKDEWpRMN37dNHoz1ShR1Powkk/RO/7Dc8fJnSYNnzG9FxWwE7IkWOsB7EAwGAlmVal3cWqrA24f58u0TuGmiDa7WaWUbbpajIwi/WszgxjM2nQ8xMvZI/3016QrWw2kw5AOomxsiQaRuoNlzFOa1jr4+dIsmd5OzsTVlHKmE22ykNJHvbHD1yKMUYSiVIOWtJKndI9vwlneee+ew/sNyEXEM6d5jl5nYbvcW97i3y9UvYE4c258XRfEiihm+2HLhm/tSdN/BDUhGsMZIyGwVgQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=OE5s3vx0EZk1sj0Nr1nlkWJg25B6XfjfzWN4hvbTq6I=;
 b=av+ipnWzyRfBple9XVjn1DG6uGdtFAENFMzCWrYmnnmZbO/v02QTgL4mxnsCdcWPGjmstPLVao2z9eo2prWLn9L3EXI1mVjTek6cDIKnhbNzXlP2KejTuP+9ZW9sF92r4VueUSqa3cqBrr6BFCOVOLAUUq16SQ7coU35LHP650Bc4+XJYJbHiEEX1i8yaIXwBwqXrvlodt9H3UVX3vqugveU1F6zDTTfvwlcrTlEq6MXHMRarfMvqcoNSnj9rWtlfRDDUR1K+WCNXoWnGMgT/irRI/vu2aSEzVzOLIGFV4b9N3FufPK4b85d1gIjvOBUC0aAaSHiM3LhWbi5Ojz8Kw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from IA3PR11MB9273.namprd11.prod.outlook.com (2603:10b6:208:573::17)
 by DS3PR11MB9796.namprd11.prod.outlook.com (2603:10b6:8:363::14) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.21.92.13; Tue, 9 Jun 2026
 13:46:03 +0000
Received: from IA3PR11MB9273.namprd11.prod.outlook.com
 ([fe80::31a4:58c:e3b5:43fa]) by IA3PR11MB9273.namprd11.prod.outlook.com
 ([fe80::31a4:58c:e3b5:43fa%4]) with mapi id 15.21.0092.007; Tue, 9 Jun 2026
 13:46:03 +0000
Date: Tue, 9 Jun 2026 16:45:57 +0300
From: Imre Deak <imre.deak@intel.com>
CC: <intel-gfx@lists.freedesktop.org>, <intel-xe@lists.freedesktop.org>
Subject: Re: [PATCH 2/7] drm/i915/psr: Stop using intel_dsc_enabled_on_link
 to detect crtc DSC status
Message-ID: <aigZFb34-M_p-Tk-@ideak-desk.lan>
References: <20260608141124.144878-1-jouni.hogander@intel.com>
 <20260608141124.144878-3-jouni.hogander@intel.com>
Content-Type: text/plain; charset="iso-8859-1"
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <20260608141124.144878-3-jouni.hogander@intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - c/o Alberga Business Park, 6
 krs Bertel Jungin Aukio 5, 02600 Espoo, Finland
X-ClientProxiedBy: GV2PEPF00023A0E.SWEP280.PROD.OUTLOOK.COM
 (2603:10a6:158:400::206) To IA3PR11MB9273.namprd11.prod.outlook.com
 (2603:10b6:208:573::17)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: IA3PR11MB9273:EE_|DS3PR11MB9796:EE_
X-MS-Office365-Filtering-Correlation-Id: c56096a1-20ce-4a9c-8420-08dec62d7287
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
 ARA:13230040|1800799024|366016|376014|22082099003|18002099003|11063799006|4143699003|56012099006|3023799007;
X-Microsoft-Antispam-Message-Info: 6eraNsATmPlOuSfdGJ1GbXxi/Viviih7kPiT8eKiV8Dowtof4477tKdjEy43vTc5lghdShYTjs6yXPqln78bxRUNZMiRdpfoGeneirsmrM2jIhRLHfE1NwWO+JqOEuv0YaotfmLWotkxKPugfOslbMLckvN9K/YW3aEx2kN6LJ49v6S4qpbkEvhQljc4gF4HHbUOPGSoqBRBSOVP44aSppOBZSOX4AWFb3eKUiFrZbrQsrCdwptTsUxg+wSMjgLAPxyCP6JAdl7ZnoQVfpgeATc9hXxFl0qliGvDKAvRz6g8XNXJT2T9kURxTYgz2OllM/td1mhwXBCr4kKeLqdiWcdK/kOwWTMmvgtwT4/zKsCZIvDePVOoQ3i8xwv1RnKqHK+M2unNHoSJhpirZElOl+pqXUiNzt1urWOK5DHKK+K2zvYp8TOwid30QYN7tLRQzHifrzdeIVqKcT+5rxKBpAMWnYniSc+UCzFdNIO7LESg1v9LbwaWziX3/94/Kzw0fk5rWeVNyV/M1tFCnO9m3lOkfYWmW2WC3AiQd0XTlYOysJZkl0JglmgHlJzz+wY2IWhoR3qO3aJOmR7sFhki7xv/wyzMQzvhoVXQDRFzJm9vNVgk/XhmDFfd4qj71TyP4E7PL7TZJmJl7wd/sn76P6jfU9pwL3PYMs3j68n7t1u69mtutWof1VsE/U91QK1c
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:IA3PR11MB9273.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(1800799024)(366016)(376014)(22082099003)(18002099003)(11063799006)(4143699003)(56012099006)(3023799007);
 DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?iso-8859-1?Q?INZ+pHfLs8oxjj2i7CWDLe0Y7k+s6TcIUb+sh6SdNotJf16PF9gxlQeoQz?=
 =?iso-8859-1?Q?PL29Z/WTZG7vLyi8o1NW2GiQqjCt4n5BSaN1t+1fhIkyPlpDzGukLymfzs?=
 =?iso-8859-1?Q?gxCs9wSjrZFeMbNxZAUmW3ygt08nxIoWI4iQLMrFMralC63gbMLNwXtPgB?=
 =?iso-8859-1?Q?WYLFNCz8H16tAUda1dxkSxDsTiWs7DJVCt7VDrrV4D/QAwTuW2quq6KlPe?=
 =?iso-8859-1?Q?e/rdBphqOZN/Mf8ZVAhVGjjD/3ujW/L1VSox9NTKIf93o+i4tmSs9Hg7hz?=
 =?iso-8859-1?Q?czHPmR/Ol9eGP0jRPuN7QBf1EtwV8Ou3lA2hK/msw/OtBEqT6Yz4M+/3XX?=
 =?iso-8859-1?Q?aUoypdwkioOjNERdugMFg8FNqeZoNwv7dbu6HIf0Q6bmRzooEjjY2vv51X?=
 =?iso-8859-1?Q?AiZ6py7GdL0MGqanV7I8M21JNJzOughOrlkoiJtpbrb9Nzo3TK5680+qSY?=
 =?iso-8859-1?Q?vXY5w7PEp0U+d11VCx9RxZNsi9bZ5j/LQJ0jO38oGHPBByxk2fRYMxiu+V?=
 =?iso-8859-1?Q?XZHvYpu5J2iIHv6hBE9SoSdr4m8+TqTT/LSUBUtbW0LGJ7uRJpH8Pge00p?=
 =?iso-8859-1?Q?uB2cYmgRyzbMf6Ak/3Q2TmcolmuOTE9msm5MmBpYoDYti8ocqDZKfBYwSL?=
 =?iso-8859-1?Q?jmln0h15qPbPiEM2odEgsuiEDxywpI9kUoT7rFAA3JT/H3RMZy2162NvT4?=
 =?iso-8859-1?Q?yCq88D6rsLDZuPsnKDhO35IuDI30NJnya9ednBoeq0TO3zU90EkrAEcwzn?=
 =?iso-8859-1?Q?WyvOdPBHlPQLDgQSR7EJu9ge/2gXc+mnGoGtl+5CYpL7YsESyH1gofHEst?=
 =?iso-8859-1?Q?uxsDuZMn1Ix2ZLjEj7du+BgkTBE+qafPgbdpX10Bc2pVv7SPtx3XUDTNWi?=
 =?iso-8859-1?Q?s0RRFshpzl4zZpAEhHAPrlTVNbEPhhe7wltvnzOwtuKonfURIzzyztOYY3?=
 =?iso-8859-1?Q?3HyMv6Bc3ff0/cvFqfQC00ePGBcsX3SG6NXoKpk61tNLmDy0M0wDSVzX0r?=
 =?iso-8859-1?Q?yBl1khOFw20VclZnXsxfx2E3G+z9ZLa2WqFryXtzJtbY6LZEhUZVKVAhnm?=
 =?iso-8859-1?Q?9dCXaR0oIo9OQr2uVduduubN91C/l/1xtxKkUAigi4SIaAmMWSurefGCtl?=
 =?iso-8859-1?Q?0ycmGbf1GKpNBmokcBlqeC/74TMB++NJDIqqC0XBZPCkAoHAvqSt9HOvpi?=
 =?iso-8859-1?Q?fbcvayd4pzMDZTBL+xptAhnoQOJp2wDjjtJ0fxt55wxKHtJEVIKifD0Nct?=
 =?iso-8859-1?Q?DOPRg1u/Pe/PyKnNHzNdcsW4i4dq4KuUSJoamaIo3ZTizJgF8SnqxeWQjp?=
 =?iso-8859-1?Q?sY6Tu1nhm7IaDngcwRkrQAFGNfgbqqEUfQ1K5DvUplRkYeHUZKcDjHGDkv?=
 =?iso-8859-1?Q?+R/DSjfYsADeJJAygg96OUf830rdPiFqQ0XHsRO4UzGzggaziio9rDlMwn?=
 =?iso-8859-1?Q?ME+EQs7jpEGe5EjeHBCBybupV7Zc1OfOX9c2SNhKPVOZACE3y8or25u8zE?=
 =?iso-8859-1?Q?EIERRG9O9sTrgruxuvT2xv1aZQL3WQv5T8+OBFuKmqEiGwlfNnDEE45bq5?=
 =?iso-8859-1?Q?HLwEjY/VCkewifrus0QVyShAP9OuQLfGylgvHPhcZQX3wyQUyfTpovkE8a?=
 =?iso-8859-1?Q?sdRPAnrljvVLrIzkI3da+RPmghcJelYSAhcRXPuUIqR/Mj2eijQSMRMa1w?=
 =?iso-8859-1?Q?FGoCACRd9ADjQI7sBx6MQnqhmz8XCtqk/hTsgTOyFM0QfpUpkzWhRYhdfK?=
 =?iso-8859-1?Q?PCCFwIHPqWsLHb6jWkZcue8kyIALDVNeZXvwEOhDWMkE55QVzmVtne6HgT?=
 =?iso-8859-1?Q?SS/VqWZHnw=3D=3D?=
X-Exchange-RoutingPolicyChecked: DZoTW5A9+u/ynRbCu4F2QE90npythIsmiqLa9KUw3SkUlZZcR98B5cxuxTBmzCHjxao2MbHeZ+9RbzpQ3M1R8aJ+IiDNk3aV7I+NVuK6OscnABckpm3mAowjcDP6zGTh2e9PdLKG2sjNbECqb0wivfMBJ9XQHN/uq3qL4nOymbGrpnetsL5F7AWVEshe/OcDV8bd8KELFboqOBIwsuvTfQt2NMrkKwITEcqiFl6c/NMX5gN3uEKEGk3p7agdbmSZ1RF8mp2PNJtlXAHlL6UDFpe/xiU/fh+RJzxGc2y9/EFO71MfUo6i8WbddyAzpwZB9k180uQ06yaw0qPSmRtoOQ==
X-MS-Exchange-CrossTenant-Network-Message-Id: c56096a1-20ce-4a9c-8420-08dec62d7287
X-MS-Exchange-CrossTenant-AuthSource: IA3PR11MB9273.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 09 Jun 2026 13:46:03.2181 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: t4dc0+L9dgRO/3dJrhcCKyIU34W5WEGMuIrCZ2hh08JivinXBIS1MTta9S83ZLEOkVA83Nkrjyn3dTwHYWqmmw==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DS3PR11MB9796
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
X-Rspamd-Action: no action
X-Spamd-Result: default: False [3.49 / 15.00];
	MISSING_TO(2.00)[];
	R_DKIM_REJECT(1.00)[intel.com:s=Intel];
	ARC_REJECT(1.00)[signature check failed: fail, {[1] = sig:microsoft.com:reject}];
	MAILLIST(-0.20)[mailman];
	R_SPF_ALLOW(-0.20)[+ip4:131.252.210.177];
	MIME_GOOD(-0.10)[text/plain];
	DMARC_POLICY_SOFTFAIL(0.10)[intel.com : SPF not aligned (relaxed),none];
	RWL_MAILSPIKE_GOOD(-0.10)[131.252.210.177:from];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[intel.com:replyto,intel.com:email,intel.com:from_mime,gabe.freedesktop.org:rdns,gabe.freedesktop.org:helo,ideak-desk.lan:mid];
	RCPT_COUNT_TWO(0.00)[2];
	MIME_TRACE(0.00)[0:+];
	HAS_ORG_HEADER(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	DKIM_TRACE(0.00)[intel.com:-];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	HAS_REPLYTO(0.00)[imre.deak@intel.com];
	REPLYTO_ADDR_EQ_FROM(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[imre.deak@intel.com,intel-gfx-bounces@lists.freedesktop.org];
	FROM_HAS_DN(0.00)[];
	REPLYTO_DOM_NEQ_TO_DOM(0.00)[];
	TO_DN_NONE(0.00)[];
	TAGGED_RCPT(0.00)[intel-gfx];
	ALIAS_RESOLVED(0.00)[];
	MISSING_XM_UA(0.00)[];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	RCVD_COUNT_SEVEN(0.00)[9]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: 679EB660B38

On Mon, Jun 08, 2026 at 05:11:19PM +0300, Jouni Högander wrote:
> Intel_dsc_enabled_on_link is not really about DSC being enabled on crtc. It
> is telling if FEC is enabled on link. Instead of intel_dsc_enabled_on_link
> check status directly from crtc->dsc.compression_enable.
> 
> Also rename intel_dsc_enabled_on_link as intel_fec_enabled_on_link.

The reason to track the DSC enabled state on the MST link as a whole was
to determine if that enabled state is compatible with enabling Panel
Replay anywhere on the same link, according to the restrictions
indicated by the branch device via

DP_PANEL_REPLAY_CAP_CAPABILITY 0xb1

For instance, if there is only one branch device in a hub/dock, DSC will
be enabled for the branch device as a whole (via DSC_ENABLE 0x160) if
any stream is compressed, while there could be other uncompressed
streams going through the same branch device. Based on the definition of
the DP_PANEL_REPLAY_CAP_CAPABILITY register, enabling the Panel Replay
on any streams via the branch device - including the uncompressed
streams - should be done considering the branch device's enabled DSC
mode. IOW, enabling Panel Replay on an uncompressed stream through the
branch device should consider any stream in compressed mode through the
same branch device.

The above is in contrast to the case where DSC/Panel Replay of each of
the DFP connectors of the hub can be controlled via a per-DFP
peer-to-peer branch device.

> Signed-off-by: Jouni Högander <jouni.hogander@intel.com>
> ---
>  drivers/gpu/drm/i915/display/intel_psr.c  | 6 +++---
>  drivers/gpu/drm/i915/display/intel_vdsc.c | 2 +-
>  drivers/gpu/drm/i915/display/intel_vdsc.h | 2 +-
>  3 files changed, 5 insertions(+), 5 deletions(-)
> 
> diff --git a/drivers/gpu/drm/i915/display/intel_psr.c b/drivers/gpu/drm/i915/display/intel_psr.c
> index ad2f6c79f5808..f58200d38ac2c 100644
> --- a/drivers/gpu/drm/i915/display/intel_psr.c
> +++ b/drivers/gpu/drm/i915/display/intel_psr.c
> @@ -1740,7 +1740,7 @@ static bool intel_sel_update_config_valid(struct intel_crtc_state *crtc_state,
>  		if (!connector->dp.panel_replay_caps.su_support)
>  			goto unsupported;
>  
> -		if (intel_dsc_enabled_on_link(crtc_state) &&
> +		if (crtc_state->dsc.compression_enable &&
>  		    connector->dp.panel_replay_caps.dsc_support !=
>  		    INTEL_DP_PANEL_REPLAY_DSC_SELECTIVE_UPDATE) {
>  			drm_dbg_kms(display->drm,
> @@ -1840,7 +1840,7 @@ static bool _panel_replay_compute_config(struct intel_crtc_state *crtc_state,
>  		return false;
>  	}
>  
> -	if (intel_dsc_enabled_on_link(crtc_state) &&
> +	if (crtc_state->dsc.compression_enable &&
>  	    connector->dp.panel_replay_caps.dsc_support ==
>  	    INTEL_DP_PANEL_REPLAY_DSC_NOT_SUPPORTED) {
>  		drm_dbg_kms(display->drm,
> @@ -3235,7 +3235,7 @@ verify_panel_replay_dsc_state(const struct intel_crtc_state *crtc_state)
>  		return;
>  
>  	drm_WARN_ON(display->drm,
> -		    intel_dsc_enabled_on_link(crtc_state) &&
> +		    crtc_state->dsc.compression_enable &&
>  		    crtc_state->panel_replay_dsc_support ==
>  		    INTEL_DP_PANEL_REPLAY_DSC_NOT_SUPPORTED);
>  }
> diff --git a/drivers/gpu/drm/i915/display/intel_vdsc.c b/drivers/gpu/drm/i915/display/intel_vdsc.c
> index 8f06c3a4d56df..35c93fcbb6427 100644
> --- a/drivers/gpu/drm/i915/display/intel_vdsc.c
> +++ b/drivers/gpu/drm/i915/display/intel_vdsc.c
> @@ -431,7 +431,7 @@ void intel_dsc_enable_on_crtc(struct intel_crtc_state *crtc_state)
>  	crtc_state->dsc.compression_enable = true;
>  }
>  
> -bool intel_dsc_enabled_on_link(const struct intel_crtc_state *crtc_state)
> +bool intel_fec_enabled_on_link(const struct intel_crtc_state *crtc_state)
>  {
>  	struct intel_display *display = to_intel_display(crtc_state);
>  
> diff --git a/drivers/gpu/drm/i915/display/intel_vdsc.h b/drivers/gpu/drm/i915/display/intel_vdsc.h
> index 3372f8694054d..60d86399808c0 100644
> --- a/drivers/gpu/drm/i915/display/intel_vdsc.h
> +++ b/drivers/gpu/drm/i915/display/intel_vdsc.h
> @@ -28,7 +28,7 @@ void intel_dsc_enable(const struct intel_crtc_state *crtc_state);
>  void intel_dsc_disable(const struct intel_crtc_state *crtc_state);
>  int intel_dsc_compute_params(struct intel_crtc_state *pipe_config);
>  void intel_dsc_enable_on_crtc(struct intel_crtc_state *crtc_state);
> -bool intel_dsc_enabled_on_link(const struct intel_crtc_state *crtc_state);
> +bool intel_fec_enabled_on_link(const struct intel_crtc_state *crtc_state);
>  void intel_dsc_get_config(struct intel_crtc_state *crtc_state);
>  enum intel_display_power_domain
>  intel_dsc_power_domain(struct intel_crtc *crtc, enum transcoder cpu_transcoder);
> -- 
> 2.43.0
> 
