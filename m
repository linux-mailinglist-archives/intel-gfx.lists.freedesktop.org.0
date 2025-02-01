Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id AECEBA25076
	for <lists+intel-gfx@lfdr.de>; Sun,  2 Feb 2025 23:57:17 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 8350D10E355;
	Sun,  2 Feb 2025 22:57:13 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=gmail.com header.i=@gmail.com header.b="bSoF45gm";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-lj1-f170.google.com (mail-lj1-f170.google.com
 [209.85.208.170])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 6414B10E23E;
 Sat,  1 Feb 2025 08:02:02 +0000 (UTC)
Received: by mail-lj1-f170.google.com with SMTP id
 38308e7fff4ca-3061f1e534bso27696971fa.1; 
 Sat, 01 Feb 2025 00:02:02 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=gmail.com; s=20230601; t=1738396920; x=1739001720; darn=lists.freedesktop.org;
 h=content-transfer-encoding:cc:to:subject:message-id:date:from
 :in-reply-to:references:mime-version:from:to:cc:subject:date
 :message-id:reply-to;
 bh=/s7Y7lcv+wX03gw07hpdaNCp1wCGc/zvO4UfuCtTkQM=;
 b=bSoF45gmu1V6k2RHry1+yzrFXKGCKv6JueaIWxvfswDH4pW9m54RMWG54T+PGLxevS
 JJDYOEZHnQn8iRWc0EMSApfWinC8qvp7jg30gNOGA2WuH38qlCnwStQ4+MdW7KWyhPMI
 juQFfn9QYPjZp6rhsq8IssgOnXkGax5vgLzkr5WVLNYfdmp7rbKiGDkFxL5b9UIWpPma
 oMVLO5oNz8SyaPKvZHs77JDbZPy8iIx7JrQeyIB7uFIlkoTYoGgfjK88oDih3BbdfR2G
 1GeJHv8BbJNCOqV+qq48y5NheaK9qPXW7iTdoJ1lzr61ZsvM9La0vFyD2ZmDi/u9iOWh
 oXHA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1738396920; x=1739001720;
 h=content-transfer-encoding:cc:to:subject:message-id:date:from
 :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
 :subject:date:message-id:reply-to;
 bh=/s7Y7lcv+wX03gw07hpdaNCp1wCGc/zvO4UfuCtTkQM=;
 b=aB7K8SMdm1Y2mIIv60jttxMM4JYIa4W3uqp/wOVyjeqNAbA2dFLqvKKMBNYouOyvJL
 HQ0xi3ZxuzsZ+2Zel5izlu7bv7hGB1iW8tStq/5U97t7ukJ4MILwRvs8xs4VeBNOhpj9
 NhGUvAPPk3X+YZPYntpmR4CwEyLbmRrnAxpYDTGttaeA3HY75AIoc8ieLE+XTvGjxFcX
 zx92L/g6KURGUBZ4I9JqKPQmy0ET/y63un06Rp877gQ1lyFdoPNP5jcwbJQzxSCFRL3F
 VcndnwAl/51SRnJAIUiJ6mHaRvP8xP8skRrAMbJKGV5E+F7KVLP/L0aX2tfzncECytby
 1ZvA==
X-Forwarded-Encrypted: i=1;
 AJvYcCU3NFALhAQXttxHSr5egu/HypZhSe3rjTME5wD2H3OvOGFuJINpi9ni923CNnmmPR2/NXLVAdM34nqR@lists.freedesktop.org,
 AJvYcCVNi9J2I2bEOdn9O+2Vbm2AtBFuojfsvUAtvSbKMO8f4qxHuX5yX0BnrEEML/RiXOK1dO69XdDo2YI=@lists.freedesktop.org
X-Gm-Message-State: AOJu0YwuTYlrUyrffhw7eG9T7TOhn9+6WsIaSpWBzGLH+IQkrVdlyWrm
 8z/nEcLlyNrs6bIXi57GNb1dWhtUbt+18CRzB0A0737NkPmdime+vmpaLt3AXsKtkU4jj5CMWLg
 sa36Z+LAufawbtQ8dU4/q9Xz6O8w=
X-Gm-Gg: ASbGnctEE0LbfdnoFtpDINreZ/JDTa3vvdA+QoI1JlUmbV3NJZlR2B4VqbmrvpvlV6x
 RopwssLtvaLLyr3sLrB7R/aLshneRKTT6q6oJ5AGY4HCX5c67UMtAJlVAVNVFDMvxFQVdYu2sNw
 ==
X-Google-Smtp-Source: AGHT+IG/LDUrHQpBVUu1qTtHu5M9AuTtw8da8QEScwhqc32vaaVE8IVKysaRIZqgRQ+M6zPPTUmWCkkjc0NlcgF/LQI=
X-Received: by 2002:a05:651c:2124:b0:2ff:d3c6:9cf4 with SMTP id
 38308e7fff4ca-3079681b016mr42578721fa.1.1738396920016; Sat, 01 Feb 2025
 00:02:00 -0800 (PST)
MIME-Version: 1.0
References: <20250130100050.1868208-1-kirill.shutemov@linux.intel.com>
 <20250130100050.1868208-7-kirill.shutemov@linux.intel.com>
In-Reply-To: <20250130100050.1868208-7-kirill.shutemov@linux.intel.com>
From: Kairui Song <ryncsn@gmail.com>
Date: Sat, 1 Feb 2025 16:01:43 +0800
X-Gm-Features: AWEUYZk3BKKSZ0_M6d8Z1HuwlbptqkkHnrlsuT9nC5CTCQFq-OhruTqcp8L8mlQ
Message-ID: <CAMgjq7AWZg0Y7+v3_Z8-YVUXrANB29mCDSyzF39dtAM_TQ0aKw@mail.gmail.com>
Subject: Re: [PATCHv3 06/11] mm/vmscan: Use PG_dropbehind instead of PG_reclaim
To: "Kirill A. Shutemov" <kirill.shutemov@linux.intel.com>
Cc: Andrew Morton <akpm@linux-foundation.org>, 
 "Matthew Wilcox (Oracle)" <willy@infradead.org>, Jens Axboe <axboe@kernel.dk>, 
 "Jason A. Donenfeld" <Jason@zx2c4.com>, Andi Shyti <andi.shyti@linux.intel.com>,
 Chengming Zhou <chengming.zhou@linux.dev>,
 Christian Brauner <brauner@kernel.org>, 
 Christophe Leroy <christophe.leroy@csgroup.eu>,
 Dan Carpenter <dan.carpenter@linaro.org>, 
 David Airlie <airlied@gmail.com>, David Hildenbrand <david@redhat.com>,
 Hao Ge <gehao@kylinos.cn>, 
 Jani Nikula <jani.nikula@linux.intel.com>, Johannes Weiner <hannes@cmpxchg.org>,
 Joonas Lahtinen <joonas.lahtinen@linux.intel.com>,
 Josef Bacik <josef@toxicpanda.com>, 
 Masami Hiramatsu <mhiramat@kernel.org>,
 Mathieu Desnoyers <mathieu.desnoyers@efficios.com>, 
 Miklos Szeredi <miklos@szeredi.hu>, Nhat Pham <nphamcs@gmail.com>, 
 Oscar Salvador <osalvador@suse.de>, Ran Xiaokai <ran.xiaokai@zte.com.cn>, 
 Rodrigo Vivi <rodrigo.vivi@intel.com>, Simona Vetter <simona@ffwll.ch>, 
 Steven Rostedt <rostedt@goodmis.org>, Tvrtko Ursulin <tursulin@ursulin.net>, 
 Vlastimil Babka <vbabka@suse.cz>, Yosry Ahmed <yosryahmed@google.com>,
 Yu Zhao <yuzhao@google.com>, 
 intel-gfx@lists.freedesktop.org, dri-devel@lists.freedesktop.org, 
 linux-kernel@vger.kernel.org, linux-fsdevel@vger.kernel.org, 
 linux-mm@kvack.org, linux-trace-kernel@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
X-Mailman-Approved-At: Sun, 02 Feb 2025 22:57:10 +0000
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

On Thu, Jan 30, 2025 at 6:02=E2=80=AFPM Kirill A. Shutemov
<kirill.shutemov@linux.intel.com> wrote:
>
> The recently introduced PG_dropbehind allows for freeing folios
> immediately after writeback. Unlike PG_reclaim, it does not need vmscan
> to be involved to get the folio freed.
>
> Instead of using folio_set_reclaim(), use folio_set_dropbehind() in
> pageout().
>
> It is safe to leave PG_dropbehind on the folio if, for some reason
> (bug?), the folio is not in a writeback state after ->writepage().
> In these cases, the kernel had to clear PG_reclaim as it shared a page
> flag bit with PG_readahead.
>
> Signed-off-by: Kirill A. Shutemov <kirill.shutemov@linux.intel.com>
> Acked-by: David Hildenbrand <david@redhat.com>
> ---
>  mm/vmscan.c | 9 +++------
>  1 file changed, 3 insertions(+), 6 deletions(-)
>
> diff --git a/mm/vmscan.c b/mm/vmscan.c
> index bc1826020159..c97adb0fdaa4 100644
> --- a/mm/vmscan.c
> +++ b/mm/vmscan.c
> @@ -692,19 +692,16 @@ static pageout_t pageout(struct folio *folio, struc=
t address_space *mapping,
>                 if (shmem_mapping(mapping) && folio_test_large(folio))
>                         wbc.list =3D folio_list;
>
> -               folio_set_reclaim(folio);
> +               folio_set_dropbehind(folio);
> +
>                 res =3D mapping->a_ops->writepage(&folio->page, &wbc);
>                 if (res < 0)
>                         handle_write_error(mapping, folio, res);
>                 if (res =3D=3D AOP_WRITEPAGE_ACTIVATE) {
> -                       folio_clear_reclaim(folio);
> +                       folio_clear_dropbehind(folio);
>                         return PAGE_ACTIVATE;
>                 }
>
> -               if (!folio_test_writeback(folio)) {
> -                       /* synchronous write or broken a_ops? */
> -                       folio_clear_reclaim(folio);
> -               }
>                 trace_mm_vmscan_write_folio(folio);
>                 node_stat_add_folio(folio, NR_VMSCAN_WRITE);
>                 return PAGE_SUCCESS;
> --
> 2.47.2
>

Hi, I'm seeing following panic with SWAP after this commit:

[   29.672319] Oops: general protection fault, probably for
non-canonical address 0xffff88909a3be3: 0000 [#1] PREEMPT SMP NOPTI
[   29.675503] CPU: 82 UID: 0 PID: 5145 Comm: tar Kdump: loaded Not
tainted 6.13.0.ptch-g1fe9ea48ec98 #917
[   29.677508] Hardware name: Red Hat KVM/RHEL-AV, BIOS 0.0.0 02/06/2015
[   29.678886] RIP: 0010:__lock_acquire+0x20/0x15d0
[   29.679891] Code: 90 90 90 90 90 90 90 90 90 90 41 57 41 56 41 55
41 54 55 53 48 83 ec 30 8b 2d 10 ac f3 01 44 8b ac 24 88 00 00 00 85
ed 74 64 <48> 8b 07 49 89 ff 48 3d 20 1d bf 83 74 56 8b 1d 8c f5 b1 01
41 89
[   29.683852] RSP: 0018:ffffc9000bea3148 EFLAGS: 00010002
[   29.684980] RAX: ffff8890874b2940 RBX: 0000000000000200 RCX: 00000000000=
00000
[   29.686510] RDX: 0000000000000000 RSI: 0000000000000000 RDI: 00ffff88909=
a3be3
[   29.688031] RBP: 0000000000000001 R08: 0000000000000001 R09: 00000000000=
00000
[   29.689561] R10: 0000000000000000 R11: 0000000000000020 R12: 00ffff88909=
a3be3
[   29.691087] R13: 0000000000000000 R14: 0000000000000000 R15: 00000000000=
00000
[   29.692613] FS:  00007fa05c2824c0(0000) GS:ffff88a03fa80000(0000)
knlGS:0000000000000000
[   29.694339] CS:  0010 DS: 0000 ES: 0000 CR0: 0000000080050033
[   29.695581] CR2: 000055f9abb7fc7d CR3: 00000010932f2002 CR4: 00000000007=
70eb0
[   29.697109] DR0: 0000000000000000 DR1: 0000000000000000 DR2: 00000000000=
00000
[   29.698637] DR3: 0000000000000000 DR6: 00000000fffe0ff0 DR7: 00000000000=
00400
[   29.700161] PKRU: 55555554
[   29.700759] Call Trace:
[   29.701296]  <TASK>
[   29.701770]  ? __die_body+0x1e/0x60
[   29.702540]  ? die_addr+0x3c/0x60
[   29.703267]  ? exc_general_protection+0x18f/0x3c0
[   29.704290]  ? asm_exc_general_protection+0x26/0x30
[   29.705345]  ? __lock_acquire+0x20/0x15d0
[   29.706215]  ? lockdep_hardirqs_on_prepare+0xda/0x190
[   29.707304]  ? asm_sysvec_apic_timer_interrupt+0x1a/0x20
[   29.708452]  lock_acquire+0xbf/0x2e0
[   29.709229]  ? folio_unmap_invalidate+0x12f/0x220
[   29.710257]  ? __folio_end_writeback+0x15d/0x430
[   29.711260]  ? __folio_end_writeback+0x116/0x430
[   29.712261]  _raw_spin_lock+0x30/0x40
[   29.713064]  ? folio_unmap_invalidate+0x12f/0x220
[   29.714076]  folio_unmap_invalidate+0x12f/0x220
[   29.715058]  folio_end_writeback+0xdf/0x190
[   29.715967]  swap_writepage_bdev_sync+0x1e0/0x450
[   29.716994]  ? __pfx_submit_bio_wait_endio+0x10/0x10
[   29.718074]  swap_writepage+0x46b/0x6b0
[   29.718917]  pageout+0x14b/0x360
[   29.719628]  shrink_folio_list+0x67d/0xec0
[   29.720519]  ? mark_held_locks+0x48/0x80
[   29.721375]  evict_folios+0x2a7/0x9e0
[   29.722179]  try_to_shrink_lruvec+0x19a/0x270
[   29.723130]  lru_gen_shrink_lruvec+0x70/0xc0
[   29.724060]  ? __lock_acquire+0x558/0x15d0
[   29.724954]  shrink_lruvec+0x57/0x780
[   29.725754]  ? find_held_lock+0x2d/0xa0
[   29.726588]  ? rcu_read_unlock+0x17/0x60
[   29.727449]  shrink_node+0x2ad/0x930
[   29.728229]  do_try_to_free_pages+0xbd/0x4e0
[   29.729160]  try_to_free_mem_cgroup_pages+0x123/0x2c0
[   29.730252]  try_charge_memcg+0x222/0x660
[   29.731128]  charge_memcg+0x3c/0x80
[   29.731888]  __mem_cgroup_charge+0x30/0x70
[   29.732776]  shmem_alloc_and_add_folio+0x1a5/0x480
[   29.733818]  ? filemap_get_entry+0x155/0x390
[   29.734748]  shmem_get_folio_gfp+0x28c/0x6c0
[   29.735680]  shmem_write_begin+0x5a/0xc0
[   29.736535]  generic_perform_write+0x12a/0x2e0
[   29.737503]  shmem_file_write_iter+0x86/0x90
[   29.738428]  vfs_write+0x364/0x530
[   29.739180]  ksys_write+0x6c/0xe0
[   29.739906]  do_syscall_64+0x66/0x140
[   29.740713]  entry_SYSCALL_64_after_hwframe+0x76/0x7e
[   29.741800] RIP: 0033:0x7fa05c439984
[   29.742584] Code: c7 00 16 00 00 00 b8 ff ff ff ff c3 66 2e 0f 1f
84 00 00 00 00 00 f3 0f 1e fa 80 3d c5 06 0e 00 00 74 13 b8 01 00 00
00 0f 05 <48> 3d 00 f0 ff ff 77 54 c3 0f 1f 00 55 48 89 e5 48 83 ec 20
48 89
[   29.746542] RSP: 002b:00007ffece7720f8 EFLAGS: 00000202 ORIG_RAX:
0000000000000001
[   29.748157] RAX: ffffffffffffffda RBX: 0000000000002800 RCX: 00007fa05c4=
39984
[   29.749682] RDX: 0000000000002800 RSI: 000055f9cfa08000 RDI: 00000000000=
00004
[   29.751216] RBP: 00007ffece772140 R08: 0000000000002800 R09: 00000000000=
00007
[   29.752743] R10: 0000000000000180 R11: 0000000000000202 R12: 000055f9cfa=
08000
[   29.754262] R13: 0000000000000004 R14: 0000000000002800 R15: 00000000000=
009af
[   29.755797]  </TASK>
[   29.756285] Modules linked in: zram virtiofs

I'm testing with PROVE_LOCKING on. It seems folio_unmap_invalidate is
called for swapcache folio and it doesn't work well, following PATCH
on top of mm-unstable seems fix it well:

diff --git a/mm/filemap.c b/mm/filemap.c
index 4fe551037bf7..98493443d120 100644
--- a/mm/filemap.c
+++ b/mm/filemap.c
@@ -1605,8 +1605,9 @@ static void folio_end_reclaim_write(struct folio *fol=
io)
         * invalidation in that case.
         */
        if (in_task() && folio_trylock(folio)) {
-               if (folio->mapping)
-                       folio_unmap_invalidate(folio->mapping, folio, 0);
+               struct address_space *mapping =3D folio_mapping(folio);
+               if (mapping)
+                       folio_unmap_invalidate(mapping, folio, 0);
                folio_unlock(folio);
        }
 }
diff --git a/mm/truncate.c b/mm/truncate.c
index e922ceb66c44..4f3e34c52d8b 100644
--- a/mm/truncate.c
+++ b/mm/truncate.c
@@ -565,23 +565,29 @@ int folio_unmap_invalidate(struct address_space
*mapping, struct folio *folio,
        if (!filemap_release_folio(folio, gfp))
                return -EBUSY;

-       spin_lock(&mapping->host->i_lock);
+       if (!folio_test_swapcache(folio)) {
+               spin_lock(&mapping->host->i_lock);
+               BUG_ON(folio_has_private(folio));
+       }
+
        xa_lock_irq(&mapping->i_pages);
        if (folio_test_dirty(folio))
                goto failed;

-       BUG_ON(folio_has_private(folio));
        __filemap_remove_folio(folio, NULL);
        xa_unlock_irq(&mapping->i_pages);
        if (mapping_shrinkable(mapping))
                inode_add_lru(mapping->host);
-       spin_unlock(&mapping->host->i_lock);
+
+       if (!folio_test_swapcache(folio))
+               spin_unlock(&mapping->host->i_lock);

        filemap_free_folio(mapping, folio);
        return 1;
 failed:
        xa_unlock_irq(&mapping->i_pages);
-       spin_unlock(&mapping->host->i_lock);
+       if (!folio_test_swapcache(folio))
+               spin_unlock(&mapping->host->i_lock);
        return -EBUSY;
 }
