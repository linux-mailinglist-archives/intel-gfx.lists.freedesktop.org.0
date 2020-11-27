Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id AC88E2C6C98
	for <lists+intel-gfx@lfdr.de>; Fri, 27 Nov 2020 21:37:07 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 5ECCE6EE38;
	Fri, 27 Nov 2020 20:37:04 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (unknown [77.68.26.236])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 7A7B66EE38;
 Fri, 27 Nov 2020 20:37:02 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from localhost (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP (TLS) id
 23139148-1500050 for multiple; Fri, 27 Nov 2020 20:36:50 +0000
MIME-Version: 1.0
In-Reply-To: <CO1PR11MB50756238298DCDD2AFCC7F3EF6170@CO1PR11MB5075.namprd11.prod.outlook.com>
References: <20201006145632.117291-1-srinivasx.k@intel.com>
 <B6C174E8-161A-43BD-AFDA-21C94F6D56E3@intel.com>
 <BY5PR11MB44341733BF4A7CCB79861322F6080@BY5PR11MB4434.namprd11.prod.outlook.com>
 <BYAPR11MB30149153D9229142DD2CF96BF9020@BYAPR11MB3014.namprd11.prod.outlook.com>
 <20201019182936.GA3149316@intel.com>
 <160313241261.4425.3184593266306110227@build.alporthouse.com>
 <CO1PR11MB50750A169A14FCC84C70C936F61F0@CO1PR11MB5075.namprd11.prod.outlook.com>
 <CO1PR11MB5075AAFA3500F4A3A610FC52F6170@CO1PR11MB5075.namprd11.prod.outlook.com>
 <D7AA9562-983D-4F83-BFD7-6E66801FA273@intel.com>
 <CO1PR11MB50756238298DCDD2AFCC7F3EF6170@CO1PR11MB5075.namprd11.prod.outlook.com>
From: Chris Wilson <chris@chris-wilson.co.uk>
To: "Pandey, Hariom" <hariom.pandey@intel.com>, "Vivi,
 Rodrigo" <rodrigo.vivi@intel.com>
Date: Fri, 27 Nov 2020 20:36:48 +0000
Message-ID: <160650940860.13437.11287039461548084896@build.alporthouse.com>
User-Agent: alot/0.9
Subject: Re: [Intel-gfx] [PATCH] drm/i915/ehl: Remove require_force_probe
 protection
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
Cc: "Nikula, Jani" <jani.nikula@intel.com>, intel-gfx@lists.freedesktop.org,
 "Meena, Mahesh" <mahesh.meena@intel.com>,
 dri-devel <dri-devel@lists.freedesktop.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Quoting Pandey, Hariom (2020-10-28 11:55:04)
> Ok, I have initiated the steps to upgrade the CI machine's silicon & BIOS.

The single ehl we have in CI is still failing to enter rc6, both in the
selftest and runtime testing. And I note that RAPL doesn't recognise it,
so it doesn't report the power consumption.
-Chris
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
