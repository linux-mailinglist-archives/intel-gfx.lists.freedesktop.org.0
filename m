Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 0A95F6C5C1A
	for <lists+intel-gfx@lfdr.de>; Thu, 23 Mar 2023 02:31:12 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id C239510E28D;
	Thu, 23 Mar 2023 01:31:08 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from eggs.gnu.org (eggs.gnu.org [IPv6:2001:470:142:3::10])
 by gabe.freedesktop.org (Postfix) with ESMTPS id C7AC510E28D
 for <intel-gfx@lists.freedesktop.org>; Thu, 23 Mar 2023 01:31:07 +0000 (UTC)
Received: from linux-libre.fsfla.org ([209.51.188.54] helo=free.home)
 by eggs.gnu.org with esmtps (TLS1.2:ECDHE_RSA_AES_256_GCM_SHA384:256)
 (Exim 4.90_1) (envelope-from <oliva@gnu.org>)
 id 1pf9nE-0008Eq-Vv; Wed, 22 Mar 2023 21:31:05 -0400
Received: from livre (livre.home [172.31.160.2])
 by free.home (8.15.2/8.15.2) with ESMTPS id 32N1Un721264572
 (version=TLSv1.3 cipher=TLS_AES_256_GCM_SHA384 bits=256 verify=NOT);
 Wed, 22 Mar 2023 22:30:51 -0300
From: Alexandre Oliva <oliva@gnu.org>
To: Rodrigo Vivi <rodrigo.vivi@intel.com>
Organization: Free thinker, not speaking for the GNU Project
References: <orjzzlhhg8.fsf@lxoliva.fsfla.org> <ZBtpu1KPKa0IsJ0C@intel.com>
Date: Wed, 22 Mar 2023 22:30:49 -0300
In-Reply-To: <ZBtpu1KPKa0IsJ0C@intel.com> (Rodrigo Vivi's message of "Wed, 22
 Mar 2023 16:48:59 -0400")
Message-ID: <orcz50ntiu.fsf@lxoliva.fsfla.org>
User-Agent: Gnus/5.13 (Gnus v5.13) Emacs/26.3 (gnu/linux)
MIME-Version: 1.0
Content-Type: text/plain
X-Scanned-By: MIMEDefang 2.84
Subject: Re: [Intel-gfx] [PATCH] [i915] avoid infinite retries in GuC/HuC
 loading
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
Cc: intel-gfx@lists.freedesktop.org, stable@vger.kernel.org
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Mar 22, 2023, Rodrigo Vivi <rodrigo.vivi@intel.com> wrote:

> On Sun, Mar 12, 2023 at 04:56:23PM -0300, Alexandre Oliva wrote:
>> 
> Since __uc_fw_auto_select is also called from another place,
> intel_uc_fw_init_early
> out of the intel_uc_fw_fetch infinite loop,

That other place is conceptually, sort of, the first iteration of the
infinite loop.  Before that first separate early-init call, *uc_fw is
returned by devm_drm_dev_alloc to i915_driver_create, so
zero-initialized I presume, in both the guc and the huc cases.

Only if this first call finds a matching entry (setting both
file_{selected,wanted}.path), and the selected entry fails to load, do
we even enter the loop (provided that other conditionals are satisfied)
and look for other entries, using file_selected.path to find how far the
previous call got (and, with the proposed patch, file_wanted.path to
avoid retrying the path we've just tried).

> I hope Daniele and John have a better understanding and can provide
> some guidance or acks here.

I surely appreciate additional eyes and minds that are more acquainted
with the code at hand than I am.  Thanks,

-- 
Alexandre Oliva, happy hacker                https://FSFLA.org/blogs/lxo/
   Free Software Activist                       GNU Toolchain Engineer
Disinformation flourishes because many people care deeply about injustice
but very few check the facts.  Ask me about <https://stallmansupport.org>
