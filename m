Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 81D9442B408
	for <lists+intel-gfx@lfdr.de>; Wed, 13 Oct 2021 06:21:55 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id C334E6E082;
	Wed, 13 Oct 2021 04:21:51 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
X-Greylist: delayed 4200 seconds by postgrey-1.36 at gabe;
 Wed, 13 Oct 2021 04:21:50 UTC
Received: from 11.mo583.mail-out.ovh.net (11.mo583.mail-out.ovh.net
 [46.105.47.167])
 by gabe.freedesktop.org (Postfix) with ESMTPS id CF5D16E082
 for <intel-gfx@lists.freedesktop.org>; Wed, 13 Oct 2021 04:21:50 +0000 (UTC)
Received: from player788.ha.ovh.net (unknown [10.110.171.54])
 by mo583.mail-out.ovh.net (Postfix) with ESMTP id CBDC822D71
 for <intel-gfx@lists.freedesktop.org>; Tue, 12 Oct 2021 22:23:34 +0000 (UTC)
Received: from etezian.org (unknown [31.22.55.47])
 (Authenticated sender: andi@etezian.org)
 by player788.ha.ovh.net (Postfix) with ESMTPSA id 5610923278F78;
 Tue, 12 Oct 2021 22:23:27 +0000 (UTC)
Authentication-Results: garm.ovh; auth=pass
 (GARM-101G0040db76381-6bcf-4b72-bf60-54e232d91db1,
 C786CB9E79FC7D8AF81679FEBE5E79C8CF9BC842) smtp.auth=andi@etezian.org
X-OVh-ClientIp: 31.22.55.47
Date: Wed, 13 Oct 2021 00:23:26 +0200
From: Andi Shyti <andi@etezian.org>
To: Andi Shyti <andi@etezian.org>
Cc: Intel GFX <intel-gfx@lists.freedesktop.org>,
 DRI Devel <dri-devel@lists.freedesktop.org>,
 Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>,
 Chris Wilson <chris@chris-wilson.co.uk>,
 Lucas De Marchi <lucas.demarchi@intel.com>,
 Andi Shyti <andi.shyti@linux.intel.com>
Message-ID: <YWYK3s5XT+wRPv6C@jack.zhora.eu>
References: <20211012221738.16029-1-andi@etezian.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20211012221738.16029-1-andi@etezian.org>
X-Ovh-Tracer-Id: 785315186859182786
X-VR-SPAMSTATE: OK
X-VR-SPAMSCORE: -85
X-VR-SPAMCAUSE: gggruggvucftvghtrhhoucdtuddrgedvtddrvddtledgtdejucetufdoteggodetrfdotffvucfrrhhofhhilhgvmecuqfggjfdpvefjgfevmfevgfenuceurghilhhouhhtmecuhedttdenucesvcftvggtihhpihgvnhhtshculddquddttddmnegoteeftdduqddtudculdduhedmnecujfgurhepfffhvffukfhfgggtuggjsehttdertddttddvnecuhfhrohhmpeetnhguihcuufhhhihtihcuoegrnhguihesvghtvgiiihgrnhdrohhrgheqnecuggftrfgrthhtvghrnhepjedthfevfeetgedvudeiieekueegleeffeeggffhvdeuvddtffetvdevgfdvveeunecuffhomhgrihhnpehfrhgvvgguvghskhhtohhprdhorhhgnecukfhppedtrddtrddtrddtpdefuddrvddvrdehhedrgeejnecuvehluhhsthgvrhfuihiivgeptdenucfrrghrrghmpehmohguvgepshhmthhpqdhouhhtpdhhvghlohepphhlrgihvghrjeekkedrhhgrrdhovhhhrdhnvghtpdhinhgvtheptddrtddrtddrtddpmhgrihhlfhhrohhmpegrnhguihesvghtvgiiihgrnhdrohhrghdprhgtphhtthhopehinhhtvghlqdhgfhigsehlihhsthhsrdhfrhgvvgguvghskhhtohhprdhorhhg
Subject: Re: [Intel-gfx] [PATCH v5] drm/i915/gt: move remaining debugfs
 interfaces into gt
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

Hi,

sorry, just forgot to add the changelog

On Wed, Oct 13, 2021 at 12:17:38AM +0200, Andi Shyti wrote:
> From: Andi Shyti <andi.shyti@linux.intel.com>
> 
> The following interfaces:
> 
>   i915_wedged
>   i915_forcewake_user
> 
> are dependent on gt values. Put them inside gt/ and drop the
> "i915_" prefix name. This would be the new structure:
> 
>   dri/0/gt
>   |
>   +-- forcewake_user
>   |
>   \-- reset
> 
> For backwards compatibility with existing igt (and the slight
> semantic difference between operating on the i915 abi entry
> points and the deep gt info):
> 
>   dri/0
>   |
>   +-- i915_wedged
>   |
>   \-- i915_forcewake_user
> 
> remain at the top level.
> 
> Signed-off-by: Andi Shyti <andi.shyti@linux.intel.com>
> Cc: Tvrtko Ursulin <tvrtko.ursulin@intel.com>
> Cc: Chris Wilson <chris@chris-wilson.co.uk>
> Reviewed-by: Lucas De Marchi <lucas.demarchi@intel.com>
> ---

Changelog:
----------
v4 -> v5: https://patchwork.freedesktop.org/patch/458293/
 * rename static functions exposed to header files so that they
   can keep a coherent namespace (thanks Lucas!)
 * add Lucas r-b.

v3 -> v4: https://patchwork.freedesktop.org/patch/458225/
 * remove the unnecessary interrupt_info_show() information. They
   were already removed here by Chris:

	cf977e18610e6 ("drm/i915/gem: Spring clean debugfs")

v2 -> v3: https://patchwork.freedesktop.org/patch/458108/
 * keep the original interfaces as they were (thanks Chris) but
   implement the functionality inside the gt. The upper level
   files will call the gt functions (thanks Lucas).

v1 -> v2: https://patchwork.freedesktop.org/patch/456652/
 * keep the original interfaces intact (thanks Chris).

Andi
